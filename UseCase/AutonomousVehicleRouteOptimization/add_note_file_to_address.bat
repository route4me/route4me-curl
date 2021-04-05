@ECHO OFF

:: Add a note to the route using of file uploading

SET url=https://api.route4me.com/actions/addRouteNotes.php
SET apikey=11111111111111111111111111111111
SET routeid=27AF2455563AAB57650CE5696FBEC199
SET addrid=208797872
SET dev_lat=41.003671512008
SET dev_lng=-81.598461046815
SET dev_type=web
SET "filename=flags.pdf"

ECHO ON

curl -o file1.txt -g -k -X POST -F "strFilename=@%filename%" "%url%?api_key=%apikey%&route_id=%routeid%&address_id=%addrid%&dev_lat=%dev_lat%&dev_lng=%dev_lng%&device_type=%dev_type%&strUpdateType=ANY_FILE"

timeout /t 30