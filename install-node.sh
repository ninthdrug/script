#!/bin/bash
# install nodejs

sudo apt-get install -y curl libssl-dev apache2-utils

git clone https:github.com/joyent/node
cd node
./configure --prefix=/opt/node
make
sudo make install

addpath /opt/node/bin
