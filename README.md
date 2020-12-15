## 1. Các vấn đề cẩn giải quyết
- Tạo background traffic 
- Sử dụng mirror traffic để  tổng hợp traffic về 1 host 
- Sử dụng tcpdump để  capture các traffic được nhận

- sử dụng crontab với mục đích 
  + Lập lịch cho tcpdump
  + Lập lịch convert pcap to csv
  =>  Đều được lập trình chứ không phải config manual


## 2. Một số command linux cần thiết
***2.1. tcpdump***
```
tcpdump -w /home/traffic/test.pcap -i d1-eth0
```

***2.2 Checking with wireshark***
```
wireshark -r test.pcap
```

***2.3 Setting mirror traffic port***
```
#ovs-vsctl del-port s1-eth1
#ovs-vsctl add-port s1 s1-eth1 -- --id=@p get port s1-eth1 -- --id=@m create mirror name=m0 select-all=true output-port=@p -- set bridge s1 mirrors=@m


***2.5 Setting crontab***
```
crontab -e
> 
*/3 * * * *  bash  /home/traffic/dumpTraffic.sh

```



