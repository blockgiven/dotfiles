#!/bin/sh
if [ -z $(locale -a | grep ja_JP.utf8) ]; then
  locale-gen ja_JP.utf8
fi

apt-get update
apt-get install -y git

# https://github.com/sstephenson/ruby-build/wiki#suggested-build-environment
apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev

if [ ! -d /home/vagrant/ruby ]; then
  sudo -u vagrant git clone https://github.com/ruby/ruby.git /home/vagrant/ruby
fi
sudo -u vagrant sh -c 'cd /home/vagrant/ruby && git fetch'
