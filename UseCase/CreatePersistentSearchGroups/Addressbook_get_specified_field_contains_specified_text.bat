ECHO OFF
SET url=https://www.route4me.com/api.v4/address_book.php
SET apikey=11111111111111111111111111111111

:: Example demostrates search for all Addressbook contacts, any specified fields which of contains search_text value. The result will contain only fields listed in the parameter 'fields'

SET search_text="peter"
SET fields="first_name,address_email"
SET offset=0
SET limit=20

ECHO ON

curl -o file1.txt -k -X GET "%url%?api_key=%apikey%&query=%search_text%&fields=%fields%&offset=%offset%&limit=%limit%"

timeout /t 30