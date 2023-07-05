#!/bin/bash

# CREATING USERS WITH THE HELP OF A TXT FILE
# THE USERNAMES ARE GIVEN IN THE FILE WE TAKE IT AS INTPUT AND CREATE THE USER

MYLIST=$1

if [ ! $MYLIST ]; then
        echo "Enter the file name"
        exit
fi

RUNUSER=`/usr/bin/whoami`
if [ "$RUNUSER" != 'root' ]; then
        echo "Permission denied, contact the admin"
        exit
fi

if [ ! -f $MYLIST ]; then
        echo "File not found"
        exit
fi

for MYUSER in `cat $MYLIST`
do
        # HERE WE ARE USING THE 'Linux1.txt' file and iterate each user throw this file
        ./createuser.sh $MYUSER
done
