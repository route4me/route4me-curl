@ECHO OFF
SET url=https://45.55.208.13:443/street_data
SET apikey=11111111111111111111111111111111
SET offset=0
SET limit=20

ECHO ON

:: get street data with limit and offset --- Attention, this doesn't work, needs clarification
curl -o file1.txt -g -X GET -k "%URL%/%offset%/%limit%/?api_key=%apikey%"

timeout /t 30