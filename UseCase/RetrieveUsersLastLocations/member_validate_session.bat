@ECHO OFF
SET url=https://www.route4me.com/datafeed/session/validate_session.php
SET apikey=11111111111111111111111111111111
SET sesid=9ab4def60f804e2cc0dc4e5bce14658e
SET memid=1

ECHO ON

curl -vvv -o file2.txt -g -X GET -k "%url%?api_key=%apikey%&session_guid=%sesid%&member_id=%memid%&format=json"

timeout /t 30