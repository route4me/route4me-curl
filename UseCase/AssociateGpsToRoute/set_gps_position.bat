@ECHO OFF

SET url=https://www.route4me.com/track/set.php
SET apikey=11111111111111111111111111111111
SET frm=XML
SET membid=1
SET route_id=422E488B1ABD5C37C23583052D3EFD73
SET course=70
SET speed=60
SET lat=41.31511688
SET lng=-81.55874634
SET devtype=android_phone
SET devguid="HK5454H0K454564WWER445"
SET vehid=00000000000000000000000000000000

ECHO ON

:: There are also several optional parameters: tx_id, altitude, device_timestamp, app_version

curl -o file1.txt -g -X GET -k "%URL%?api_key=%apikey%&format=%frm%&member_id=%membid%&route_id=%route_id%&course=%course%&speed=%speed%&lat=%lat%&lng=%lng%&device_type=%devtype%&device_guid=%devguid%&vehicle_id=%vehid%"

timeout /t 30