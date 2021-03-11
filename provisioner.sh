#!/bin/bash

apt_packages=(git net-tools speedtest-cli gcc cpp make iptables nginx certbot mutt)

apt -y update
apt -y upgrade
for p in ${apt_packages[@]}; do
  apt -y install $p
done

wget https://www.rainloop.net/repository/webmail/rainloop-community-latest.zip

git clone https://github.com/wutangfinancial/webmail-provisioner.git
cd webmail-provisioner
iptables-restore ./iptables.conf
cp etc_hostname /etc/hostname
#cp etc_hosts /etc/hosts

exit 0
