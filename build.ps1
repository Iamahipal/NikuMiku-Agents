param(
    [switch]$Quiet
)

$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$buildDir = Join-Path $projectRoot "build"
$compiler = Join-Path $env:WINDIR "Microsoft.NET\Framework64\v4.0.30319\csc.exe"

if (-not (Test-Path $compiler)) {
    $compiler = Join-Path $env:WINDIR "Microsoft.NET\Framework\v4.0.30319\csc.exe"
}

if (-not (Test-Path $compiler)) {
    throw "Unable to find csc.exe. This prototype expects the built-in .NET Framework compiler."
}

New-Item -ItemType Directory -Force -Path $buildDir | Out-Null

$sourceFiles = Get-ChildItem -Path (Join-Path $projectRoot "src") -Filter *.cs -Recurse |
    Sort-Object FullName |
    ForEach-Object { $_.FullName }

if (-not $sourceFiles) {
    throw "No C# source files were found under src."
}

$outputFile = Join-Path $buildDir "LilAgentsWindows.exe"

$arguments = @(
    "/nologo"
    "/langversion:latest"
    "/target:winexe"
    "/platform:anycpu"
    "/out:$outputFile"
    "/reference:PresentationCore.dll"
    "/reference:PresentationFramework.dll"
    "/reference:System.Drawing.dll"
    "/reference:System.IO.Compression.dll"
    "/reference:System.IO.Compression.FileSystem.dll"
    "/reference:System.Windows.Forms.dll"
    "/reference:System.Xaml.dll"
    "/reference:WindowsBase.dll"
    "/reference:Microsoft.CSharp.dll"
) + $sourceFiles

& $compiler @arguments

if ($LASTEXITCODE -ne 0) {
    throw "Compilation failed."
}

if (-not $Quiet) {
    Write-Host "Built $outputFile"
}
