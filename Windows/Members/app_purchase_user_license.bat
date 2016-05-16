@ECHO OFF
SET url=https://www.route4me.com/api/member/user_license.php
SET apikey=11111111111111111111111111111111

ECHO ON

curl -o file1.txt -g -X POST -k -d '@app_purchase_user_license_data.json' "%URL%?api_key=%apikey%" 

timeout /t 30