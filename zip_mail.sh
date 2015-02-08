#!/usr/bin/env bash

# directory containing files to zip
cd /path_to_directory_containing_files_to_zip/

# the current date
now=$(date +%m_%d_%Y)

# finds the files modified in the last 24 hours (-mtime -1) 
# for modification time in minutes use -mmin -120 for 120 minutes etc. 
# creates a .zip of the files in /tmp folder 
# appends the current time ($now) to the file name
find . -mtime -1 | xargs zip /tmp/filename_$now

# using mutt to send tgz attachment
# fields: subject line, attachment file, recipient email, email text body
# *********************************
# -s "subject line"
# -a /tmp/your_attachment_$now.zip
# recipient@example.com 
# < /tmp/body_of_your_email.txt
# *********************************
mutt -s 'subject line' -a /tmp/filename_$now.zip -- recipient@email.com < body_of_your_email.txt