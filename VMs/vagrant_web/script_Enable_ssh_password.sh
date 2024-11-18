#!/bin/bash

# Configuración a buscar y reemplazar
SEARCH_PATTERN="#?\s*PasswordAuthentication\s+no"
REPLACE_PATTERN="PasswordAuthentication no"

# Buscar y reemplazar en /etc/ssh/sshd_config
sudo sed -i 's/'"$SEARCH_PATTERN"'/'"$REPLACE_PATTERN"'/g' /etc/ssh/sshd_config

# Buscar y reemplazar en todos los archivos dentro de /etc/ssh/sshd_config.d/
for file in /etc/ssh/sshd_config.d/*.conf; do
    sudo sed -i 's/'"$SEARCH_PATTERN"'/'"$REPLACE_PATTERN"'/g' "$file"
done

# Reiniciar el servicio SSH para aplicar los cambios
sudo systemctl restart ssh
ssh-keyscan github.com >> ~/.ssh/known_hosts

# Clone Repos
cd /home/vagrant
git clone https://github.com/upszot/UTN-FRA_SO_Docker
git clone https://github.com/banzai-ko/UTN-FRA_SO_onBoarding
git clone https://github.com/banzai-ko/AySO-Parcial1-GenaroPennone
git clone https://github.com/banzai-ko/AySO-2doParcial-GenaroPennone.git
# Set tools
sudo apt update
sudo apt install docker.io docker-compose ansible tree -y
sudo usermod -aG docker vagrant
newgrp docker

# Git Init
git config --global user.name "banzai.ko"; git config --global user.email "boxko398@gmail.com"
cd AySO-2doParcial-GenaroPennone
git remote set-url origin git@github.com:banzai-ko/AySO-2doParcial-GenaroPennone.git


echo '>>> Web Access on Port: 80!'

