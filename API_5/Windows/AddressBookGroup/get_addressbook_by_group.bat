ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/address-book/groups/filter/all

SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting the address book locations by a geoup ID.

ECHO ON

curl -o get_addressbook_by_group_RESPONSE.json -k -XPOST -H  "accept: application/json" -H  "Content-Type: application/json" -d "@get_addressbook_by_group_data.json" "%base_url%%endpoint%?api_key=%apikey%"

timeout /t 30