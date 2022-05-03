#!/bin/bash 

# Check if empty 
if [ -z $1 ];then
       echo "No argument, use -h for help." 
       exit 0
fi
if [ -z $2 ];then
        echo "makefile: no name attribute." 
        exit 0
fi      

# Options
if [ $1 = "-h" ];then
        cat man/help_page
        exit 0 
elif [ $1 = "-l" ];then
        ls man/
        exit 0
fi

# Code           
if [ $1 = "-c" ];then ## classic file with basics 
        mkdir $2 $2/man/       
        touch $2/script                  
        cp headers/help_page $2/man/help_page
elif [ $1 = "-s" ];then ## about used language  
        mkdir $3 $3/man/           
        touch $3/script.$2                 
        cp headers/help_page $3/man/help_page                                   
        cp headers/$2 $3/script.$2
else    
        echo "makefile: wrong usage"     
        echo "Type makefile -h for more infos." 
fi
