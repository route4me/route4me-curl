@ECHO OFF

SET url=https://www.route4me.com/api.v4/hybrid_date_optimization.php
SET apikey=11111111111111111111111111111111
SET routeid=E7905633469E06FB8AF56658C445FA6A
SET "scheduled_data=2017-02-17"
SET tz_minutes=480

:: The example refers to the process of getting a hybrid optimization for scheduled date.
:: You can reoptimize retrieved optimization.
:: Read Links:
:: http://support.route4me.com/route-planning-help.php?id=manual11:tutorial2:chapter7
:: http://support.route4me.com/route-planning-help.php?id=manual11:tutorial3:chapter12

ECHO ON

curl -o file1.txt -g -k -X GET "%URL%?route_id=%routeid%&api_key=%apikey%&target_date_string=%scheduled_data%&timezone_offset_minutes=%tz_minutes%" 

timeout /t 30