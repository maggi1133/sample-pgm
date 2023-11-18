#!/bin/bash

echo "to print the id and root user"

USERID=$(id -u)

# if id -u means it show 0 

if [ $USERID -eq 0 ]

then 

echo "this portion is failure.........."
exit 1  # here we 1 to 127 expect 0
else
 
 echo "shell script is executed..............................."

fi

apt-get installlll git -y

apt-get install git -y 

if [ $? -eq 0 ]

then 

echo "this is failure"
exit 1
else

echo "this script is executed"
fi



