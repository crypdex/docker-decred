#!/usr/bin/env bash

set -u # or set -o nounset
: "$DATA_DIR"


docker run -it -v ${DATA_DIR}:/home/decred/.dcrwallet crypdex/decred:1.4 dcrwallet -c /home/decred/.dcrwallet/dcrw.cert --help
