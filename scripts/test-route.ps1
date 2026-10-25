#Requires -Version 5.1
$ErrorActionPreference = 'Stop'
$routeRoot = Split-Path -Parent $PSScriptRoot
$output = Join-Path $routeRoot '.build\route-tests'
New-Item -ItemType Directory -Force -Path $output | Out-Null
$package = 'com\mm\app\loaction\route'
& javac -encoding UTF-8 -d $output (Join-Path $routeRoot "route-src\java\$package\RoutePath.java") (Join-Path $routeRoot "route-src\java\$package\RoutePlayback.java") (Join-Path $routeRoot "route-src\test\$package\RoutePlaybackTest.java")
if ($LASTEXITCODE -ne 0) { throw 'Route tests did not compile.' }
& java -cp $output com.mm.app.loaction.route.RoutePlaybackTest
if ($LASTEXITCODE -ne 0) { throw 'Route tests failed.' }
