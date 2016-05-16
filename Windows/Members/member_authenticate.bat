@ECHO OFF
SET url=http://www.route4me.com
SET apikey=11111111111111111111111111111111

ECHO ON

:: This task requires email provider
curl -o file1.txt -g -X POST -d '@member_authenticate_data.json' "%URL%/actions/authenticate.php?api_key=%apikey%" 

timeout /t 30