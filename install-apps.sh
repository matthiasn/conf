#!/usr/bin/env bash

echo
echo "pulling BirdWatch"
cd ~/BirdWatch
git fetch
git pull

echo
echo "building BirdWatch MainApp"
cd ~/BirdWatch/Clojure-Websockets/MainApp
lein clean
lein cljsbuild once release
lein uberjar
cp target/uberjar/birdwatch-0.2.0-SNAPSHOT-standalone.jar ~/bin/birdwatch.jar

echo
echo "building BirdWatch TwitterClient"
cd ~/BirdWatch/Clojure-Websockets/TwitterClient
lein clean
lein uberjar
cp target/uberjar/birdwatch-tc-0.2.0-SNAPSHOT-standalone.jar ~/bin/birdwatch-tc.jar

echo
echo "pulling systems-toolbox"
cd ~/systems-toolbox/
git fetch
git pull

echo
echo "building redux-counter example"
cd ~/systems-toolbox/examples/redux-counter01
lein clean
lein cljsbuild once release
lein uberjar
cp target/redux-counter01-0.6.1-SNAPSHOT-standalone.jar ~/bin/redux-counter01.jar

echo
echo "building ws example"
cd ~/systems-toolbox/examples/trailing-mouse-pointer
lein clean
lein cljsbuild once release
lein uberjar
cp target/trailing-mouse-pointer-0.6.1-SNAPSHOT-standalone.jar ~/bin/trailing-mouse-pointer.jar
