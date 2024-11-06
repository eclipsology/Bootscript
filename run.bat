@echo off
setlocal

:: Create a Downloads folder for organization
set DOWNLOAD_DIR=%USERPROFILE%\Downloads\Installers
mkdir "%DOWNLOAD_DIR%"
cd "%DOWNLOAD_DIR%"

:: Function to download a file
set WGET_CMD="powershell -command (New-Object System.Net.WebClient).DownloadFile"

:: 1Password
echo Downloading 1Password...
%WGET_CMD% "https://downloads.1password.com/win/1PasswordSetup-latest.exe" "%DOWNLOAD_DIR%\1PasswordSetup-latest.exe"
start /wait "" "%DOWNLOAD_DIR%\1PasswordSetup-latest.exe" /S

:: Firefox
echo Downloading Firefox...
%WGET_CMD% "https://download.mozilla.org/?product=firefox-latest&os=win64&lang=en-US" "%DOWNLOAD_DIR%\FirefoxInstaller.exe"
start /wait "" "%DOWNLOAD_DIR%\FirefoxInstaller.exe" /S

:: Discord
echo Downloading Discord...
%WGET_CMD% "https://discord.com/api/download?platform=win" "%DOWNLOAD_DIR%\DiscordSetup.exe"
start /wait "" "%DOWNLOAD_DIR%\DiscordSetup.exe" /S

:: Spotify
echo Downloading Spotify...
%WGET_CMD% "https://download.scdn.co/SpotifySetup.exe" "%DOWNLOAD_DIR%\SpotifySetup.exe"
start /wait "" "%DOWNLOAD_DIR%\SpotifySetup.exe" /silent

:: Epic Games Launcher
echo Downloading Epic Games Launcher...
%WGET_CMD% "https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi" "%DOWNLOAD_DIR%\EpicGamesLauncherInstaller.msi"
msiexec /i "%DOWNLOAD_DIR%\EpicGamesLauncherInstaller.msi" /quiet

:: Steam
echo Downloading Steam...
%WGET_CMD% "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe" "%DOWNLOAD_DIR%\SteamSetup.exe"
start /wait "" "%DOWNLOAD_DIR%\SteamSetup.exe" /S

:: WinRAR
echo Downloading WinRAR...
%WGET_CMD% "https://www.rarlab.com/rar/winrar-x64-621.exe" "%DOWNLOAD_DIR%\winrar-x64.exe"
start /wait "" "%DOWNLOAD_DIR%\winrar-x64.exe" /S

:: Microsoft Windows Essentials (no Bing Bar)
echo Downloading Microsoft Windows Essentials...
%WGET_CMD% "https://download.microsoft.com/download/6/E/2/6E290BFE-8E6B-4EC6-A11C-DA2E63D6DC15/Essentials2012-WLSetup.exe" "%DOWNLOAD_DIR%\WLSetup.exe"
start /wait "" "%DOWNLOAD_DIR%\WLSetup.exe" /quiet

echo Installation complete!

echo Please manually download the MEGA files from the following links:
echo https://mega.nz/file/hRphQIKB#DjBslKxZPtrqp0FTCNjmQuddKqgt9cCXAsJLae5s0hQ
echo https://mega.nz/file/N4ZwnTzI#UBIbpnRRDSp9mrEKA5RC1v2eyV410Dwj2dGr9Usb1rA
echo https://mega.nz/file/Jg4mGDDD#-JymeS_LxNbBl6frJdcGaQvaXteL8aUuJ6U3RW2jeLU

endlocal
exit /b
