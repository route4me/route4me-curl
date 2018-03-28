@ECHO OFF

SET url=https://api.route4me.com/track/set.php
SET apikey=11111111111111111111111111111111
SET membid=1
SET route_id=114B01238180A4227FD187E128C056F5
SET course=70
SET speed=60
SET lat=55.6884868
SET lng=12.5366426
SET devtype=android_phone
SET devguid="HK5454H0K454564WWER445"

ECHO ON

:: The example refers to the process of setting GPS position of a device by sending HTTP parameters.
:: You can also use optional parameters: tx_id, vehicle_id altitude, device_timestamp, app_version.

curl -o file1.txt -g -X POST -k "%url%?api_key=%apikey%&member_id=%membid%&route_id=%route_id%&course=%course%&speed=%speed%&lat=%lat%&lng=%lng%&device_type=%devtype%&device_guid=%devguid%"

timeout /t 30