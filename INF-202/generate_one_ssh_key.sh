#!/bin/bash
#
# This script generates a SSH Key pair suitable for connecting
# to the class server. The purpose of these keys is to avoid
# allowing SSH password logins.
#
make -p keys_directory

keyfilename=$1
commenttext=$2
passphrase=$3

ssh-keygen \
-t rsa \
-C "$commenttext" \
-P $passphrase \
-f ./keys_directory/$keyfilename
