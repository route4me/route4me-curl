ECHO OFF
SET url=https://api.route4me.com/api.v4/address_book.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting limited number of the addressbook contacts, any specified fields which of contains searched text.
:: The successful response will contain only fields listed in the parameter 'fields'

SET search_text="David"
SET fields="first_name,address_email"
SET offset=0
SET limit=20

ECHO ON

curl -o file1.txt -k -X GET "%url%?api_key=%apikey%&query=%search_text%&fields=%fields%&offset=%offset%&limit=%limit%"

timeout /t 30