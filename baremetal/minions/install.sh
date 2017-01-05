#! /usr/bin/env bash

sudo yum install -y ntp

sudo yum install -y nano

sudo systemctl enable ntpd && sudo systemctl start ntpd

sudo curl -fsSL https://get.docker.com/ | sh

sudo systemctl enable docker.service

sudo usermod -aG docker vagrant

sudo systemctl start docker

