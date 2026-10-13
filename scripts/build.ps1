#Requires -Version 5.1
param(
    [string]$ApktoolBat = $env:APKTOOL_BAT,
    [string]$UberJar = $env:UBER_APK_SIGNER_JAR,
    [string]$OutDir = ""
)

$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $PSScriptRoot
$ApktoolDir = Join-Path $Root "apktool"

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
if ($raw -match "YOUR_GOOGLE_MAPS_API_KEY|YOUR_BAIDU_LBS_API_KEY|ca-app-pub-XXXXXXXXXXXXXXXX") {
    Write-Warning "AndroidManifest.xml still contains API key placeholders. Replace them before production use."
}

$unsigned = Join-Path $OutDir "shuguang-unsigned.apk"
Write-Host "Building with apktool..."
& $ApktoolBat b -f $ApktoolDir -o $unsigned
if (-not (Test-Path $unsigned)) { throw "apktool build failed" }

Write-Host "Signing with uber-apk-signer..."
& java -jar $UberJar --apks $unsigned --out $OutDir --allowResign

$signed = Get-ChildItem $OutDir -Filter "*debugSigned.apk" | Sort-Object LastWriteTime -Descending | Select-Object -First 1
if (-not $signed) { throw "signed apk not found in $OutDir" }

$hash = (Get-FileHash $signed.FullName -Algorithm SHA256).Hash.ToLower()
Write-Host "OK: $($signed.FullName)"
Write-Host "SHA256: $hash"
