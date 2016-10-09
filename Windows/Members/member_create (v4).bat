@ECHO OFF

SET url=https://route4me.com/api.v4/user.php
SET apikey=11111111111111111111111111111111
SET email=skrynkovskyy2@gmail.com

ECHO ON

::curl -o file1.txt -g -H "Content-Type: application/json" -X POST -k -d"member_create_v4_data.json" "%url%?api_key=%apikey%"

curl -o file1.txt -g -H "Content-Type: multipart/form-data;" -X POST -k ^
-F "member_first_name=Clay" ^
-F "member_last_name=Abraham" ^
-F "member_phone=571-259-5939" ^
-F "member_type=SUB_ACCOUNT_DISPATCHER" ^
-F "member_email=%email%" ^
-F "member_password=123456" ^
-F "OWNER_MEMBER_ID=1116" ^
-F "member_zipcode=22102" ^
-F "preferred_language=en" ^
-F "preferred_units=ml" ^
"%url%?api_key=%apikey%"

timeout /t 30