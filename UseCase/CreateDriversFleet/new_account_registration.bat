@ECHO OFF

SET url=https://www.route4me.com/actions/register_action.php
SET apikey=11111111111111111111111111111111
SET plan=free

:: The example refers to a registration new Route4Me account.

ECHO ON

curl -k -X POST -H "Content-Type: multipart/form-data;" -F "strIndustry=Gifting" -F "strFirstName=Olman" -F "strLastName=Oland" -F "strEmail=thewelco@gmail.com" -F "format=json" -F "chkTerms=1" -F "device_type=web" -F "strPassword_1=111111" -F "strPassword_2=111111" "%url%?plan=%plan%&business_member_type=5"

timeout /t 30