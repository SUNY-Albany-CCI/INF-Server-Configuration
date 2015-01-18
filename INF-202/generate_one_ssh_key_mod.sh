#!/bin/bash
#
# This script generates a SSH Key pair suitable for connecting
# to the class server. The purpose of these keys is to avoid
# allowing SSH password logins.
#
mkdir -p keys_directory

keyfilename=$1
email=$2
commenttext=$email
passphrase=$3
emailusername=$4
emailpassword=$5

ssh-keygen \
-t rsa \
-C "$commenttext" \
-P $passphrase \
-f ./keys_directory/$keyfilename

./send_email_with_attachment.sh  \
$email \
'INF-202 Credentials' \
'AWS Server account information. Please find attached your credentials for your AWS server account. Your  password is '$passphrase \
./keys_directory/$keyfilename \
$emailusername \
$emailpassword


