#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "error: : please run the script with root access"
esle
    echo "you are root user"
fi



