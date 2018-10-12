ECHO OFF

:: Please, put the real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/vendors
SET api_key=1111111111111111111111111111111111111111111111111111111111111111

:: The example refers to the process of getting the vendors list

ECHO ON

curl -o Vendors_get_list_RESPONSE.json -H "Accept: application/json" -g -k -X GET "%url%?api_key=%api_key%"

timeout /t 30