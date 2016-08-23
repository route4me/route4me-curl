ECHO OFF

setlocal enableDelayedExpansion

SET url=https://www.route4me.com/api.v4/address_book.php
SET apikey=11111111111111111111111111111111

:: Example demostrates search for all Addressbook contacts, any fields which of contains search_text value.

SET search_text=Glass package
SET "search_text=!search_text: =%%20!"

ECHO ON

curl -o file1.txt -k -X GET "%url%?api_key=%apikey%&query=%search_text%"

timeout /t 30