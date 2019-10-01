#!/bin/bash

# The example refers to the process of getting an adddress group by group ID.

url=https://www.route4me.com/api.v4/address_book_group.php
apikey=11111111111111111111111111111111
group_id="D42FEF1C1B824EC040D1E2874FE3897F"

curl -o get_addressbook_group_RESPONSE.json -g -k -XGET "$url?api_key=$apikey&group_id=$group_id"

echo "Finished..."

sleep 30
