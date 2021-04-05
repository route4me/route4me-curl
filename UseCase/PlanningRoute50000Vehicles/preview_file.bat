@ECHO OFF
SET url=https://api.route4me.com/actions/upload/csv-xls-preview.php

SET apikey=11111111111111111111111111111111
SET format=json
SET upload_id=9c86efe1e3d07763e947f921e84175c9

ECHO ON

curl -o file1.txt -g -k -X GET "%url%?api_key=%apikey%&strUploadID=%upload_id%&sheet=0&limit=1500&format=json" 

timeout /t 30