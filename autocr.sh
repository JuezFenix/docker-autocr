#!/bin/bash  

echo "autocr started at: $(date +%Y.%m.%d-%T)"
exec /usr/lib/node_modules/autocr/bin/autocr -w
