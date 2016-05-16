@ECHO OFF
SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111
SET sesid=4552222222
SET usid=787544566

ECHO ON

curl -o file1.txt -g -X GET -k "%URL%/datafeed/session/expire_session.php?api_key=%apikey%&session_guid=%sesid%&user_id=%usid%&format=json"

timeout /t 30