#!/bin/sh 
              
# Check if empty  
if [ -z $1 ];then
       echo "No argument, use -h for help." 
       exit 0
fi
# Options   
if [ $1 = "-h" ];then
        cat man/help_page
        exit 0 
elif [ $1 = "-l" ];then
        cat man/user_listing
        exit 0
fi
# Code  
if [ $1 = "-c" ];then
        if [ -z $2 ];then
                echo "server: user not specified" 
        else 
                echo "Tying to connect to $2..."                         
                ssh $2@[server-ip] -p 4044   
        fi
else 
        echo 'server: Unknown option argument'
        echo 'More info on "server -h"'   
fi
