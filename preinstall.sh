#!/bin/bash
sudo apt update && apt full-upgrade -y ;
apt install docker.io docker-compose git curl bash openssl nano -y ;
sudo ufw allow 80 ;
sudo ufw allow 443 ;
sudo systemctl start docker ;
sudo systemctl enable docker ;
echo "Устанавливаем WARP? y/n " ;
read waitstring ;
if [[ waitstring = "y"]] ; then
bash <(curl -sSL https://raw.githubusercontent.com/hamid-gh98/x-ui-scripts/main/install_warp_proxy.sh) ;
fi
bash <(curl -Ls https://raw.githubusercontent.com/alireza0/x-ui/master/install.sh) ;
echo "нажмите 8 и выберите порт" ;
read waitstring
x-ui ;
x-ui-settings ;