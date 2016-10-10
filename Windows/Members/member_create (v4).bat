@ECHO OFF

SET url=https://route4me.com/api.v4/user.php
SET apikey=3E7F2F233DB726CF36E9610863E4727A
SET email=olllandia654@gmail.com

ECHO ON

curl -o file1.txt -g -H "Content-Type: application/json" -X POST -k -d "@member_create_v4_data.json" "%url%?api_key=%apikey%"

timeout /t 30