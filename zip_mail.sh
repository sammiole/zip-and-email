#!/usr/bin/env bash

# assigning variables, replace with your own
now=$(date+%m_%d_%Y)
directory=/path_to_directory_containing_files_to_zip/
zip_file_name=filename_$now
recipient=recipient@example.com
email_body=body_of_your_email.txt
email_subject='subject line'

# navigate to directory containing files to zip
cd $directory

# finds the files modified in the last 24 hours (-mtime -1) 
# for modification time in minutes use -mmin -120 for 120 minutes etc. 
# creates a .zip of the files in /tmp folder 
# appends the current time ($now) to the file name
find . -mtime -1 | xargs zip /tmp/$zip_file_name

# using mutt to send zip attachment
# fields: subject line, attachment file, recipient email, email text body
mutt -s $email_subject -a /tmp/$zip_file_name.zip -- $recipient < $email_body