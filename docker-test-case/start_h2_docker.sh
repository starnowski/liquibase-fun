#!/usr/bin/env bash

SCRIPT_DIR="$(dirname $0)"

DATA_DIR=`realpath ${SCRIPT_DIR}/data`
echo "data directory is ${DATA_DIR}"

docker run -d -p 1521:1521 -p 81:81 -v "${DATA_DIR}":/opt/h2-data -e H2_OPTIONS="-ifNotExists" --name=MyH2Instance oscarfonts/h2