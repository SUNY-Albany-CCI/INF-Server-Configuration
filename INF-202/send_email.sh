#!/bin/bash
recipient=$1
subject=$2
message=$3
sendEmail \
-f 'professor@albany.edu' \
-t $recipient \
-u $subject \
-m $message \
-o tls=yes \
-s pod51009.outlook.com:587 \
-xu professor@albany.edu \
-xp "PASSWORD"

