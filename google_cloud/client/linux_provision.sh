#! /usr/bin/env bash

sudo yum install -y nano

sudo yum install -y git

sudo curl -sSL https://get.docker.com/ | sh

sudo systemctl enable docker

sudo systemctl start docker

sudo sh ./gcloud_sdk_install.sh
sudo sh ./kubectl_install.sh
