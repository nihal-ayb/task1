
#!/bin/bash

# EC2 System Monitoring Script

LOG_DATE=$(date '+%Y-%m-%d %H:%M:%S')
HOST=$(hostname)

echo
echo "=================================================="
echo "             EC2 MONITORING REPORT"
echo "=================================================="
echo "Date       : $LOG_DATE"
echo "Hostname   : $HOST"
echo "=================================================="

echo
echo "[ CPU USAGE ]"
top -bn1 | grep "%Cpu"

echo
echo "[ MEMORY USAGE ]"
free -h

echo
echo "[ DISK USAGE ]"
df -h

echo
echo "[ RUNNING SERVICES ]"
systemctl list-units --type=service --state=running --no-pager

echo
echo "=================================================="
echo "             END OF MONITORING REPORT"
echo "=================================================="
echo
