#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then    
    echo "error: : Please run this script with root access"
else
    echo "your are a root user"
fi
