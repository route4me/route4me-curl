@ECHO OFF

SET url=http://api.route4me.com/api.v4/address_book.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of creating new scheduled location in an address book belonged to an user.

ECHO ON

:: Add a location, scheduled daily.
curl -o add_scheduled_location1_RESPONSE.json -g -X POST -H "Content-Type: application/json" -d "@add_scheduled_location_data_1.json" "%url%?api_key=%apikey%"

:: Add a location, scheduled weekly.
START /WAIT  curl -o add_scheduled_location2_RESPONSE.json -g -X POST -H "Content-Type: application/json" -d "@add_scheduled_location_data_2.json" "%url%?api_key=%apikey%"

:: Add a location, scheduled monthly (dates mode).
START /WAIT  curl -o add_scheduled_location3_RESPONSE.json -g -X POST -H "Content-Type: application/json" -d "@add_scheduled_location_data_3.json" "%url%?api_key=%apikey%"

:: Add a location, scheduled monthly (nth mode).
START /WAIT  curl -o add_scheduled_location4_RESPONSE.json -g -X POST -H "Content-Type: application/json" -d "@add_scheduled_location_data_4.json" "%url%?api_key=%apikey%"

:: Add a location, scheduled annually.
START /WAIT  curl -o add_scheduled_location5_RESPONSE.json -g -X POST -H "Content-Type: application/json" -d "@add_scheduled_location_data_5.json" "%url%?api_key=%apikey%"

:: Add a location with the daily scheduling and blacklist.
START /WAIT  curl -o add_scheduled_location6_RESPONSE.json -g -X POST -H "Content-Type: application/json" -d "@add_scheduled_location_data_6.json" "%url%?api_key=%apikey%"

timeout /t 30