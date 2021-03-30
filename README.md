# nmapscan.sh
Wrapper script for the Linux network scanning tool nmap, same one Trinity uses in The Matrix film, which makes it more human readable, puts the results on more of a single line.

Here is an example of BEFORE **and** AFTER

bash-3.2# nmap -sP 10.42.0.*
Starting Nmap 7.91 ( https://nmap.org ) at 2021-03-30 03:48 CDT
Nmap scan report for 10.42.0.1
Host is up (0.00026s latency).
MAC Address: 00:13:72:87:4A:78 (Dell)
Nmap scan report for 10.42.0.11
Host is up (0.0013s latency).
MAC Address: B8:27:EB:4B:67:B7 (Raspberry Pi Foundation)
Nmap scan report for 10.42.0.90
Host is up (0.0027s latency).
MAC Address: B8:27:EB:8C:F6:C8 (Raspberry Pi Foundation)
Nmap scan report for 10.42.0.116
Host is up (0.00017s latency).
MAC Address: 24:5E:BE:34:54:BE (Qnap Systems)
Nmap scan report for 10.42.0.117
Host is up (0.00020s latency).
MAC Address: 24:5E:BE:34:54:BF (Qnap Systems)
Nmap scan report for 10.42.0.123
Host is up (0.00011s latency).
MAC Address: 70:85:C2:78:26:09 (ASRock Incorporation)
Nmap scan report for 10.42.0.179
Host is up (0.00022s latency).
MAC Address: 24:5E:BE:34:55:45 (Qnap Systems)
Nmap scan report for 10.42.0.180
Host is up (0.00016s latency).
MAC Address: 24:5E:BE:34:55:46 (Qnap Systems)
Nmap scan report for 10.42.0.228
Host is up (0.00022s latency).
MAC Address: 00:11:32:1B:75:7D (Synology Incorporated)
Nmap scan report for 10.42.0.235
Host is up (0.00060s latency).
MAC Address: 50:87:B8:20:AB:1F (Nuvyyo)
Nmap scan report for 10.42.0.236
Host is up (0.00018s latency).
MAC Address: 00:11:32:17:71:40 (Synology Incorporated)
Nmap scan report for 10.42.0.13
Host is up.
Nmap done: 256 IP addresses (12 hosts up) scanned in 5.93 seconds


** **

bash-3.2# ./nmapscan.sh 
Starting Nmap 7.91 ( https://nmap.org ) at 2021-03-30 03:41 CDT
Nmap scan report for 10.42.0.1 Host is up (0.00023s latency). MAC Address: 00:13:72:87:4A:78 (Dell)
Nmap scan report for 10.42.0.11 Host is up (0.0014s latency). MAC Address: B8:27:EB:4B:67:B7 (Raspberry Pi Foundation)
Nmap scan report for 10.42.0.90 Host is up (0.0028s latency). MAC Address: B8:27:EB:8C:F6:C8 (Raspberry Pi Foundation)
Nmap scan report for 10.42.0.116 Host is up (0.00023s latency). MAC Address: 24:5E:BE:34:54:BE (Qnap Systems)
Nmap scan report for 10.42.0.117 Host is up (0.00028s latency). MAC Address: 24:5E:BE:34:54:BF (Qnap Systems)
Nmap scan report for 10.42.0.123 Host is up (0.00021s latency). MAC Address: 70:85:C2:78:26:09 (ASRock Incorporation)
Nmap scan report for 10.42.0.179 Host is up (0.00026s latency). MAC Address: 24:5E:BE:34:55:45 (Qnap Systems)
Nmap scan report for 10.42.0.180 Host is up (0.00023s latency). MAC Address: 24:5E:BE:34:55:46 (Qnap Systems)
Nmap scan report for 10.42.0.228 Host is up (0.00017s latency). MAC Address: 00:11:32:1B:75:7D (Synology Incorporated)
Nmap scan report for 10.42.0.235 Host is up (0.00057s latency). MAC Address: 50:87:B8:20:AB:1F (Nuvyyo)
Nmap scan report for 10.42.0.236 Host is up (0.00018s latency). MAC Address: 00:11:32:17:71:40 (Synology Incorporated)
Nmap scan report for 10.42.0.13 Host is up.
Nmap done: 256 IP addresses (12 hosts up) scanned in 6.01 seconds


I hardcoded the IP address, 
so you have to edit the script yourself with whatever your 192.168.x.x or whatever your doing with nmap here "nmap -sP 10.42.0.*"
