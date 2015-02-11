#!/bin/bash
 
dir=$1
email=$2
 
# directory containing files to zip
cd $dir
 
# the current date
now=$(date +%m_%d_%Y)

# check if the directory is not empty
if test "$(ls $dir)"; then 
	
	# for non-empty files: 
	# finds the files modified in the last 24 hours (-mtime -1)
	# for modification time in minutes use -mmin -120 for 120 minutes etc.
	# creates a .zip of the files in /tmp folder
	# appends the current time ($now) to the file name
	find . -mtime -1 -a ! -name 'Thumbs.db' -a ! -name '.DS_Store' | xargs zip /tmp/filename_$now
	
	# using mutt to send tgz attachment
	# fields: subject line, attachment file, recipient email, email text body
	# *********************************
	# -s "subject line"
	# -a /tmp/your_attachment_$now.zip
	# recipient@example.com
	# < /tmp/body_of_your_email.txt 
	# *********************************
	mutt -s 'subject line' -a /tmp/filename_$now.zip -- $email < /dev/null
	
else
	# if directory is empty, return "[directory] is empty"
	echo "$dir is empty"

fi
