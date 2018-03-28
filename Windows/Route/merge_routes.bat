@ECHO OFF

setlocal enableDelayedExpansion

SET url=https://api.route4me.com/actions/merge_routes.php
SET apikey=11111111111111111111111111111111
SET route_destination_id=167899059
SET route_ids=807D38F914B27A7E9B05EDF0E1BE4014,F9165689AEB9818ED61AF3CC1C759AE4
SET "depot_address=10180 Dyer St, El Paso, TX 79924, USA"
SET "remove_origin=false"
SET depot_lat=31.9061405
SET depot_lng=-106.4033899

ECHO ON

:: The example refers to the process of merging of the two routes into one route.

curl -o merge_routes_RESPONSE.json -g -k -H "multipart/form-data" -X POST ^
-F "route_ids=%route_ids%" ^
-F "depot_address=%depot_address%" ^
-F "remove_origin=%remove_origin%" ^
-F "depot_lat=%depot_lat%" ^
-F "depot_lng=%depot_lng%" ^
"%url%?api_key=%apikey%"

timeout /t 30