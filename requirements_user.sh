#!/bin/bash
set -e

if [[ $EUID -eq 0 ]]; then
  echo "This script is not meant to be run as root!" 1>&2
  exit 1
fi

cd ~ 
virtualenv phaded_repo
cd ~/phaded_repo
. ./bin/activate
rm -rf phaded
git clone https://github.com/jwitko/phaded.git
cd phaded
pip install -r requirements.txt

echo "User prep successful"
exit 0
