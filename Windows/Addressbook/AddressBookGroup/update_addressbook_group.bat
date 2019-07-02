ECHO OFF

SET url=https://api.route4me.com/api.v4/address_book_group.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of updating an address book group.
:: Note: you can find the allowed colors for the address book group at this link:
:: https://github.com/route4me/route4me-json-schemas/blob/master/ColorSamples/AddressBookGroupAvailableColors.png 

ECHO ON

curl -o update_addressbook_group_RESPONSE.json -k -d "@update_addressbook_group_data.json" -X PUT -H "Content-Type: application/json" "%url%?api_key=%apikey%"

timeout /t 30