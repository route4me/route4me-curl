ECHO OFF

:: Please, put real values n the parameters originApiKey and authToken
SET url=https://oa.route4me.com/api/v1/statistics/route-destination/created/count-grouped
SET authToken=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1MzE5MjU0OTYsImV4cCI6MTUzMjUzMDI5Niwic3ViIjoiRUJBNzk0MzU0REM4NDdFM0JDMTlBRUU0OUNGNEFCMUIifQ.MDrswJyKH-2Ah5C0mOGEt9MzFkAlyDnjRvVOc7G-4uE
SET from_ts=1526649668
SET trim_ts=1529328068

:: The example refers to the process of getting the statistics of the created route destinations

ECHO ON

curl -o Statistics_route_destinations_created_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%?auth_token=%authToken%&from_ts=%from_ts%&trim_ts=%trim_ts%"

timeout /t 30