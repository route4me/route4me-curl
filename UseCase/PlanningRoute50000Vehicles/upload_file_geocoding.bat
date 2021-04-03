@ECHO OFF

SET url=https://www.route4me.com/actions/upload/csv-xls-geocode.php
SET apikey=11111111111111111111111111111111
SET upload_id=9c86efe1e3d07763e947f921e84175c9

ECHO ON

curl -o file1.txt -g -k -X POST "%url%?api_key=%apikey%&strUploadID=%upload_id%" 

:: In more complex case, yo can define valid and ignore column names:

timeout /t 30