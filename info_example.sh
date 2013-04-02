#!/bin/bash

# fill below account infos before running any script
login_email="xxx@yyy.com"
login_password="zzzz"

# domain_id would be available in fetch_domains.sh outputs
domain_id=0000000

# record_id would be available in fetch_records.sh outputs
record_id=22222222

################################################

format="xml"
lang="en"
error_on_empty="no"

account="login_email=$login_email&login_password=$login_password&format=$format&lang=$lang&error_on_empty=$error_on_empty"

sub_domain="@"
record_type="A"
record_line="默认"
mx=10
ttl=600

record="domain_id=$domain_id&record_id=$record_id&sub_domain=$sub_domain&record_type=$record_type&record_line=$record_line&mx=$mx&ttl=$ttl"

# config other arguments before running dnspod-bashclient.sh
# the default sets would suit the most typical cases.

