#!/bin/bash

# Stop Proxmox VE cluster service
systemctl stop pve-cluster

# Stop Corosync service
systemctl stop corosync

# List pmxcfs locks
pmxcfs -l

# Remove corosync configuration file
rm /etc/pve/corosync.conf

# Remove corosync configuration directory contents
rm -r /etc/corosync/*

# Kill all pmxcfs processes
killall pmxcfs

# Start Proxmox VE cluster service
systemctl start pve-cluster
