#!/bin/bash

# The example refers to the process of updating an address book group.
# Note: you can find the allowed colors for the address book group at this link:
# https://github.com/route4me/route4me-json-schemas/blob/master/ColorSamples/AddressBookGroupAvailableColors.png 

url=https://api.route4me.com/api.v4/address_book_group.php
apikey=11111111111111111111111111111111

curl -o update_addressbook_group_RESPONSE.json -g -k -X PUT -H "Content-Type: application/json" -d "@update_addressbook_group_data.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 30
