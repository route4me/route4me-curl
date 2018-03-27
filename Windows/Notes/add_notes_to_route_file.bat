@ECHO OFF

SET url=https://api.route4me.com/actions/addRouteNotes.php

SET apikey=11111111111111111111111111111111
SET routeid=5C15E83A4BE005BCD1537955D28D51D7

SET addrid=162916895
SET dev_lat=33.132675170898
SET dev_lng=-83.244743347168

SET dev_type=web
SET updatetype=dropoff
SET "filename=notes.csv"
SET "strNoteContents=This is content with file uploading"

:: The example refers to the process of adding a note to a route with a file uploading and by sending HTTP parameters.

ECHO ON

curl -o file1.txt -g -k -X POST -F "strFilename=@%filename%" "%url%?api_key=%apikey%&route_id=%routeid%&address_id=%addrid%&dev_lat=%dev_lat%&dev_lng=%dev_lng%&device_type=%dev_type%&strUpdateType=ANY_FILE"

timeout /t 30