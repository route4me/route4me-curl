@ECHO OFF
SET url=https://45.55.208.13:443/street_data/
SET apikey=11111111111111111111111111111111

ECHO ON

:: get all street data
curl -o file1.txt -g -X GET -k "%URL%?api_key=%apikey%"

timeout /t 30