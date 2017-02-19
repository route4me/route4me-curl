@ECHO OFF
SET url=http://www.route4me.com/api.v4/address_book.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of updating of an exising location in an address book.

ECHO ON

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@update_scheduled_addressbook_contact_data.json" "%url%?api_key=%apikey%"

timeout /t 30