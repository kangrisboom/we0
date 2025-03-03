# Uninstall existing pnpm
Write-Host "Removing existing pnpm..."
npm uninstall -g pnpm

# Clear npm cache
Write-Host "Clearing npm cache..."
npm cache clean --force

# Install latest pnpm
Write-Host "Installing latest pnpm..."
npm install -g pnpm@latest

# Configure Python
Write-Host "Configuring Python..."
$pythonPath = (Get-Command python -ErrorAction SilentlyContinue).Path
if (-not $pythonPath) {
    $pythonPath = (Get-Command python3 -ErrorAction SilentlyContinue).Path
}

if ($pythonPath) {
    Write-Host "Found Python at: $pythonPath"
    $escapedPath = $pythonPath.Replace('\', '\\')
    [Environment]::SetEnvironmentVariable("npm_config_python", $escapedPath, "User")
    Write-Host "Set Python path in environment variables"
} else {
    Write-Host "Python not found. Please install Python 3.x and ensure it's in your PATH"
    Start-Process "https://www.python.org/downloads/"
    exit 1
}

# Check for Visual Studio Build Tools
$vsPath = "${env:ProgramFiles(x86)}\Microsoft Visual Studio\Installer\vswhere.exe"
if (-not (Test-Path $vsPath)) {
    Write-Host "Visual Studio Build Tools not found. Please install Visual Studio Build Tools with 'Desktop development with C++' workload"
    Start-Process "https://visualstudio.microsoft.com/visual-cpp-build-tools/"
}

Write-Host "Now you can run 'pnpm install --force' in your project directory"
