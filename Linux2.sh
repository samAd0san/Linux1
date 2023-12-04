#!/bin/bash

# # The File pwd -> /home/ec2-user/scripts/userdel.sh (File name: userdel.sh)
# SCRIPT TO DELETE A USER
# 1. USERINPUT

MYUSER=$1
if [ ! $MYUSER ]; then
        echo "Enter the username"
        exit
fi

# 2. ROOT OR NOT?
RUNUSER=`/usr/bin/whoami`
if [ "$RUNUSER" != 'root' ]; then
        echo "Permission denied ,Contact the admin"
        exit
fi

# 3. CHECK IF USER EXISTS OR NOT
eval "/usr/bin/id '$MYUSER'" >/dev/null 2>&1

if [ $? -ne 0 ]; then
        echo "User does not exists"
        exit
else
        echo "Username: $MYUSER"
        # LOCKING THE USER
        /usr/sbin/usermod -L $MYUSER
        # DELTEING THE USER ENTIRELY
        /usr/sbin/userdel -r $MYUSER
        echo "User deleted successfully"

        exit
fi
