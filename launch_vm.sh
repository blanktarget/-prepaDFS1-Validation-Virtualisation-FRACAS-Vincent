#!/bin/bash

sudo apt update
sudo apt install apache2 -y
rm index.html
touch index.html
mkdir css
touch css/style.css
mkdir js
touch js/script.js

echo "Choisissez votre nom d'utilisateur"
read log
sudo useradd -m $log 
echo "Choisissez votre mot de passe"
sudo passwd $log
