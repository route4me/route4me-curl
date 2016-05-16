@ECHO OFF
SET url=http://www.route4me.com
SET apikey=11111111111111111111111111111111

ECHO ON

curl -o file1.txt -g -X POST -H "Content-Type: application/json" -d "@new_address_data.json" "%url%/api.v4/address_book.php?api_key=%apikey%"

timeout /t 30