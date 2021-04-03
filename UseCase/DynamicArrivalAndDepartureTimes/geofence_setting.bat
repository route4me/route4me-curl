@ECHO OFF

:: Single Driver Multiple TimeWindows 12 Stops

::See video tutorial here: http://support.route4me.com/route-planning-help.php?id=manual0:tutorial2:chapter1:subchapter2

SET url=https://www.route4me.com/actions/myAccount_settings_action.php
SET apikey=11111111111111111111111111111111
SET route_path_output=Points

ECHO ON

curl -o file1.txt -g -X POST -k -H "Content-Type: multipart/form-data;" -F "geofence_type=circle" -F "geofence_size=30" -F "geofence_time_on_site=21" "%url%?api_key=%apikey%" 

timeout /t 30