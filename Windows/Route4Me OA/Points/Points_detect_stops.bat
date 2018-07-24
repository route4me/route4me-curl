ECHO OFF

:: Please, put real values n the parameters originApiKey and authToken
SET url=https://oa.route4me.com/api/v1/points/detect-stops
SET authToken=111111111111111111111111111111111111.222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222.333333333-44444444444444444444444444444-555

:: The example refers to the process of detecting of the vehicle stops

ECHO ON

curl -o Points_detect_stops_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X POST -d "@Points_detect_stops_data.json" "%url%?auth_token=%authToken%"

timeout /t 30