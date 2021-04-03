@ECHO OFF

SET url=https://www.route4me.com/track/set.php
SET apikey=11111111111111111111111111111111
SET frm=XML
SET membid=1
SET route_id=DD376C7148E7FEE36CFABE2BD9978BDD
SET course=70
SET speed=60
:: bellow is position of the address: 1659 Hibbard Dr, Stow, OH 44224
SET lat=41.194505989552
SET lng=-81.443351581693
SET devtype=android_phone
SET devguid="HK5454H0K454564WWER445"
SET vehid=FFFF72BF6E06DC3C746673279BDAAE05

ECHO ON

:: There are also several optional parameters: tx_id, altitude, device_timestamp, app_version

curl -o file1.txt -g -X GET -k "%url%?api_key=%apikey%&format=%frm%&member_id=%membid%&route_id=%route_id%&course=%course%&speed=%speed%&lat=%lat%&lng=%lng%&device_type=%devtype%&device_guid=%devguid%&vehicle_id=%vehid%"

timeout /t 30
