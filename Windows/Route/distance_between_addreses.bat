@ECHO OFF
SET url=http://www.route4me.com
SET apikey=11111111111111111111111111111111
SET st={lat:40.285026, lng:-74.333839}
SET en={lat:40.385026, lng:-74.433839}

ECHO ON
::doesn't work - needs clarification
curl -o file1.txt -g -X GET  '%URL%/api/distance.php?start=%st%&end=%en%' 

timeout /t 30