#!/bin/bash -e

git pull
mkdir ~/vendor || :
bundle check || bundle install --path ~/vendor/bundle --jobs 300
sudo systemctl restart isubata.ruby
