#!/bin/bash
sudo apt-get install -y subversion libreadline-dev
git clone https:github.com/v8/v8
cd v8
make dependencies
make console=readline native

mkdir -p $HOME/bin
cp out/native/d8 $HOME/bin

