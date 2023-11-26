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


Validate(){

     if [ $1 -ne 0 ]
     then
          echo -e "$2 is  $R failure $N"
          exit 1
     else
          echo -e "$2  $Y is sucess $N"
     fi

}

# first we enter the root id is valid or not

User_id=$(id -u)
  if [ $User_id -ne 0 ];
   then
        echo -e " $R error:: we installed under in the root access $N"
        exit 1
    else
        echo -e " $Y installation sucessfully $N"
  fi

 cp /home/ec2-user/mongo.repo/   /etc/yum.repos.d/mongo.repo &>> $Log_File

 Validate $? "copy the path in to that repo"

yum install mongodb-org -y &>> $Log_File

Validate $? "installing mongodb"

systemctl enable mongod &>> $Log_File

Validate $? "enable the service"

systemctl start mongod &>> $Log_File

Validate $? "restarting the service"

sed -i 's/127.0.0.1/0.0.0.0/'  /etc/mongod.conf &>> $Log_File

Validate $? "allow all the ports"


systemctl restart mongod &>> $Log_File

Validate $? "restart the mongod service"
