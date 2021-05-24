#!/bin/bash

if [ "$1" == "" ]
then
echo "Usage: ./ping.sh [network]"
echo "Example: ./ping.sh 192.168.0"
else
echo "< Available Hosts >"
for x in `seq 1 245`; do
ping -c 1 $1.$x | grep "64 bytes" | cut -d" " -f4 | sed 's/.$//'
done
fi