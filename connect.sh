#!/bin/bash
count=0
while [ $count -lt 10 ]
do
  sleep 60 # ждать 60 секунд
  if ping -c 1 google.com &> /dev/null # проверить соединение с google
  then
    echo "Internet connection is alive"
  else
    echo "Internet connection is down. Trying to reconnect..."
    nmcli connection up id <your_wifi_connection_name> # включить соединение
  fi
  count=$((count+1))
done
