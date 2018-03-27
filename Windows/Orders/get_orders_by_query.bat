ECHO OFF
SET url=http://api.route4me.com/api.v4/order.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of the searching all Orders containing specified text in any field.

SET query="Olman"

ECHO ON

curl -o file1.txt -X GET "%url%?api_key=%apikey%&query=%query%&offset=0&limit=20"

timeout /t 30