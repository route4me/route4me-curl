ECHO OFF

:: Please, put real value in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/api_keys
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg

:: The example refers to the process of creating an API key

ECHO ON

curl -o Apikeys_apikey_create_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -H "x-auth-token: %xAuthToken%" -g -k -X POST -d "@Apikeys_apikey_create_data.json" "%url%"

timeout /t 30