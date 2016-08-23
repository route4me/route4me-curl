ECHO OFF

setlocal enableDelayedExpansion

SET url=https://www.route4me.com/api.v4/address_book.php
SET apikey=11111111111111111111111111111111

:: Example demostrates search for all Addressbook contacts, any fields which of contains search_text value.

SET search_text=Las Vegas
SET "search_text=!search_text: =%%20!"
SET offset=0
SET limit=40

ECHO ON

curl -o file1.txt -k -X GET "%url%?api_key=%apikey%&query=%search_text%&member_id=1&offset=%offset%&limit=%limit%"

timeout /t 30