::variables
set rubyInstallerVersion=3.1.0
::navigate to rubyinstaller for windows
START https://s3.amazonaws.com/railsinstaller/Windows/railsinstaller-%rubyInstallerVersion%.exe
::TODO get curl and 7z
::TODO download command line version of 7zip
::TODO start http://www.7-zip.org/a/7za920.zip
::TODO curl to get pem
::navigate to downloads dir
cd %USERPROFILE%/downloads 
::wait for download
echo "press any key when download is complete"
PAUSE
::run installer for ruby
start railsinstaller-%rubyInstallerVersion%.exe
echo "press any key when install is complete. We must open a new window to refresh variables"
PAUSE
cd %USERPROFILE%/downloads/rails-helper-master
start rubyinstall2.bat
