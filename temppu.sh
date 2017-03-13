#!/bin/bash
sudo rm -r /home/ubuntu/public_html/sites/default/modules
sudo rm -r /home/ubuntu/public_html/sites/default/themes
cd /home/ubuntu/public_html/sites/default/IIO12110-Qvantel-Project
sudo git pull
cd ..
sudo cp -a /home/ubuntu/public_html/sites/default/IIO12110-Qvantel-Project/modules /home/ubuntu/public_html/sites/default/modules
sudo cp -a /home/ubuntu/public_html/sites/default/IIO12110-Qvantel-Project/themes /home/ubuntu/public_html/sites/default/themes

