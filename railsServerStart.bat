dir
set /p rubyProject="Enter the name of the project server you would like to run:"
cd "%rubyProject"
ruby bin/rails server