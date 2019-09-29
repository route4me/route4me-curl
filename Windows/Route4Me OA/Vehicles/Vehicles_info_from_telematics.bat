ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/vehicles_info/all
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET limit=2

:: The example refers to the process of getting the vehicles info from the telematics vendors

ECHO ON

curl -o Vehicles_info_from_telematics_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%?api_key=%api_key%&limit=%limit%"

timeout /t 30