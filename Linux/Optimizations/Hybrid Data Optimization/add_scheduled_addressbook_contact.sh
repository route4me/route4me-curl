#!/bin/bash

url=https://api.route4me.com/api.v4/address_book.php

apikey=11111111111111111111111111111111

# The example refers to the process of creating new location in an address book belonged to an user.
# From same folder you can use other JSON files:
# Custom data, daily scheduling - add_scheduled_addressbook_contact_data_1.json
# Weekly scheduling - add_scheduled_addressbook_contact_data_2.json
# Monthly scheduling in the mode 'dates' - add_scheduled_addressbook_contact_data_3.json
# Monthly scheduling in the mode 'nth' - add_scheduled_addressbook_contact_data_4.json
# Annualy scheduling array in the both modes - add_scheduled_addressbook_contact_data_5.json
# Daily scheduling with the black lists - add_scheduled_addressbook_contact_data_6.json


curl -o file1.txt -g -k -X POST -H "Content-Type: application/json" -d "@add_scheduled_addressbook_contact_data_4.json" "$url?api_key=$apikey"

echo "Finished..."

sleep 15
