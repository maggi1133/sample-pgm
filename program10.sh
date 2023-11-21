#!/bin/bash

# implementing all fuctions in shell script


# to print the date and shown in correct format

Date=$(date +%F)

# to store the logs in a particular directory

LogDir=/tmp/shellscript-logs

# i want to print the script name is

Scriptname=$0

# every thin i wnat to store into a log file

Logfile=$LogDir/$Scriptname-$Date.log

# i want to execute some colour graphical exp

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

# i want to check whether the root user or not 

Userid=$(id -u)

Validate(){

    if [ $1 -ne 0 ]
    then
       echo "$2 is not installed....."
       exit 1
    else
        echo "$2 is installed"
    fi
}

# we want to check wheteher the root user or not for that we use condition

if [ $Userid -ne 0 ]
then
    echo -e "Error we are execute in a root user $R failure $N"
    exit 1
else
    echo -e "install $Y succuess $N"
fi

# suppose i want to install all packages at a time for thhat i am using for loop

#for i in $1
#do 
#  yum install $i -y
#done

# here we installed already list of packages are not for that we use for loop

for i in $@
do 
   yum list installed $i &>>$Logfile # to show how the package is already installed or not this command is hepful

   if [ $? -ne 0 ]
   then
        echo -e " $y $i is not installed, lets install it $N"
        yum install $i -y &>>$Logfile
        Validate $? "$i"
    else
       echo -e "$G $i is install already $N"
    fi
done
    