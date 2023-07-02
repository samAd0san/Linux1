#!/bin/bash 
# shabang line
#CREATING A USER

# GIVING USER INPUT
MYUSER=$1

if [ ! $MYUSER ]; then
        echo "Enter the Username"
        exit
fi

# CHEKING IF THE USER HAS ROOT PREVELEGES

RUNUSER=`/usr/bin/whoami`
if [ "$RUNUSER" != 'root' ]; then
        echo "access denied , contact the admin"
        exit
fi

# CHECKING IF THE USER ALREADY EXISTS OR NOT

eval "/usr/bin/id '$MYUSER'" >/dev/null 2>&1
#/usr/bin/id $MYUSER

if [ $? -eq 0 ]; then # WHEN THIS STATEMENT GETS EXECUTED SUCCESSFULLT '$?' WILL GIVE 0 THAT MEANS THE USER ALREADY EXTISTS
        echo "User already exists"
        exit
else
        /sbin/useradd $MYUSER # IF THE USER DOESNOT EXITST IT MEANS WE CAN ADD IT TO THE OS
        echo "Username : $MYUSER"
        id $MYUSER
fi

# SETTING THE DEFAULT PASSWORD
MYPASS='defualt123'
echo "default password: $MYPASS"
eval echo" '$MYPASS' | /usr/bin/passwd --stdin '$MYUSER'" >/dev/null 2>&1 # THE PASSWORD I.E O/P IS AT THE LHS WILL BECOME THE I/P TO THE RIGHT HAND SIDE OF THE ' | ' 

echo "user created successfully"
