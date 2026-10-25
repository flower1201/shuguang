#Requires -Version 5.1
param(
    [string]$ApktoolBat = $env:APKTOOL_BAT,
    [string]$UberJar = $env:UBER_APK_SIGNER_JAR,
    [string]$OutDir = "",
    [string]$MapConfig = "",
    [switch]$SkipRouteCompile
)

$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $PSScriptRoot
$ApktoolDir = Join-Path $Root "apktool"

if (-not $SkipRouteCompile) {
    & (Join-Path $PSScriptRoot 'build-route.ps1')
}

if (-not $OutDir) { $OutDir = Join-Path $Root "dist" }
New-Item -ItemType Directory -Force -Path $OutDir | Out-Null

if (-not $ApktoolBat) {
    $candidates = @(
        "$env:USERPROFILE\Tools\apktool\apktool.bat",
        "C:\Users\Administrator\Tools\apktool\apktool.bat"
    )
    $ApktoolBat = $candidates | Where-Object { Test-Path $_ } | Select-Object -First 1
}
if (-not $ApktoolBat -or -not (Test-Path $ApktoolBat)) {
    throw "apktool.bat not found. Set APKTOOL_BAT or install apktool."
}

if (-not $UberJar) {
    $candidates = @(
        "C:\work\android-tools\uber-apk-signer.jar",
        "$env:USERPROFILE\Tools\uber-apk-signer.jar"
    )
    $UberJar = $candidates | Where-Object { Test-Path $_ } | Select-Object -First 1
}
if (-not $UberJar -or -not (Test-Path $UberJar)) {
    throw "uber-apk-signer.jar not found. Set UBER_APK_SIGNER_JAR."
}

$manifest = Join-Path $ApktoolDir "AndroidManifest.xml"
$raw = Get-Content $manifest -Raw -Encoding UTF8
$mapOverrides = @{}
if (-not $MapConfig) {
    $localConfig = Join-Path $Root '.tools\local-map-keys.json'
    if (Test-Path -LiteralPath $localConfig) { $MapConfig = $localConfig }
}
if ($MapConfig) {
    $configuration = Get-Content -LiteralPath $MapConfig -Raw -Encoding UTF8 | ConvertFrom-Json
    foreach ($name in @('com.baidu.lbsapi.API_KEY','com.google.android.geo.API_KEY')) {
        $value = $configuration.$name
        if ($value -and $value -notlike 'YOUR_*') { $mapOverrides[$name] = [string]$value }
    }
}
if ($raw -match "YOUR_GOOGLE_MAPS_API_KEY|YOUR_BAIDU_LBS_API_KEY|ca-app-pub-XXXXXXXXXXXXXXXX" -and $mapOverrides.Count -eq 0) {
    Write-Warning "AndroidManifest.xml still contains API key placeholders. Replace them before production use."
}

$unsigned = Join-Path $OutDir "shuguang-unsigned.apk"
$buildInput = $ApktoolDir
$buildOutput = $OutDir
$buildUnsigned = $unsigned
$aliasRoot = $null
$aliasLinks = @()
$copiedInput = $null
try {
    # Windows aapt2 cannot open this project's Chinese path. Junction aliases
    # expose the same files under ASCII names without copying or moving sources.
    if ($mapOverrides.Count -gt 0 -or ($env:OS -eq 'Windows_NT' -and ($ApktoolDir + $OutDir) -match '[^\x00-\x7F]')) {
        $aliasRoot = Join-Path ([IO.Path]::GetTempPath()) ('shuguang-build-' + [Guid]::NewGuid().ToString('N'))
        New-Item -ItemType Directory -Path $aliasRoot | Out-Null
        $buildInput = Join-Path $aliasRoot 'input'
        $buildOutput = Join-Path $aliasRoot 'output'
        $linkType = if ($env:OS -eq 'Windows_NT') { 'Junction' } else { 'SymbolicLink' }
        if ($mapOverrides.Count -gt 0) {
            # Only the build copy receives local keys. Source control retains
            # the placeholders even after a failed build or signing command.
            New-Item -ItemType Directory -Path $buildInput | Out-Null
            $copiedInput = $buildInput
            New-Item -ItemType Directory -Path (Join-Path $ApktoolDir 'build') -Force | Out-Null
            foreach ($directory in Get-ChildItem -LiteralPath $ApktoolDir -Directory -Force) {
                $link = Join-Path $buildInput $directory.Name
                New-Item -ItemType $linkType -Path $link -Target $directory.FullName | Out-Null
                $aliasLinks += $link
            }
            Get-ChildItem -LiteralPath $ApktoolDir -File -Force | Copy-Item -Destination $buildInput -Force
            [xml]$buildManifest = $raw
            foreach ($metadata in $buildManifest.manifest.application.'meta-data') {
                $name = $metadata.GetAttribute('name', 'http://schemas.android.com/apk/res/android')
                if ($mapOverrides.ContainsKey($name)) { $metadata.SetAttribute('value', 'http://schemas.android.com/apk/res/android', $mapOverrides[$name]) | Out-Null }
            }
            [IO.File]::WriteAllText((Join-Path $buildInput 'AndroidManifest.xml'), $buildManifest.OuterXml, [Text.UTF8Encoding]::new($false))
            Write-Host 'Applying local map configuration to the build copy.'
        } else {
            New-Item -ItemType $linkType -Path $buildInput -Target (Resolve-Path -LiteralPath $ApktoolDir).Path | Out-Null
            $aliasLinks += $buildInput
        }
        New-Item -ItemType $linkType -Path $buildOutput -Target (Resolve-Path -LiteralPath $OutDir).Path | Out-Null
        $aliasLinks += $buildOutput
        $buildUnsigned = Join-Path $buildOutput 'shuguang-unsigned.apk'
    }
    Write-Host "Building with apktool..."
    & $ApktoolBat b -f $buildInput -o $buildUnsigned
    if ($LASTEXITCODE -ne 0 -or -not (Test-Path -LiteralPath $unsigned)) { throw "apktool build failed" }

    Write-Host "Signing with uber-apk-signer..."
    & java -jar $UberJar --apks $buildUnsigned --out $buildOutput --allowResign
    if ($LASTEXITCODE -ne 0) { throw 'APK signing failed' }
} finally {
    if ($aliasRoot) {
        # Delete link entries without recursively traversing their targets.
        foreach ($link in $aliasLinks) { if (Test-Path -LiteralPath $link) { [IO.Directory]::Delete($link) } }
        if ($copiedInput) {
            Get-ChildItem -LiteralPath $copiedInput -File -Force | Remove-Item -Force
            [IO.Directory]::Delete($copiedInput)
        }
        [IO.Directory]::Delete($aliasRoot)
    }
}

$signed = Get-ChildItem $OutDir -Filter "*debugSigned.apk" | Sort-Object LastWriteTime -Descending | Select-Object -First 1
if (-not $signed) { throw "signed apk not found in $OutDir" }

$hash = (Get-FileHash $signed.FullName -Algorithm SHA256).Hash.ToLower()
Write-Host "OK: $($signed.FullName)"
Write-Host "SHA256: $hash"
