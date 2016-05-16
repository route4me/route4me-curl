@ECHO OFF
SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111

ECHO ON

:: This task requires email provider
curl -o file1.txt -g -k -X POST -d '@new_account_registration_data.json' "%URL%/actions/register_action.php?api_key=%apikey%" 

timeout /t 30