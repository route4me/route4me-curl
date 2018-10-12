ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/api_keys
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET offset=0
SET limit=3

:: The example refers to the process of getting the API keys list

ECHO ON

curl -o ApiKeys_get_list_RESPONSE.json -H "Accept: application/json" -g -k -X GET "%url%?api_key=%api_key%&offset=%offset%&limit=%limit%"

timeout /t 30