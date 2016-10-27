@ECHO OFF

SET url=https://www.route4me.com/api/track/get_device_location.php
SET apikey=11111111111111111111111111111111

SET routeid=814FB49CEA8188D134E9D4D4B8B0DAF7
SET time_period=custom

call get_unix_time 2016-10-20_00:00:00 start

call get_unix_time 2016-10-26_23:59:59 end

:: See other parameters at: https://github.com/route4me/route4me-json-schemas/blob/master/TrackingHistory_request.dtd

ECHO ON

curl -o file1.txt -k -g -X GET "%URL%?route_id=%routeid%&api_key=%apikey%&format=json&time_period=%time_period%&start_date=%start%&end_date=%end%"


timeout /t 30