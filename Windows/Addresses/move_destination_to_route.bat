@ECHO OFF
SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111
SET afterdestinationid=161141878

ECHO ON

:: returns false - needs clarification
curl -o file1.txt -g -X POST -k -d 'move_destination_data.json' "%url%/actions/route/move_route_destination.php?api_key=%apikey%&after_destination_id=%afterdestinationid%"

timeout /t 30