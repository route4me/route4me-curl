ECHO OFF

SET url=https://oa.route4me.com/api/v1/feed/all

:: Please, put real values n the parameters originApiKey and authToken
SET originApiKey=51d0c0701ce83855c9f62d0440096e7c
SET authToken=111111111111111111111111111111111111.222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222.333333333-44444444444444444444444444444-555

SET fromTs=1526649668
SET trimTs=1529328068

:: The example refers to the process of getting limited number of the locations from an address book belonged to an user.

ECHO ON

curl -o Feed_all_activity_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%?from_ts=%fromTs%&trim_ts=%trimTs%&original_api_key=%originApiKey%&auth_token=%authToken%"

timeout /t 30