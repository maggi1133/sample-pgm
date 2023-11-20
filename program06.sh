#!/bin/bash

# this is smple git install package

echo "we install git software package in theis session"

#we check user id and install git version

USERID=$(id -u)

echo "user id is $USERID"

# using loops 

if [ $USERID -le 0 ]
then
  echo "this git install is failure............................"
else
   echo "this git install is sucess..."
fi




yum install amazon-linux-extras install java-openjdk11

if [ $? -gt 0 ]
then
  echo "install java version sucessfully"
else
  echo "install java verion failure"
fi

