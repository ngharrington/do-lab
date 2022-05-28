#!/bin/bash

echo "getting droplet id"

ID=$(doctl compute droplet list --tag-name vpn --format ID --no-header)

echo "deleting droplet ID: $ID"

doctl compute droplet delete -f $ID

echo "droplet deleted"