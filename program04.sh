#!/bin/bash

echo "to print the id and root user"

USERID=$(id -u)

# if id -u means it show 0 

if [ $USERID -ne 0 ]

then 

echo "this portion is failure.........."
exit 1  # here we 1 to 127 expect 0
else
 
 echo "shell script is executed..............................."

fi
