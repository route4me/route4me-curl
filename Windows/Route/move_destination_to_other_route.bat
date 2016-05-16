@ECHO OFF
SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111

ECHO ON

:: returns false - needs clarification
curl -o file1.txt -g -X POST -H "Content-Type: application/json" -k -d "@move_destination_data.json" "%url%/actions/route/move_route_destination.php?api_key=%apikey%"

timeout /t 30