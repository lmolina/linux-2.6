#!/bin/sh

sudo ifconfig wlan0 down
sleep 15
sudo ifconfig wlan0 up
sudo dmesg -c
sudo iwlist wlan0 scan > /tmp/results.scan
dmesg > /tmp/results.pre
sleep 15
dmesg > /tmp/results.post
sudo ifconfig wlan0 down
