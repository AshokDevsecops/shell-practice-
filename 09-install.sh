#!/bin/bash

USERID=$(id -u)

#check the root access or not
if [ $USERID -ne 0 ]; then
    echo " Please run this script using Root privileages"
    exit 1
fi


# first arg - what are you trying to install
# second arg - exit code
VALIDTE(){
    if [$? -ne 0 ]; then
      echo " Installing mysql is ...Failed"
      exit 1
    else 
        echo "Installing mysql is Success"
    fi
}

#echo " I am Installing pacakages"
dnf list installed mysql 

if [ $? -eq 0 ]; then
   echo " Mysql is already installed ...SKIPPING"
else
   echo " Installing Mysql "
   dnf install mysql -y
   VALIDATE MySQL $? 
fi


#echo " I am Installing Nginx pacakages"
dnf list installed nginx

if [ $? -eq 0 ]; then
   echo " Nginx is already installed ...SKIPPING"
else
   echo " Installing Nginx "
   dnf install nginx -y
   VALIDATE Nginx $?
fi   