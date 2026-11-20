#!/bin/bash

cd "$(dirname "$0")"

echo "Linux projemize hoşgeldiniz.Yapabileceğiniz işlemler;"
echo "1) Ping Testi"
echo "2) Kullanıcı Oluşturma"
echo "3) Paket Yükleme"
echo "4) Nginx Kurma,Web sayfasını aktarma ve Servis başlatma"

read -p "Seçiminiz: " secim

if [ "$secim" = "1" ];
    then
    ansible -i inventory.ini all -m ping
elif [ "$secim" = "2" ];
     then
     ansible-playbook -i inventory.ini kullanici.yml
elif [ "$secim" = "3" ];
     then
     ansible-playbook -i inventory.ini paketler.yml
elif [ "$secim" = "4" ];
     then
     ansible-playbook -i inventory.ini nginx.yml
else
     echo "Geçersiz seçim."
fi
              
