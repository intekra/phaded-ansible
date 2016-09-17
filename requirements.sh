#!/bin/bash
set -e

if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root!" 1>&2
  exit 1
fi

cd /root
apt-get clean
apt-get update
apt-get dist-upgrade -y
apt-get install -y wget git curl vim vim-enhanced 
apt-get install -y python-pip python-dev libffi-dev libssl-dev libxml2-dev libxslt1-dev libjpeg8-dev zlib1g-dev gcc libyaml-dev libpython2.7-dev

pip install virtualenv
virtualenv phaded_repo
cd /root/phaded_repo
. ./bin/activate
git clone https://github.com/jwitko/phaded.git
cd phaded
pip install -r requirements.txt

echo "System prep successful"
