@ECHO OFF

:: Add a note to the route using of file uploading

SET url=https://api.route4me.com/actions/addRouteNotes.php
SET apikey=11111111111111111111111111111111
SET routeid=7FE9E1F17371A76869EB808C1CB619AB
SET addrid=196888777
SET dev_lat=41.315116882324
SET dev_lng=-81.558746337891
SET dev_type=web
SET "filename=Monologue.mp3"

ECHO ON

curl -o file1.txt -g -k -X POST -F "strFilename=@%filename%" "%url%?api_key=%apikey%&route_id=%routeid%&address_id=%addrid%&dev_lat=%dev_lat%&dev_lng=%dev_lng%&device_type=%dev_type%&strUpdateType=ANY_FILE"

timeout /t 30