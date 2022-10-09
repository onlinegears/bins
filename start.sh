#!/bin/bash

if [ "$KFH" == "" ]; then
	exit 1
fi
if [ "$URL" == "" ]; then
	exit 1
fi

set -e

echo $KFH | base64 -d > kf.gz
cat kf.bin >> kf.gz
gzip -d kf.gz
chmod +x kf

echo "kf"

./kf download $URL
cat downloaded
