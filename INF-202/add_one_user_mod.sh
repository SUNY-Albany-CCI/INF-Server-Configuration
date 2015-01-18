#!/bin/bash
#
# This script adds one user to the system.
# It must be run with sudo.
#
# It expects as arguments
#
# username firstname lastname email
#

username=$1
firstname=$2
lastname=$3
email=$4
professoremailusername=$5
professoremailpassword=$6
passphrase=$7
fullname="$firstname $lastname"
keyname="$firstname"_"$lastname"_INF_202
privatekey="$keyname"
publickey="$keyname.pub"

adduser -gecos "$fullname,,," $username --disabled-password

# Create SSH keys
./generate_one_ssh_key_mod.sh $keyname $email $passphrase $professoremailusername $professoremailpassword

# Install SSH key
sshdir="/home/$username/.ssh"
mkdir $sshdir
chmod 700 $sshdir
cp  ./keys_directory/$privatekey   $sshdir
cp  ./keys_directory/$publickey    $sshdir
cat ./keys_directory/$publickey >> $sshdir/authorized_keys
chown $username:$username -R $sshdir

