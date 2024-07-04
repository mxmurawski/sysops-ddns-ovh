#!/bin/bash
USERNAME=""
PASSWORD=""
HOST=""
IP=$(curl ipinfo.io|jq -r .ip)
TIMESTAMP=$(date)
echo "Current IP at $TIMESTAMP: $IP" >> /var/log/ddns.log
curl -u "$USERNAME:$PASSWORD" "https://www.ovh.com/nic/update?system=dyndns&hostname=$HOST&myip=$IP" >> /var/log/ddns.log