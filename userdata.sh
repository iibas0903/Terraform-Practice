#!/bin/bash
# sudo yum update -y 
# sudo yum install -y httpd 
# sudo systemctl start httpd.service
# sudo systemctl enable httpd.service 
# sudo echo " <h1> At $(hostname -f) </h1>" > /var/www/html/index.html




curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
