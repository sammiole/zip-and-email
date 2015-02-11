# zip-and-email

## what it does:

* zips files that have been modified in the last 24 hours 
* renames the zip file with the current date appended
* uses mutt to email the zip file out to a recipient 

* excludes thumb.db and .ds_store files
* does not send an email if the directory is empty 
* option of sending an email with an empty body (/dev/null)

## required:

* mutt to be installed before running the script

## running the script via command line with parameters:

* you can then run the script via the terminal using the parameters in the order you specified 
* e.g. zip_mail.sh  /path_to_directory_containing_files_to_zip/ recipient@email.com

* note that you need to have spaces separating the parameters. 

## running the script without parameters:

* if you would like to do this, you'll need to replace parameter fields (e.g. $1, $2) with /path_to_directory_containing_files_to_zip/ and recipient@email.com respectively. 
