#!/bin/bash
yum update -y
yum install -y httpd.service
systemctl enable httpd.service
echo "Hello world $(hostname -f)" > /var/www/html/index.html
