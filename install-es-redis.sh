#!/usr/bin/env bash

wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.5.deb
dpkg -i elasticsearch-1.7.5.deb

apt-get update
apt-get install redis-server
