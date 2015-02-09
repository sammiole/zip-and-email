# zip-and-email

## what it does:

* zips files that have been modified in the last 24 hours 
* renames the zip file with the current date appended
* uses mutt to email the zip file out to a recipient 

## required:

* mutt to be installed before running the script

## running script with parameters:

* if you would like to do this, just replace script fields (e.g. /path_to_directory_containing_files_to_zip/ and recipient@email.com) with $1, $2 etc. 
* you can then run the script via the terminal using the parameters in the order you specified (e.g. zip_mail.sh  /path_to_directory_containing_files_to_zip/ recipient@email.com). 
* note that you need to have spaces separating the parameters. 
