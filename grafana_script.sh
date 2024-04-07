#!/bin/bash

DIR='/etc/grafana/'
DIR1='/home/otus-app1/grafana.ini'
DIR3='/home/otus-app1/provisioning'
DIR2='/etc/grafana/'

#Копируем конфиг 
cp $DIR1 $DIR2
cp -r $DIR3 $DIR2
echo "файл конфиги скопированы в $DIR"
systemctl restart grafana-server

if [ $? -eq 0 ]; then
          echo "Granana запущен, готов к работе"
else
          echo "Возникла ошибка"
fi