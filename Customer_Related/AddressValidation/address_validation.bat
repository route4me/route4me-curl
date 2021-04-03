@ECHO OFF
setlocal enableDelayedExpansion

:: Example refers to the process of an address validation

SET url=https://www.route4me.com/api/address.php
SET format=xml
SET "address=448 MAIN ST LYNFIELD MA 01940"
SET detailed=true

SET "address=!address: =%%20!"

curl -o file1.txt -g -X GET -k  "%url%?format=%format%&address=%address%&detailed=%true%&&quality=2"

timeout /t 30