ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/address-book/groups

SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting limited number of the address book groups.

ECHO ON

curl -o get_addressbook_groups_RESPONSE.json -k -X GET "%base_url%%endpoint%?api_key=%apikey%"

timeout /t 30