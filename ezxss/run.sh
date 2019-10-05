#!/bin/bash
git clone https://github.com/ssl/ezXSS
sudo ln -s ${PWD}/ezXSS /var/www/html/
sudo cat nginx.conf >> /etc/nginx/sites-available/default
sudo docker-compose build

