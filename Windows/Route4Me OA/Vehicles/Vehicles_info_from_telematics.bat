ECHO OFF

:: Please, put real values in the parameter authToken
SET url=https://oa.route4me.com/api/v1/vehicles_info/all
SET authToken=111111111111111111111111111111111111.222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222.333333333-44444444444444444444444444444-555
SET limit=2

:: The example refers to the process of getting the vehicles info from the telematics vendors

ECHO ON

curl -o Vehicles_info_from_telematics_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%?auth_token=%authToken%&limit=%limit%"

timeout /t 30