#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/temp/$0 $TIMESTAMP.log"

VALIDATE(){ 
    if [ $1 -ne 0 ] 
    then
        echo -e "ERROR:: $R $2 ..failed $N "
        exit 1 # you can give otherthan 0
    else
        echo -e "$G  $2 ..sucess $N"
    fi # fi mean reverse of if,indicating condition end
}

if [ $ID -ne 0 ]
then
    echo -e "$R error $N: : please run the script with root access"
    exit 1 # you can give otherthan 0
else
    echo "you are root user"
fi # fi mean reverse of if,indicating condition end

 yum install nginx -y &>> $LOGFILE 

 VALIDATE $? "Nginx installation"

 yum install wget -y &>>$LOGFILE 

 VALIDATE $? "wget installation"


