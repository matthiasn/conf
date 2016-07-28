#!/usr/bin/env bash

ln -s /home/bw/conf/birdwatch.service /lib/systemd/system/birdwatch.service
ln -s /home/bw/conf/birdwatch-tc.service /lib/systemd/system/birdwatch-tc.service
ln -s /home/bw/conf/sse-chat.service /lib/systemd/system/sse-chat.service
ln -s /home/bw/conf/systems-toolbox-ws-latency.service /lib/systemd/system/systems-toolbox-ws-latency.service
ln -s /home/bw/conf/systems-toolbox-redux-ex.service /lib/systemd/system/systems-toolbox-redux-ex.service
ln -s /home/bw/conf/inspect-example.service /lib/systemd/system/inspect-example.service

systemctl enable /lib/systemd/system/birdwatch.service
systemctl enable /lib/systemd/system/birdwatch-tc.service
systemctl enable /lib/systemd/system/sse-chat.service
systemctl enable /lib/systemd/system/systems-toolbox-ws-latency.service
systemctl enable /lib/systemd/system/systems-toolbox-redux-ex.service
systemctl enable /lib/systemd/system/inspect-example.service

service birdwatch start
service birdwatch-tc start
service sse-chat start
service systems-toolbox-ws-latency start
service systems-toolbox-redux-ex start
service inspect-example start
