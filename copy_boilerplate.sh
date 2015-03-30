#!/bin/bash

set -e

OTHER_PROJECT="${1}"

rm -rf scripts/
cp -r "${OTHER_PROJECT}/scripts" scripts
cp -r "${OTHER_PROJECT}/http" http
