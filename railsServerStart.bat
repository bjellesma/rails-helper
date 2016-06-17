set /p rubyProject="Enter the full path name of the project server you would like to run:"
cd "%rubyProject%"
ruby bin/rails server
