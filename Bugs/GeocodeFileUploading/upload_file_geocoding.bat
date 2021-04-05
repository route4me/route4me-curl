@ECHO OFF

SET url=https://api.route4me.com/actions/upload/csv-xls-geocode.php
SET apikey=11111111111111111111111111111111
SET upload_id=7f371a10cc5318a732b1cdaa5bbc79b5

ECHO ON

curl -o file1.txt -g -k -X POST "%url%?api_key=%apikey%&strUploadID=%upload_id%" 

:: In more complex case, yo can define valid and ignore column names:

:: curl -o file1.txt -g -k -X POST -d "@upload_file_geocoding_data.json" "%url%?api_key=%apikey%&strUploadID=%upload_id%" 

timeout /t 30