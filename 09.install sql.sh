#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "error: : please run the script with root access"
    exit 1 # you can give otherthan 0
else
    echo "you are root user"
fi # fi mean reverse of if,indicating condition end

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "error: : Installing Mysql is failed"
    exit 1
else 
    echo "installing MySql is success"
fi