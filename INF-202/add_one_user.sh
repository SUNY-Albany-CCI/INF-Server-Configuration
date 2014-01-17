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
fullname="$firstname $lastname"
keyname="$firstname"_"$lastname"
privatekey="$keyname"
publickey="$keyname.pub"
email=$4

adduser \
--gecos "$fullname,,," \
 $username

# Create SSH keys
./generate_one_key.sh $keyname $email

# Install SSH key
sshdir="/home/$username/.ssh"
mkdir $sshdir
chmod 700 $sshdir
cp  $privatekey   $sshdir
cp  $publickey    $sshdir
cat $publickey >> $sshdir/authorized_keys
chown $username:$username -R $sshdir
