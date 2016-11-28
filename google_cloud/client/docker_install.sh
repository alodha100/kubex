#! /usr/bin/env bash

sudo yum install -y nano

sudo yum install -y git

sudo curl -sSL https://get.docker.com/ | sh

sudo systemctl enable docker

sudo systemctl start docker

sudo usermod -aG docker vagrant

