@ECHO OFF
:: route_id and address_id are not real - put real values
SET url=https://www.route4me.com/actions/addRouteNotes.php
SET apikey=11111111111111111111111111111111
SET routeid=vf55g4fg5dfgfdg1fdgd21g2f
SET addrid=787854545455
SET dev_lat=33.132675170898
SET dev_lng=-83.244743347168
SET dev_type=web
SET updatetype=dropoff

ECHO ON

:: Always returns false - needs clarification
curl -o file1.txt -g -k -X POST -d '@add_notes_to_route_data.json' "%url%?api_key=%apikey%&route_id=%routeid%&address_id=%addrid%&dev_lat=%dev_lat%&dev_lng=%dev_lng%&device_type=%dev_type%"

timeout /t 30