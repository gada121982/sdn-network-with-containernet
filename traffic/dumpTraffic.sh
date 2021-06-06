#!/bin/bash
# defind env to comunicate tcpdump bash shell and another toool
# first we remove it

while true
do
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
	bash /resource/TCPDUMP_and_CICFlowMeter/convert_pcap_csv.sh /home/traffic/$TIME.pcap
	node /resource/app-ids2/sendTraffic.js 

done
