Certainly! Below is a simple Bash script that includes the commands you provided:

```bash
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
```

Save this script to a file, for example, `stop_and_start.sh`. Make sure to give execute permissions to the script using the following command:

```bash
chmod +x stop_and_start.sh
```

You can then run the script using:

```bash
./stop_and_start.sh
```

Please be cautious when using scripts, especially those that involve stopping and removing system services, as they can have significant impacts on the system.
