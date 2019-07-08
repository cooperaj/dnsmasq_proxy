#!/usr/bin/env sh
set -e

if [ -n "${VPN_DNS_SRV}" ]; then
  IP=$(dig -t A -4 +short "${VPN_DNS_SRV}")
  echo "Resolved hostname to ${IP}"
  SERVER="--server=${IP}"
fi

if [ -n "${VPN_DNS_SRV_PORT}" ]; then
  SERVER="${SERVER}#${VPN_DNS_SRV_PORT}"
fi

if [ "$1" = 'dnsmasq' ]; then
    echo "Starting dnsmasq with forward option ${SERVER}"
    exec "$@" "--user=dnsmasq" "--keep-in-foreground" "--no-resolv" "${SERVER}"
fi

exec "$@"
