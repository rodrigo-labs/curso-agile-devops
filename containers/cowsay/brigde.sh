#!/bin/sh

brctl addbr v-net-0

ip link add veth-green type veth peer name veth-green-br
ip link add veth-yellow type veth peer name veth-yellow-br

ip link set veth-green netns green
ip link set veth-yellow netns yellow

ip link set veth-green-br master v-net-0
ip link set veth-green-br up

ip link set veth-yellow-br master v-net-0
ip link set veth-yellow-br up

ip -n green addr add 192.168.15.10/24 dev veth-green
ip -n green link set veth-green up

ip -n yellow addr add 192.168.15.11/24 dev veth-yellow
ip -n yellow link set veth-yellow up

ip addr add 192.168.15.5/24 dev v-net-0

