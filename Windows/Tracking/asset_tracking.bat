@ECHO OFF

SET url=https://api.route4me.com/api.v4/status.php

SET apikey=11111111111111111111111111111111
SET tracking="D8GPPM3Y"

:: The example refers to the process of an asset tracking by sending HTTP parameters.

ECHO ON

curl -o file1.txt -g -X GET -k "%url%?api_key=%apikey%&tracking=%tracking%"

timeout /t 30