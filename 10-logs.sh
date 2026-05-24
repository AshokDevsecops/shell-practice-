#!/bin/bash


USERID=$(id -u)
LOGS_DIR=/home/ec2-user/shell-logs
LOGS_FILE=$LOGS_DIR/$0.log  # home/ec2-user/shell-logs/10-logs.sh.log

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
dnf list installed mysql  &>> $LOGS_FILE

if [ $? -eq 0 ]; then
   echo " Mysql is already installed ...SKIPPING"
else
   echo " Installing Mysql "
   dnf install mysql -y  &>> $LOGS_FILE
   VALIDATE MySQL $? 
fi


#echo " I am Installing Nginx pacakages"
dnf list installed nginx  &>> $LOGS_FILE

if [ $? -eq 0 ]; then
   echo " Nginx is already installed ...SKIPPING"
else
   echo " Installing Nginx "
   dnf install nginx -y  &>> $LOGS_FILE
   VALIDATE Nginx $?
fi   