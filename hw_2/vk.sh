#!/bin/bash

NAME="ankuzik"  
status=0

while true 
do
    is_online=$(curl -s https://api.vk.com/method/users.get\?user_ids=$NAME\&fields=online\&v=5.62 | grep -Po "(?:\"online\":)[0-1]" | grep -Po "(\d)")
	if [[ $is_online == 1 && $status == 0 ]]
		then 
			wall "Anton is online" 
			status=1
	fi

	if [[ $is_online == 0 && $status == 1 ]]
		then
			wall "Anton gone offline"
			status=0
	fi

	sleep 5
done
