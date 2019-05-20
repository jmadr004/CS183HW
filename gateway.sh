#!/bin/bash

default=$(ip r | grep default | awk '{print $3}')
device=$(ip r | grep default | awk '{print $5}')
nMask=$(ifconfig $device | awk '/netmask/  {print $4}')
echo "gateway: $default netmask: $nMask dev: $device"


