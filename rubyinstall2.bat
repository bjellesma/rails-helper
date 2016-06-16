@echo off

::
::The following code makes sure that everything is installed correctly
::

::set rubyInstalledVersion to command ruby -v
::must use for if setting variable to command
echo "Now checking for installation of ruby"
FOR /F "delims=" %%i IN ('ruby -v') DO set rubyInstalledVersion=%%i
if defined rubyInstalledVersion echo Ruby is installed
if not defined rubyInstalledVersion echo ERROR: Ruby is not installed. Go back and make sure it is installed
PAUSE
echo "Now checking for installation of sqlite3"
FOR /F "delims=" %%i IN ('sqlite3 --version') DO set sqlLiteInstalledVersion=%%i
if defined sqlLiteInstalledVersion echo sqlite3 is installed
if not defined sqlLiteInstalledVersion echo ERROR: sqlite3 is not installed. Please go back and make sure it is installed.
PAUSE

::
::The following code will install all of the necessary gems
::

ruby "%USERPROFILE%\desktop\win_fetch_cacerts.rb"
set SSL_CERT_FILE=C:/RailsInstaller/cacert.pem
echo "now installing gems"
gem install rails
echo "Now bundling gems to ready the server"
bundle install

echo "Now checking for installation of Rails"
FOR /F "delims=" %%i IN ('rails --version') DO set railsInstalledVersion=%%i
if defined railsInstalledVersion echo rails is installed
if not defined railsInstalledVersion echo ERROR: rails is not installed. Go back and make sure it is installed
PAUSE

echo "All installations are complete"
echo "Would you like to create a new rails application now? (y/n)"

::TODO check formatting of following code
::FOR /F "delims=" %%i IN ('rails --version') DO set answer=%%i
::if %answer='y' goto:testApp

:testApp
set /p rubyPath="Enter the path where and if you would like to create a new rails application (Enter the full path): "
cd "%rubyPath%"
set /p rubyProject="Enter the name of your new application: "
rails new "%rubyProject%"
PAUSE
cd "%rubyProject%"
