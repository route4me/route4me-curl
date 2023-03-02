@ECHO OFF

SET url=https://wh.route4me.com/modules/api/v5.0/vehicles
SET apikey=5B05A8B6C4DB22C0CD6966F01D5FB4E0
SET show=active
SET search_query=Medium

:: The example refers to the process of getting a list of the vehicles.

ECHO ON

curl -o get_vehicles_RESPONSE.json -g -X GET -k "%url%?api_key=%apikey%&show=%show%&search_query=%search_query%"

timeout /t 30