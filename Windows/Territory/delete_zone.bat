@ECHO OFF
SET url=https://www.route4me.com/api.v4/territory.php
SET apikey=11111111111111111111111111111111
SET terid1=8506E4725A006B59D5CA2EA375E08B97

ECHO ON

curl -o file1.txt -g -k -X DELETE "%url%?api_key=%apikey%&territory_id=%terid1%"

timeout /t 30