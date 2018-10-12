ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/depot/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET depot_id=0E76BE2F7EEEEEEEEEEEEEEEEEEEEEEE

:: The example refers to the process of getting a depot

ECHO ON

curl -o Depots_get_depot_RESPONSE.json -H "Accept: application/json" -g -k -X GET "%url%%depot_id%?api_key=%api_key%"

timeout /t 30