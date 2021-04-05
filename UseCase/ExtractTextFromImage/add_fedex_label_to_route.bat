@ECHO OFF

:: Add a note to the route using of file uploading

SET url=https://api.route4me.com/actions/addRouteNotes.php
SET apikey=11111111111111111111111111111111
SET routeid=D68AAF9C015D8AA4A138583453CE90EB
SET addrid=196429351
SET dev_lat=41.194505989552
SET dev_lng=-81.443351581693
SET dev_type=web
SET "filename=fedex_sample_shipping_label.jpg"

ECHO ON

curl -o file1.txt -g -k -X POST -F "strFilename=@%filename%" "%url%?api_key=%apikey%&route_id=%routeid%&address_id=%addrid%&dev_lat=%dev_lat%&dev_lng=%dev_lng%&device_type=%dev_type%&strUpdateType=ANY_FILE"

timeout /t 30