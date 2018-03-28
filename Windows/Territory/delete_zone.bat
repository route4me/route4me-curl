@ECHO OFF

SET url=https://api.route4me.com/api.v4/territory.php
SET apikey=11111111111111111111111111111111
SET terid1=8506E4725A006B59D5CA2EA375E08B97

:: The example refers to the process of removing a territory zone from an user's account.

ECHO ON

curl -o file1.txt -g -k -X DELETE "%url%?api_key=%apikey%&territory_id=%terid1%"

timeout /t 30