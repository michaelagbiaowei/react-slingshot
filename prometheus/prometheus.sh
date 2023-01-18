#!/bin/bash

curl -s https://api.github.com/repos/prometheus/prometheus/releases/latest | grep browser_download_url | grep linux-amd64 | cut -d '"' -f 4 | wget -qi -

tar xvf prometheus*.tar.gz

cd prometheus-2.41.0.linux-amd64

./prometheus --version

./prometheus --config.file=./prometheus.yml
