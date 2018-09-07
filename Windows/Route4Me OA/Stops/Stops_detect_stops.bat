ECHO OFF

:: Please, put real values in the parameter apiKey
SET url=https://oa.route4me.com/api/v1/stops/detect
SET apiKey=c8f031c712715c90b2e0cd1ce19cabf247922222222222222222222222222222

:: The example refers to the process of detecting of the vehicle stops

ECHO ON

curl -o Stops_detect_stops_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X POST -d "@Stops_detect_stops_data.json" "%url%?api_key=%apiKey%"

timeout /t 30