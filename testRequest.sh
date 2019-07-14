#!/usr/bin/env bash

ip="$(kubectl get ingress --namespace chris-example app-ingress --output jsonpath='{.status.loadBalancer.ingress[0].ip}')"

curl -v -H 'Host: example.com' "$ip"
curl -v -H 'Host: https://example.com' "$ip:443"
