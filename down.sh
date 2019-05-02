#!/usr/bin/env sh
sysctl net.ipv4.ip_forward=0
iptables -t nat -D POSTROUTING -o ens3 -j MASQUERADE
