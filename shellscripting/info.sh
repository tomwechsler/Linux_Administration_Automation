#!/bin/bash
source /etc/os-release
INFO_HOSTNAME=$(hostname)
INFO_IP=$(hostname -I | cut -f1 -d" ")
INFO_KERNEL=$(uname -r)
for i in {1..25} ; do
  echo -n =
done
echo
echo "Host: $INFO_HOSTNAME"
echo "IP: $INFO_IP"
echo "Kernel: $INFO_KERNEL"
echo "OS: $PRETTY_NAME"
echo "Version: $VERSION_CODENAME"
for i in {1..25} ; do
  echo -n =
done
echo