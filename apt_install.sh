#!/bin/bash

# Установка prometheus
sudo apt update
sudo apt install prometheus -y
echo "prometheus установлен"

# Установка Grafana
#sudo apt install adduser libfontconfigi musl -y
systemctl daemon-reload
systemctl restart grafana-server
#echo "Grafana установлен"
