@ECHO OFF
SET url=http://www.route4me.com
SET apikey=11111111111111111111111111111111
SET routeid=5C15E83A4BE005BCD1537955D28D51D7
SET routedestid=160955261

ECHO ON

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@resequence_data.json" "%url%/api.v4/route.php?route_id=%routeid%&route_destination_id=%routedestid%&api_key=%apikey%"

timeout /t 30