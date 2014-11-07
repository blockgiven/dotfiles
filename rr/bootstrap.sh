#!/bin/sh
if [ -z $(locale -a | grep ja_JP.utf8) ]; then
  locale-gen ja_JP.utf8
fi

apt-get update
apt-get install -y git

if [ ! -d /home/vagrant/ruby ]; then
  sudo -u vagrant git clone https://github.com/ruby/ruby.git /home/vagrant/ruby
fi
sudo -u vagrant sh -c 'cd /home/vagrant/ruby && git fetch'
