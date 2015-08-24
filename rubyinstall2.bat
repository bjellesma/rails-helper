::set rubyInstalledVersion to command ruby -v
::must use for if setting variable to command
FOR /F "delims=" %%i IN ('ruby -v') DO set rubyInstalledVersion=%%i
if defined rubyInstalledVersion echo ruby is installed
if not defined rubyInstalledVersion echo ERROR: ruby is not installed. Go back and make sure it is installed
PAUSE
::now checking sqlite3
FOR /F "delims=" %%i IN ('sqlite3 --version') DO set sqlLiteInstalledVersion=%%i
if defined sqlLiteInstalledVersion echo sqlite is installed
if not defined sqlLiteInstalledVersion echo ERROR: sqlite is not installed. Go back and make sure it is installed
PAUSE
::SSL error
ruby "%USERPROFILE%/desktop/win_fetch_cacerts.rb"
set SSL_CERT_FILE=C:/RailsInstaller/cacert.pem
::now installing gems
gem install rails
::now checking rails
FOR /F "delims=" %%i IN ('rails --version') DO set railsInstalledVersion=%%i
if defined railsInstalledVersion echo rails is installed
if not defined railsInstalledVersion echo ERROR: rails is not installed. Go back and make sure it is installed
PAUSE
set /p rubyPath="Enter the path where you would like to create a new rails application (Enter the full path): "
::create test rails application
cd "%rubyPath%"
set /p rubyProject="Enter the name of your new application: "
rails new "%rubyProject%"
PAUSE
cd "%rubyProject%"

