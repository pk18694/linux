#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "error: : please the script with root access"
esle
    echo "you are a rot user"
fi



