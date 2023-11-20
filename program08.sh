#!/bin/bash

# i want to print the date and store the log file and print the script name

Date=$(date)
Script_Name=$0
Log_file=/tmp/$Script_Name-$Date.log

User_id=$(id -u)
Validate(){

if [ $1 -ne 0 ]
 then    
    echo "$2: the script is run under the root user"
    exit 1
 else
    echo "$2 script is executed succesfully.............."
fi

}


yum install git -y &>>$Log_file

Validate $? "git is sucessfully installed"

yum install postfix -y &>>$Log_file

Validate $? "postfix is successfully installed"




