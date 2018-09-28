#!/bin/bash

touch Vagrantfile

echo "Bonjour, quelle ip voulez-vous utiliser ?"
read ip
echo "Avec quel dossier voulez-vous sychroniser la VM?"
read dir

echo "Vagrant.configure(\"2\") do |config|
    config.vm.box = \"ubuntu/xenial64\"
    config.vm.network \"private_network\", ip: \"$ip\"
    config.vm.synced_folder \"./$dir\", \"/var/www/html\"
end
" >> Vagrantfile

mkdir $dir
mv launch_vm.sh ./$dir
vagrant up
vagrant ssh
