#!/bin/bash

apt_packages=(git net-tools speedtest-cli gcc cpp make iptables nginx certbot mutt)

apt -y update
apt -y upgrade
for p in ${apt_packages[@]}; do
  apt -y install $p
done

curl https://www.rainloop.net/repository/webmail/rainloop-community-latest.zip