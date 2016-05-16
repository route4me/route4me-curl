ECHO OFF
SET url=http://www.route4me.com
SET apikey=11111111111111111111111111111111

ECHO ON

curl -o file1.txt -X GET "%url%/api.v4/address_book.php?api_key=%apikey%&offset=0&limit=10"

timeout /t 30