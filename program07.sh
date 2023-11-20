#!/bin/bash

Userid=$(id -u)

# validate function

VALIDATE(){
   if [ $? -ne 0 ]
   then 
     echo "$1 installation is failure...."
     exit 1
   else
    echo "$1  is sucess"
   fi
}

yum install git -y

VALIDATE $? "install git is sucess"

yum install postfix -y

VALIDATE $? "install postfix is sucess"