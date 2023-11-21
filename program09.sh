#!/bin/bash

# to print the special variables

Date=$(date +%F)
Script_name=$0
Logfile=/tmp/$Script_Name-$Date.log

R="\e[31m"
G="\e[32m"
N="\e[30m"

Var1=$1
Var2=$2
Var3=$3

echo   "tp print the first variable is sucess: $Var1"

echo   "tp print the first variable is sucess: $Var2"

echo  "tp print the first variable is sucess: $Var3" 

echo  "tp print the first variable is sucess: $0"

echo "to print the no of variables is sucess: $@"

echo  "to print all the varaibles is sucess: $#"

