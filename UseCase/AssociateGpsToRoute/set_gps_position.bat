@ECHO OFF

SET url=https://www.route4me.com/track/set.php
SET apikey=11111111111111111111111111111111
SET frm=XML
SET membid=1
SET route_id=6FA75DE4CD327AA57BE2EE7DB11DA083
SET course=70
SET speed=60
SET lat=41.003671512
SET lng=-81.5984610468
SET devtype=android_phone
SET devguid="HK5454H0K454564WWER445"
SET vehid=FFFF72BF6E06DC3C746673279BDAAE05

ECHO ON

:: There are also several optional parameters: tx_id, altitude, device_timestamp, app_version

curl -o file1.txt -g -X GET -k "%URL%?api_key=%apikey%&format=%frm%&member_id=%membid%&route_id=%route_id%&course=%course%&speed=%speed%&lat=%lat%&lng=%lng%&device_type=%devtype%&device_guid=%devguid%&vehicle_id=%vehid%"

timeout /t 30