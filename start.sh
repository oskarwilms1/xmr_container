#!/usr/bin/env bash
podman-compose up -d --build
ONION=$(podman exec tor_proxy cat /var/lib/tor/monero/hostname)
echo "Monero RPC: ${ONION}:18089"
