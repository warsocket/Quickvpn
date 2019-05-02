#!/usr/bin/env sh
sysctl net.ipv4.ip_forward=1
iptables -t nat -A POSTROUTING -o ens3 -j MASQUERADE
