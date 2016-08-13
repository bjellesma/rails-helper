@echo off
::variables
set /p rubyInstallerVersion="Enter the version of rails to install (Example: 3.1.0):"
echo %rubyInstallerVersion%
::navigate to rubyinstaller for windows
START https://s3.amazonaws.com/railsinstaller/Windows/railsinstaller-%rubyInstallerVersion%.exe
::TODO get curl and 7z
::TODO download command line version of 7zip
::TODO start http://www.7-zip.org/a/7za920.zip
::TODO curl to get pem
::navigate to downloads dir
::wait for download
echo "press any key when download is complete"
PAUSE
::run installer for ruby
start %USERPROFILE%/downloads/railsinstaller-%rubyInstallerVersion%.exe
echo "press any key when install is complete. We must open a new window to refresh variables"
PAUSE
start rubyinstall2.bat
