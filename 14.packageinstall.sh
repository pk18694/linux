#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script is started executing at $TIMESTAMP" &>> $LOGFILE

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 is $R failed $N"
        exit 1
    else 
        echo  -e "$2 is $G success $N"
    fi

}
if [ $ID -eq 0 ]
then 
echo -e "$G you are a root user $N"
else 
echo -e "$R you are not root user $N"
exit -1

for package in $@
do 
    yum list installed $package &>> $LOGFILE
    if [ $? -eq 0 ]
    then 
        echo "package already installed skipping"
    else 
        yum install $package -y  &>> $LOGFILE 
        VALIDATE $? "Installation of $package"
    fi
done 