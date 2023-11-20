#!/bin/bash

# i want to print the date and store the log file and print the script name

Date=$(date +%F)
Time=
Script_Name=$0
Log_file=/tmp/$Script_Name-$Date.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

User_id=$(id -u)

Validate(){

if [ $1 -ne 0 ]
 then    
    echo -e "$2: $R the script is,  $G run under the root user $N"
    exit 1
 else
    echo  -e "$2: $G script is, $G executed succesfully $N .............."
fi

}


yum install git -y &>>$Log_file

Validate $? "git is sucessfully installed"

yum install postfix -y &>>$Log_file

Validate $? "postfix is successfully installed"




