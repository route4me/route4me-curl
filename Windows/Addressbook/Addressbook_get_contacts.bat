ECHO OFF
SET url=http://api.route4me.com
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting limited number of the locations from an address book belonged to an user.

ECHO ON

curl -o file1.txt -X GET "%url%/api.v4/address_book.php?api_key=%apikey%&offset=0&limit=10"

timeout /t 30