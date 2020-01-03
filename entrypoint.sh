#!/bin/sh

#if [ -n "$VAULT_GITHUB_TOKEN" ]; then
 mkdir -p ssl &&
  export VAULT_ADDR=https://dashboard.docker.hpecorp.net:8200 &&
  export VAULT_SKIP_VERIFY=1 &&
  vault auth -method=github token=15cbb68e0bc44561808e5c255cda4584c7039401 &&
  vault read -field=value secret/gsd-addison-services/partner-bcp-processes/sslkey > ./ssl/server.key &&
  vault read -field=value secret/gsd-addison-services/partner-bcp-processes/sslcert > ./ssl/server.crt &&
#fi

export NODE_PATH=$PWD
node server.js
