ECHO OFF

:: Please, put real value in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/api_keys
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg
SET offset=0
SET limit=3

:: The example refers to the process of getting the API keys list

ECHO ON

curl -o ApiKeys_get_list_RESPONSE.json -H "x-auth-token: %xAuthToken%" -H "Accept: application/json" -g -k -X GET "%url%?offset=%offset%&limit=%limit%"

timeout /t 30