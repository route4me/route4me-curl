@ECHO OFF

SET url=https://api.route4me.com/actions/register_action.php
SET apikey=11111111111111111111111111111111
SET plan=enterprise_plan

::The example refers to a registration new Route4Me account.

ECHO ON

curl -o file1.txt -k -X POST -H "Content-Type: multipart/form-data;" -F "strIndustry=Gifting" -F "strFirstName=Olman" -F "strLastName=Oland" -F "strEmail=ololol@outlook.com" -F "format=json" -F "chkTerms=1" -F "device_type=web" -F "strPassword_1=111111" -F "strPassword_2=111111" "%url%?plan=%plan%"

timeout /t 30