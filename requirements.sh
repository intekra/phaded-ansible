#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root!" 1>&2
  exit 1
fi
apt-get clean
apt-get update
apt-get install -y wget git curl vim vim-enhanced 
apt-get install -y python-pip python-dev libffi-dev libssl-dev libxml2-dev libxslt1-dev libjpeg8-dev zlib1g-dev gcc libyaml-dev libpython2.7-dev
