#!/bin/bash
# defind env to comunicate tcpdump bash shell and another toool
# first we remove it
TIME="$(date +%Y%m%d-%H%M%Z)"
DIR="/home/truc/sdn-network-with-containernet/core/$TIME.pcap"

tcpdump -w $DIR -s 100 -u -l -i d1-eth0 & 
PID=$!

# waiting for 5min later
sleep 300

# convert and remove pcap file, copy to dest folder
kill -9 $PID
bash



