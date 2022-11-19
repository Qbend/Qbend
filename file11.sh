#!/bin/bash

sudo dnf -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd | grep Active
##########################
sudo dnf install firewalld
sudo systemctl start firewalld
sudo systemctl status firewalld | grep Active
#########################
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
#############################
sudo firewall-cmd --reload
##########################
touch /var/www/html/index.html
echo 'Markiyan Kovalenko' > /var/www/html/index.html
###########################
echo "Success"



