#!/bin/bash
#tjt (Wegare)
route2="$(route | grep -i 10.0.0.2 | head -n1 | awk '{print $2}')" 
route3="$(lsof -i | grep -i v2ray | grep -i 1080 | grep -i listen)" 
echo $route
	if [[ -z $route2 ]]; then
		   (printf '3\n'; sleep 15; printf '\n') | tjt	
           exit
    elif [[ -z $route3 ]]; then
           (printf '3\n'; sleep 15; printf '\n') | tjt	
           exit
	fi
