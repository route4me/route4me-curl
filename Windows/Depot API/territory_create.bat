@ECHO OFF
SET url=https://route4me.com/depot.php/territory/api/v1.0/territory/
SET apikey=11111111111111111111111111111111

:: Parmeter List:
:: vendors - formData. Required
:: stores - formData. Required
:: distance - formData
:: routes - formData
:: output_file - formData
:: json_output - formData
:: uuid - formData

SET "vendors=Collona LLtd"

ECHO ON

:: Examlple refers to cerating territory object with list of geographic names

curl -o file1.txt -k -g -X POST -F "vendors=%vendors%" "%url%?api_key=%apikey%" 

timeout /t 30