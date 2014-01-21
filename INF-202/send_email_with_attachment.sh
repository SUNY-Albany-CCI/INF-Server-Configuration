#!/bin/bash
recipient=$1
subject=$2
message=$3
filenameAttachment=$4
emailusername=$5
emailpassword=$6
sendEmail \
-f "$emailusername@albany.edu" \
-t $recipient \
-u $subject \
-m $message \
-a $filenameAttachment \
-o tls=yes \
-s pod51009.outlook.com:587 \
-xu "$emailusername@albany.edu" \
-xp $emailpassword

