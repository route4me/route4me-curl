@ECHO OFF

SET url=https://api.route4me.com/datafeed/session/validate_session.php
SET apikey=11111111111111111111111111111111
SET sesid=0e4c2aa391b9f130ad8e1ea56fb3fb0c
SET memid=1

:: The example refers to the process of validating an user's working session in the Route4Me application.

ECHO ON

curl -o file2.txt -g -X GET -k "%url%?api_key=%apikey%&session_guid=%sesid%&member_id=%memid%&format=json"

timeout /t 30