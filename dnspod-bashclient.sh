#!/bin/bash

source info.sh

value=$(curl -s ifconfig.me)
echo $value
curl -sk "https://dnsapi.cn/Record.Modify" -d "$account&$record&value=$value" > /dev/null

if [ $? -eq 0 ]; then
	echo "ip: $value of $sub_domain of Domain(id: $domain_id) submitted successfully."
fi

