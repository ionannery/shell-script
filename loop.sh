#!/bin/bash

echo "Digite o nome do servico: "
read service

while true; do

status=`service $service status | grep "Active" | cut -d":" -f2 | cut -d"(" -f1 | tr -d " "`

if [[ $status == "active" ]]; then
	echo "O servico" $service "esta ativo"
	sleep 2
fi
done

