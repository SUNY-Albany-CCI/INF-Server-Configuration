#!/bin/bash
recipient=$1
subject=$2
message=$3
filenameAttachment=$4
sendEmail \
-f 'professor@albany.edu' \
-t $recipient \
-u $subject \
-m $message \
-a $filenameAttachment \
-o tls=yes \
-s pod51009.outlook.com:587 \
-xu professor@albany.edu \
-xp "PASSWORD"

