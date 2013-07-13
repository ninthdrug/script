#!/bin/bash
sudo apt-get install -y openjdk-7-jdk
mkdir -p $HOME/dist
cd $HOME/dist

[ -e scala-2.10.2.tgz ] || (
    wget http://www.scala-lang.org/downloads/distrib/files/scala-2.10.2.tgz
)
sudo tar xzf scala-2.10.2.tgz -C /opt
[ -e /opt/scala ] || sudo ln -s /opt/scala-2.10.2 /opt/scala
addpath /opt/scala/bin

