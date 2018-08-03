ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/algos/
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg


:: The example refers to the process of getting the system algorithms

ECHO ON

curl -o System_algos_get_RESPONSE.json -H "x-auth-token: %xAuthToken%" -H "Accept: application/json" -g -k -X GET  "%url%"

timeout /t 30