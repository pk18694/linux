#!/bin/bash

NUMBER=$1

if [ $NUMBER -ge 50 ]
then 
    echo "the given number $NUMBER is greater than 50"
else
    echo "the given number $NUMBER is less than or equal to 50"
fi