#!/bin/bash

# this is smple git install package

echo "we install git software package in theis session"

#we check user id and install git version

USERID=$(id -u)

validate(){

    if [ $1 -gt 0 ]
then
  echo "install jnginx "
else
  echo "install failure"
fi
}

echo "user id is $USERID"

# using loops 

if [ $USERID -le 0 ]
then
  echo "this git install is failure............................"
else
   echo "this git install is sucess..."
fi


yum installttttt jenkins -y

yum install jenkins -y



