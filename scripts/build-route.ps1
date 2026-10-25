#Requires -Version 5.1
param([string]$AndroidSdk = "")
$ErrorActionPreference = 'Stop'
$routeRoot = [IO.Path]::GetFullPath((Split-Path -Parent $PSScriptRoot))
$cache = Join-Path $routeRoot '.tools'
$build = Join-Path $routeRoot '.build\route'
New-Item -ItemType Directory -Force -Path $cache,$build | Out-Null

if (-not $AndroidSdk) {
    $candidates = @($env:ANDROID_HOME, $env:ANDROID_SDK_ROOT,
        'D:\Tools\codex-mobile-preview\android-sdk', "$env:LOCALAPPDATA\Android\Sdk")
    $AndroidSdk = $candidates | Where-Object { $_ -and (Test-Path -LiteralPath $_) } | Select-Object -First 1
}
if (-not $AndroidSdk) { throw 'Android SDK not found. Set ANDROID_HOME or use -AndroidSdk.' }
$platform = Get-ChildItem (Join-Path $AndroidSdk 'platforms') -Directory | Sort-Object { [int]($_.Name -replace '\D','') } -Descending | Select-Object -First 1
if (-not $platform) { throw 'Install an Android SDK platform (API 27 or later).' }
$androidJar = Join-Path $platform.FullName 'android.jar'
$r8 = Join-Path $AndroidSdk 'cmdline-tools\latest\lib\r8.jar'
if (-not (Test-Path -LiteralPath $r8)) {
    $r8 = Get-ChildItem (Join-Path $AndroidSdk 'build-tools') -Recurse -Filter d8.jar | Sort-Object FullName -Descending | Select-Object -First 1 -ExpandProperty FullName
}
if (-not $r8) { throw 'D8 not found. Install Android cmdline-tools or build-tools.' }

function Get-RouteArtifact([string]$Relative, [string]$Name) {
    $destination = Join-Path $cache $Name
    if (-not (Test-Path -LiteralPath $destination) -or (Get-Item -LiteralPath $destination).Length -eq 0) {
        $curl = Get-Command curl.exe -ErrorAction SilentlyContinue
        if (-not $curl) { $curl = Get-Command curl -CommandType Application -ErrorAction Stop }
        & $curl.Source --fail --silent --show-error --location --retry 2 --max-time 120 ('https://repo.maven.apache.org/maven2/' + $Relative) --output $destination
        if ($LASTEXITCODE -ne 0) { throw "Download failed: $Name" }
    }
    return $destination
}

Add-Type -AssemblyName System.IO.Compression.FileSystem
$baiduJars = @()
foreach ($artifact in @('BaiduMapSDK_Map','BaiduMapSDK_Search','base')) {
    $aar = Get-RouteArtifact "com/baidu/lbsyun/$artifact/7.5.4/$artifact-7.5.4.aar" "$artifact.aar"
    $jar = Join-Path $cache "$artifact.jar"
    $archive = [IO.Compression.ZipFile]::OpenRead($aar)
    try { [IO.Compression.ZipFileExtensions]::ExtractToFile($archive.GetEntry('classes.jar'), $jar, $true) }
    finally { $archive.Dispose() }
    $baiduJars += $jar
}
$disassembler = @(
    (Get-RouteArtifact 'org/smali/baksmali/2.5.2/baksmali-2.5.2.jar' 'baksmali-2.5.2.jar'),
    (Get-RouteArtifact 'org/smali/dexlib2/2.5.2/dexlib2-2.5.2.jar' 'dexlib2-2.5.2.jar'),
    (Get-RouteArtifact 'org/smali/util/2.5.2/util-2.5.2.jar' 'smali-util-2.5.2.jar'),
    (Get-RouteArtifact 'com/google/guava/guava/27.1-android/guava-27.1-android.jar' 'guava-27.1-android.jar'),
    (Get-RouteArtifact 'com/beust/jcommander/1.64/jcommander-1.64.jar' 'jcommander-1.64.jar')
)

function Reset-RouteOutput([string]$Path) {
    $absolute = [IO.Path]::GetFullPath($Path)
    if (-not $absolute.StartsWith($routeRoot + [IO.Path]::DirectorySeparatorChar)) { throw 'Output is outside the project.' }
    if (Test-Path -LiteralPath $absolute) { Remove-Item -LiteralPath $absolute -Recurse -Force }
    New-Item -ItemType Directory -Path $absolute -Force | Out-Null
}
$classes = Join-Path $build 'classes'
$stubs = Join-Path $build 'stubs'
$dex = Join-Path $build 'dex'
$smali = Join-Path $build 'smali'
foreach ($directory in @($classes,$stubs,$dex,$smali)) { Reset-RouteOutput $directory }
$separator = [IO.Path]::PathSeparator
$stubSources = @(Get-ChildItem (Join-Path $routeRoot 'route-src\stubs') -Recurse -Filter *.java | Select-Object -ExpandProperty FullName)
& javac -encoding UTF-8 -source 8 -target 8 -Xlint:-options -classpath $androidJar -d $stubs @stubSources
if ($LASTEXITCODE -ne 0) { throw 'Compile-only API header compilation failed.' }
$classpath = (@($androidJar,$stubs) + $baiduJars) -join $separator
$sources = @(Get-ChildItem (Join-Path $routeRoot 'route-src\java') -Recurse -Filter *.java | Select-Object -ExpandProperty FullName)
& javac -encoding UTF-8 -source 8 -target 8 -Xlint:-options -classpath $classpath -d $classes @sources
if ($LASTEXITCODE -ne 0) { throw 'Route source compilation failed.' }
$bytecode = @(Get-ChildItem $classes -Recurse -Filter *.class | Select-Object -ExpandProperty FullName)
$d8args = @('-cp', $r8, 'com.android.tools.r8.D8', '--min-api', '27', '--lib', $androidJar, '--output', $dex, '--classpath', $stubs)
foreach ($jar in $baiduJars) { $d8args += @('--classpath',$jar) }
& java @d8args @bytecode
if ($LASTEXITCODE -ne 0) { throw 'Route dex compilation failed.' }
& java -cp ($disassembler -join $separator) org.jf.baksmali.Main disassemble (Join-Path $dex 'classes.dex') -o $smali
if ($LASTEXITCODE -ne 0) { throw 'Route disassembly failed.' }
$generatedPackage = Join-Path $routeRoot 'apktool\smali_classes4\com\mm\app\loaction\route'
Reset-RouteOutput $generatedPackage
Get-ChildItem (Join-Path $smali 'com\mm\app\loaction\route') -File | Copy-Item -Destination $generatedPackage -Force
Write-Host 'Route Java sources compiled into apktool/smali_classes4/com/mm/app/loaction/route/'
