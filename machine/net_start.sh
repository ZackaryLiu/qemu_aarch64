#!/bin/bash

sudo ip tuntap add dev tap0 mod tap
sudo chmod 0666 /dev/net/tun
sudo ifconfig tap0 10.1.1.1 up
sudo echo 1 > /proc/sys/net/ipv4/ip_forward
sudo iptables -t nat -A POSTROUTING -j MASQUERADE

sudo echo 'TFTPD_ARGS="-l -s /home/zackary/tftp"' > /etc/conf.d/tftpd
sudo systemctl start tftpd.socket tftpd.service
sudo systemctl enable tftpd.socket
