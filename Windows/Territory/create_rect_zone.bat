@ECHO OFF
SET url=https://www.route4me.com/api.v4/territory.php
SET apikey=11111111111111111111111111111111
SET terid=03C0330958139E3EDF61EFFCEFBBD64E

ECHO ON

curl -o file1.txt -g -k -X POST -d '@create_rect_zone_data.json' "%url%?api_key=%apikey%&territory_id=%terid%"

timeout /t 30