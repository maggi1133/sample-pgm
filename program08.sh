#!/bin/bash

# i want to print the date and store the log file and print the script name

Date=$(date +%F)
Time=
Script_Name=$0
Log_file=/tmp/$Script_Name-$Date.log

Var1=@1
Var2=@2

echo "to print $Var1"
echo "to print $Var2"
echo "to print script name $0"
echo "to print no of varaibles $@"
echo "total no of var is passed $#"

R="\e[31m"
G="\e[32m"
N="\e[0m"

User_id=$(id -u)

Validate(){

if [ $1 -ne 0 ]
 then    
    echo -e "$2: the script is,  $G run under the root user $N"
    exit 1
 else
    echo  -e "$2:  script is, $R executed succesfully ..............$N"
fi

}


yum install git -y &>>$Log_file

Validate $? "git is sucessfully installed"

yum install postfix -y &>>$Log_file

Validate $? "postfix is successfully installed"




