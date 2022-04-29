#!/bin/sh

# Option page 

if [ -z $1 ];then
       echo "No argument, use -h for help." 
       exit 0
fi
if [ $1 = "-h" ];then
        cat /man/help_page
        exit 0 
elif [ $1 = "-l" ];then
        ls /headers
        exit 0
fi



if [ -z $1 ];then 
        echo "header_maker: missing operand" 
        exit 0 
fi
if [ $1 = "sh" ];then 
        echo "done"
else 
        echo "header_maker: language not supported"
        exit 0
fi
if [ -z $2 ];then
        cp /headers/$1 test.$1
else 
        cp /headers/$1 $2.$1
fi
