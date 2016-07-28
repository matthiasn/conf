#!/usr/bin/env bash

cd ~
mkdir bin
cd bin
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod +x lein
./lein
cd ~
