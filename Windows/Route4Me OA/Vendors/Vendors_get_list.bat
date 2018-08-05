ECHO OFF

:: Please, put the real value in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/vendors
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg

:: The example refers to the process of getting the vendors list

ECHO ON

curl -o Vendors_get_list_RESPONSE.json -H "x-auth-token: %xAuthToken%" -H "Accept: application/json" -g -k -X GET  "%url%"

timeout /t 30