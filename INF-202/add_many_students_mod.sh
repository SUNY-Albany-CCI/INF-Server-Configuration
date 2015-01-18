#!/bin/bash
#
# This script adds many users to the system.
# It must be run with sudo.
#
#Following are the parameters passed through the command line
#   <name of the file containing details of the users to be created>
#   <Professior's First Initial and last name. i.e. the literal in ualbany e-mail prior to @>
#   <prof e-mail password> 
#   <studentpf>
#
prof=$2
profpass=$3
studentpw=$4
for  i in `cat $1`
do
 echo $i > junk
 uname=`cut -d',' -f1 junk`
 fname=`cut -d',' -f2 junk`
 lname=`cut -d',' -f3 junk`
 em=`cut -d',' -f4 junk`
 #pfadd='pass'
 #pp=$uname$pfadd
 ./add_one_user_mod.sh $uname $fname $lname $em $prof $profpass $studentpw
done






#./add_one_user.sh    jdoe        John     Doe     jdoe@albany.edu       passphrase
#./add_one_user.sh    jsmith      Jane     Smith   jsmith@albany.edu       passphrase
#... add more names here..
