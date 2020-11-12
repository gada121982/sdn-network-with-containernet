#!/bin/bash
# defind env to comunicate tcpdump bash shell and another toool
# first we remove it
TIME="$(date +%Y%m%d-%H%M%Z)"
DIR="/home/traffic/$TIME.pcap"
CSV_FILE="/home/traffic/$TIME.csv"
echo $CSV_FILE
echo $DIR
echo $TIME

tcpdump -w $DIR -s 100 -u -l -i d1-eth0 & 
PID=$!

# waiting for 5s after
sleep 300

# convert and remove pcap file, copy to dest folder
kill -9 $PID
tshark -r $DIR > $CSV_FILE


