#!/bin/bash

# Load .env file

if [ -f .env ]
then
  export $(grep -v '^#' .env | xargs)
fi

# Get public IP

PUBLIC_IP=$(dig TXT +short o-o.myaddr.l.google.com @ns1.google.com)

# Update Public IP in No-ip

curl "http://$NO_IP_USER:$NO_IP_PASS@dynupdate.no-ip.com/nic/update?hostname=$NO_IP_DDNS&myip=$PUBLIC_IP"
