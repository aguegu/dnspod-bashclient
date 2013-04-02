#!/bin/bash

source info.sh

#curl -sk "https://dnsapi.cn/Domain.List" -d "$account" \
#	| egrep "<(id|name)" | egrep -o ">[^<]+<" | tr -d "<>" | xargs -n 2 echo

#curl -sk "https://dnsapi.cn/Record.List" -d "$account&domain_id=$domain_id" > /tmp/record.xml.$$
#line=$(cat /tmp/record.xml.$$ | grep -n "<records>" | egrep -o "^[^:]+")
#tail -n +$line /tmp/record.xml.$$ | egrep -o ">[^<]+<" | tr -d "<>" | grep -v "hold" | xargs -n 10 echo \
#	| awk '{print $1 "\t" $2 "\t" $4 "\t" $6 "\t" $7 "\t" $8 "\t" $9 $10 "\t" $5}' 

value=$(curl -s ifconfig.me)
echo $value
curl -sk "https://dnsapi.cn/Record.Modify" -d "$account&$record&value=$value"

#rm -f /tmp/record.xml.$$
