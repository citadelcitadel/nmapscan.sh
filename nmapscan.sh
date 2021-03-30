#!/bin/bash
#cat /nmap.txt > /tmp/nmap.txt ; sed -i 's/^H/+H/' /tmp/nmap.txt; sed -i 's/^M/+M/' /tmp/nmap.txt; sed -e :a -e '$!N;s/\n+/ /;ta' -e 'P;D' /tmp/nmap.txt
nmap -sP 10.42.0.* |sed 's/^H/+H/'|sed 's/^M/+M/'|sed -e :a -e '$!N;s/\n+/ /;ta' -e 'P;D'

