#!/usr/bin/env bash

ssh-keygen -t rsa -b 4096 -C "matthias.nehlsen@gmail.com"
cat .ssh/id_rsa.pub
