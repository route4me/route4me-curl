ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/depot/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET algo_id=7F3DC4020CCCCCCCCCCCCCCCCCCCCCCC
SET member_id=888888


:: The example refers to the process of getting the depots list

ECHO ON

curl -o Depots_get_list_RESPONSE.json -H "Accept: application/json" -g -k -X GET "%url%?api_key=%api_key%&algo_id=%algo_id%&member_id=%member_id%"

timeout /t 30