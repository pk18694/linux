#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then    
    echo "error: : Please run this script with root access"
else
    echo "your are a root user"
fi
yum install mysql -y

if  [ $? -ne 0 }
then 
    echo "error: :my sql is failing"
else 
    echo "mysql successfully insrtalled"   
    