#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo -e " $R we written to implement $N  $G roboshop shell $N"

Log_Dir=/tmp
Date=$(date +%F:%H:%M:%S)
Script_name=$0
Log_File=$Log_Dir/$Script_name-$Date.log

# first we enter the root id is valid or not

User_id=$(id -u)
  if [ $User_id -ne 0 ];
   then
        echo -e " $R error:: we installed under in the root access $N"
        exit 1
    else
        echo -e " $Y installation sucessfully $N"
  fi

  


