#!/bin/bash

ID=$(id -u)

VALIDATE(){ 
    if [ $1 ne 0 ]
    then
        echo "ERROR:: $2 ..failed"
        exit 1 # you can give otherthan 0
    else
        echo "$2 ..sucess"
    fi # fi mean reverse of if,indicating condition end
}

if [ $ID -ne 0 ]
then
    echo "error: : please run the script with root access"
    exit 1 # you can give otherthan 0
else
    echo "you are root user"
fi # fi mean reverse of if,indicating condition end

 yum install nginx -y

 VALIDATE $? "Nginx installation"

 yum install tomcat -y

 VALIDATE $? "tomcat installation"
