@ECHO OFF

SET url=https://www.route4me.com/datafeed/session/validate_session.php
SET apikey=1D479A8464677D9FC054EB7D00B046D2
SET sesid=ea250d5b4d48735419d300a95add8208
SET memid=44143

:: The example refers to the process of validating an user's working session in the Route4Me application.

ECHO ON

curl -vvv -o file2.txt -g -X GET -k "%url%?api_key=%apikey%&session_guid=%sesid%&member_id=%memid%&format=json"

timeout /t 30