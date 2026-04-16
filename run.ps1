param(
    [switch]$NoBuild,
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$Args
)

$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$buildScript = Join-Path $projectRoot "build.ps1"
$exePath = Join-Path $projectRoot "build\LilAgentsWindows.exe"

if (-not $NoBuild) {
    & $buildScript
}

if (-not (Test-Path $exePath)) {
    throw "The compiled executable was not found at $exePath"
}

& $exePath @Args
