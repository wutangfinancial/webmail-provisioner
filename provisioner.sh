#!/bin/bash

apt_packages=(git net-tools speedtest-cli gcc cpp make iptables nginx python3-pip php-fpm certbot mutt unzip)

apt -y update
apt -y upgrade
for p in ${apt_packages[@]}; do
  apt -y install $p
done


git clone https://github.com/wutangfinancial/webmail-provisioner.git
cd webmail-provisioner
iptables-restore ./iptables.conf
cp etc_hostname /etc/hostname
#cp etc_hosts /etc/hosts

pip3 install -U letsencrypt-nginx





exit 0
