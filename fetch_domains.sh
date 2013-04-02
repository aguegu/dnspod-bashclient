#!/bin/bash

source info.sh

echo "domains info:"

curl -sk "https://dnsapi.cn/Domain.List" -d "$account" \
	| egrep "<(id|name)" | egrep -o ">[^<]+<" | tr -d "<>" | xargs -n 2 echo

