#!/bin/bash
# TAKING USERNAME AS AN INPUT FROM THE FILE TO DELETE IT

MYLIST=$1

#if [ ! $MYLIST  ]; then
#       echo "Enter the file name"
#       exit
#fi

RUNUSER=`/usr/bin/whoami`
if [ "$RUNUSER" != 'root' ]; then
        echo "Permission denied , contact the admin"
        exit
fi


if [ ! $MYLIST  ]; then
        echo "Enter the file name"
        exit
fi

if [ ! -f $MYLIST ]; then
        echo "File not found"
        exit
fi

#USERDEL=`cat /home/ec2-user/loops/userdel.sh`

for MYUSER in `cat $MYLIST`
do
  # # HERE WE ARE USING THE 'Linux2.txt' file and iterate each user throw this file
  ./userdel.sh $MYUSER
done
