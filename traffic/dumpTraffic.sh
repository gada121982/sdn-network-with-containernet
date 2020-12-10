#!/bin/bash
# defind env to comunicate tcpdump bash shell and another toool
# first we remove it
TIME="$(date +%Y%m%d-%H%M%Z)"
DIR="/home/traffic/$TIME.pcap"
CSV_FILE="/home/traffic/$TIME.csv"
echo $CSV_FILE
echo $DIR
echo $TIME

/usr/sbin/tcpdump -w $DIR -u -l -i d1-eth0 &
PID=$!

echo $PID >> /home/pid.txt
# waiting for 5s after
sleep 30
# convert and remove pcap file, copy to dest folder
kill -9 $PID
tshark -r $DIR > $CSV_FILE
rm -f $DIR

