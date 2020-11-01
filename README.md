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
tcpdump -w /home/traffic/test.pcap-i d1-eth0
```

***2.2 Checking with wireshark***

```
wireshark -r test.pcap
```


