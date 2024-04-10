#!/bin/bash

# Установка prometheus
sudo apt update
sudo apt install prometheus -y
echo "prometheus установлен"

# Установка Grafana
dpkg -i /home/otus/grafana_10.2.2_amd64-224190-2cad86.deb
systemctl daemon-reload
systemctl restart grafana-server
if [ $? -eq 0 ]; then
          echo "Grafana запущен, готов к работе"
else
          echo "Возникла ошибка, Grafana"
fi
