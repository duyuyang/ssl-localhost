#!/bin/bash

set -ouxa pipefail

# init the index
rm -f certindex.txt serial
touch certindex.txt serial

echo "100000" > serial

# generate the CA
openssl req -new -x509 -extensions v3_ca -keyout private/cakey.pem -out cert/cacert.pem -days 365 -config openssl.cnf