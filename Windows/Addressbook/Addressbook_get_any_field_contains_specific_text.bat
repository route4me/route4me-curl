ECHO OFF
SET url=http://api.route4me.com/api.v4/address_book.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting all Addressbook contacts, any field which of contains searched text - except of metadata fields.
 
SET search_text="technology"

ECHO ON

curl -o file1.txt -X GET "%url%?api_key=%apikey%&query=%search_text%&offset=0&limit=20"

timeout /t 30