@ECHO OFF

SET url=http://api.broono.com/api/vehicles/view_vehicle.php
SET apikey=11111111111111111111111111111111
SET vehicleid=0A18C14AB42F6B6D7E830CE4082493E3

:: The example refers to the process of getting a vehicle by vehicle_id.

ECHO ON

curl -o file1.txt -g -X GET -k "%url%?api_key=%apikey%&vehicle_id=%vehicleid%"

timeout /t 30