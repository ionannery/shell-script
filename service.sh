#!/bin/bash

echo "Enter service: "
read serv

value=`sudo service ssh status | grep "Active" | cut -d"(" -f1 | cut -d":" -f2 | tr -d " "`

if [[ $value == "inactive" ]]; then
	echo "The service" $serv "is" $value
else
	echo "The service" $serv "is" $value 
fi
