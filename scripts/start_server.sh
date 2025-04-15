#!/bin/bash

# Start and enable Tomcat service
sudo systemctl start tomcat9.service
sudo systemctl enable tomcat9.service

# Start and enable Apache2 (httpd) service
sudo systemctl start apache2.service
sudo systemctl enable apache2.service

