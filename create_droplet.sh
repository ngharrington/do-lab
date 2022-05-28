#!/bin/bash

echo "creating droplet"

doctl compute droplet create vpn-01 \
    --enable-private-networking \
    --image ubuntu-20-04-x64 \
    --region nyc1 \
    --size s-1vcpu-1gb \
    --ssh-keys 05:fa:b5:8d:ee:b1:51:79:64:d9:58:b6:62:b7:ee:46 \
    --tag-name vpn \
    --wait

echo "droplet created"
