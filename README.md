dnspod-bashclient
=================

Bash client for dnspod.cn to update local ip to achieve DDNS.

author: Weihong Guan (@aGuegu)
e-mail: weihong.guan[AT]gmail.com
license: Attribution-NonCommercial 3.0 Unported (CC BY-NC 3.0)

Based on DNSPod Open API (https://support.dnspod.cn/Support/api)
Official local script inquiry local wan ip from DNSPod server, however the result may be run.
Instead, this script use 'curl ifconfig.me' to fetch wan ip.

prerequisite: curl

How to use:

1. Fill in the account info in info_example.s
2. Rename info_example.sh to info.sh, since it is inclued in operation scripts.
	$ mv info_example.sh info.sh
3. Run fetch_domains.sh
	$ source ./fetch_domains.sh
4. Fill domain_id in info.sh with the previous output, the id is at the 1st column.
5. Run fetch_records.sh
	$ source ./fetch_records.sh
6. Fill record_id in info.sh with the previous output, the id is at the 1st column.
7. Adjust other arguments to fit your needs, the default sets would fit most typical cases in DDNS.
8. Run dnspod-bashclient.sh to submit your domain records with new ip
	$ source ./dnspod-bashclient.sh

In dialy use, especially when your ADSL moden reconnects, just run dnspod-bashclient.sh would be sufficient. fetch_*.sh
are just helpers to get the configure info.

* info.sh is ignored by git to protect security. The structure is identical to info_example.sh

fetch.sh Get Domain_id and Record_id which are required in further operation, this script will generate a tab formated output according to the xml response.





