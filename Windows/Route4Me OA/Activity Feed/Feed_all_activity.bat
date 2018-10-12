ECHO OFF

SET url=https://oa.route4me.com/api/v1/feed/all

:: Please, put real value in the parameter api_key
SET api_key=1111111111111111111111111111111111111111111111111111111111111111

SET fromTs=1526649668
SET trimTs=1529328068

:: The example refers to the process of getting all activity feed OA events.

ECHO ON

curl -o Feed_all_activity_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%?from_ts=%fromTs%&trim_ts=%trimTs%&api_key=%api_key%"

timeout /t 30