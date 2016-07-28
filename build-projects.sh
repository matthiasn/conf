#!/usr/bin/env bash

cd ~/systems-toolbox/examples/redux-counter01/
lein cljsbuild once release
lein uberjar
cp ~/systems-toolbox/examples/redux-counter01/target/redux-counter01-0.6.1-SNAPSHOT-standalone.jar ~/bin/redux-counter01.jar
mkdir ~/run
