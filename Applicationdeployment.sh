#!/bin/bash
echo "Setting prerequisties for Application deployment"
sudo aws s3 cp s3://terraformmanoj/gitkeys/config /root/.ssh/config
sudo aws s3 cp s3://terraformmanoj/gitkeys/id_rsa /root/.ssh/id_rsa
sudo chmod 400 /root/.ssh/id_rsa

sudo rm -rf /var/www/html

echo "Downloading Application"
sudo git clone -b master git@github.com:Manoj240/Manoj-static.git /var/www/html/

hostname | sudo tee /var/www/html/index.html

