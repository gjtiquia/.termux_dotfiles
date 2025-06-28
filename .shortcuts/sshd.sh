#!/bin/bash

echo "[SSHD] starting ssh server"
sshd

echo
echo "[SSHD] user:"
whoami

echo
echo "[SSHD] ip address:"
2>/dev/null ifconfig | grep inet | awk '{print $2}'
# silences errors
# grep lines with inet
# prints the second column with awk

echo
echo "[SSHD] port:"
echo "8022"

echo
echo "connect via 'ssh <user>@<ip> -p <port>'"

echo
echo "run 'pkill sshd' to kill ssh server"

