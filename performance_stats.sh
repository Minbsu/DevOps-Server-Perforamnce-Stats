#!/bin/bash
figlet "CPU USAGE"
mpstat
sleep 10
clear

figlet "MEMORY USAGE"
free -h
sleep 10
clear

figlet "DISK USAGE"
df -h
sleep 10
clear

figlet "TOP 5 CPU"
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -6
sleep 10
clear

figlet "TOP 5 MEM"
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -6
sleep 10
clear
