@ECHO OFF

SET url=https://api.route4me.com/actions/addRouteNotes.php

SET apikey=11111111111111111111111111111111
SET routeid=DD376C7148E7FEE36CFABE2BD9978BDD

:: "2705 N River Rd, Stow, OH 44224"
SET addrid=183045812
SET dev_lat=41.145240783691
SET dev_lng=-81.410247802734
SET dev_type=web
SET updatetype=dropoff
SET content=Note example for Destination Audit Use Case

ECHO ON

curl -o file1.txt -g -k -X POST -H "Content-Type: multipart/form-data;" -F "strNoteContents=%content%" -F "strUpdateType=%dropoff%" "%url%?api_key=%apikey%&route_id=%routeid%&address_id=%addrid%&dev_lat=%dev_lat%&dev_lng=%dev_lng%&device_type=%dev_type%"

timeout /t 30