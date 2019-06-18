#!/bin/bash

#This script print ip and network
 
#IP=`ifconfig eth0 | grep 'inet ' | sed 's/^.*addr://g' | sed 's/ Bcast.*$//g'`
IP = `ifconfig`
NETMASK=`ifconfig eth0 | grep 'inet '| sed 's/^.*Mask://g'`
 
#echo "$IP/$NETMASK"
echo "$IP"
 
exit 0

