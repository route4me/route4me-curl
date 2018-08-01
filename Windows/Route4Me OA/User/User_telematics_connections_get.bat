ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/user/telematics-connections
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg
SET offset=0
SET limit=3

:: The example refers to the process of getting the telematics connections

ECHO ON

curl -o User_telematics_connections_get_RESPONSE.json -H "x-auth-token: %xAuthToken%" -H "Accept: application/json" -g -k -X GET  "%url%?offset=%offset%&limit=%limit%"

timeout /t 30