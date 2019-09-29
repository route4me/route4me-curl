@ECHO OFF

SET url=https://api.route4me.com/actions/addRouteNotes.php

SET apikey=11111111111111111111111111111111
SET routeID=D1DF6BAF991E3CDC00134C28D27AEC12
SET routeDestinationID=289863166
SET format=json
SET dev_lat=-37.8207115
SET dev_lng=144.9581931

:: The example refers to the process of adding a note custom type to a route destination by sending HTTP parameters.

ECHO ON

curl -o add_custom_note_to_route_data_RESPONSE.json -g -k -X POST -d "custom_note_type[11]=slippery&custom_note_type[10]=Backdoor&strUpdateType=dropoff&strNoteContents=test1111" "%url%?api_key=%apikey%&route_id=%routeID%&address_id=%routeDestinationID%&format=%format%&dev_lat=%dev_lat%&dev_lng=%dev_lng%"

timeout /t 30
