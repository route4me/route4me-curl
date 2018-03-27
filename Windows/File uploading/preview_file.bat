@ECHO OFF
SET url=https://api.route4me.com/actions/upload/csv-xls-preview.php
SET apikey=11111111111111111111111111111111
SET format=json
SET upload_id=b2130b5fc36ae1109ef63b6db73781f6

ECHO ON

curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%&strUploadID=%upload_id%&format=json" 

timeout /t 30