#! /usr/bin/env bash

sudo curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -

sudo yum install nodejs -y

sudo yum install gcc-c++ make -y

sudo npm install grunt-cli -g
