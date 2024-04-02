#!/bin/bash

# Установка prometheus
sudo apt update
sudo apt install prometheus -y
echo "prometheus установлен"

# Установка MySQL
sudo apt install prometheus-nginx-exporter -y
echo "prometheus-nginx-exporter установлен"
