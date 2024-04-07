#!/bin/bash

DIR='/etc/grafana/'
DIR1='/home/otus-app2/grafana.ini'
DIR3='/home/otus-app2/provisioning'
DIR5='/home/otus-app2/prometheus.yml'
DIR2='/etc/grafana/'
DIR4='/etc/prometheus/'

#Копируем конфиг 
cp $DIR1 $DIR2
cp -r $DIR3 $DIR2
cp $DIR5 $DIR4
echo "файл конфиги скопированы"
systemctl restart grafana-server

if [ $? -eq 0 ]; then
          echo "Granana запущен, готов к работе"
else
          echo "Возникла ошибка"
fi

systemctl restart prometheus
if [ $? -eq 0 ]; then
          echo "prometheus запущен, готов к работе"
else
          echo "Возникла ошибка"
fi
