# Define the URL for the Chrome installer
$chromeInstallerUrl = 'https://dl.google.com/chrome/install/latest/chrome_installer.exe'

# Define the path to where you want to save the installer
$installerPath = Join-Path $env:TEMP 'chrome_installer.exe'

# Download Chrome installer
Invoke-WebRequest -Uri $chromeInstallerUrl -OutFile $installerPath

# Install Chrome silently
Start-Process -FilePath $installerPath -Args "/silent /install" -Wait

# Clean up the installer
Remove-Item $installerPath -Force
