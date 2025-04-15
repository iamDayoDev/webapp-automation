#!/bin/bash

# Update package list
sudo apt update

# Install Tomcat (default version in Ubuntu repo)
sudo apt install -y tomcat9

# Install Apache HTTP Server
sudo apt install -y apache2

# Enable necessary Apache modules
sudo a2enmod proxy
sudo a2enmod proxy_http

# Create a virtual host config for Tomcat proxy
sudo tee /etc/apache2/sites-available/tomcat_manager.conf > /dev/null <<EOF
<VirtualHost *:80>
    ServerAdmin root@localhost
    ServerName app.nextwork.com
    ProxyRequests Off
    ProxyPreserveHost On
    ProxyPass / http://localhost:8080/nextwork-web-project/
    ProxyPassReverse / http://localhost:8080/nextwork-web-project/
</VirtualHost>
EOF
