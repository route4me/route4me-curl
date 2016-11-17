@ECHO OFF

setlocal enableDelayedExpansion

SET url=https://www.route4me.com/actions/merge_routes.php
SET apikey=11111111111111111111111111111111
SET "route_ids=E819198B0D10364DD0AFC2944EAB3F17,F6BF7DC230A12D856DC78BBCB26F37D1"
SET "depot_address=559 W Aurora Rd, Northfield, OH 44067"
SET "depot_address=!depot_address: =%%20!"
SET remove_origin=false
SET depot_lat=41.315116882324
SET depot_lng=-81.558746337891

ECHO ON
:: curl -o file1.txt -g -k -H "Content-Type: application/x-www-form-urlencoded" -X POST -d '@merge_route_data.json' "%url%?api_key=%apikey%"

curl -o file1.txt -g -k -H "multipart/form-data" -X POST ^
-F "route_ids=%route_ids%" ^
-F "depot_address=%depot_address%" ^
-F "remove_origin=%remove_origin%" ^
-F "depot_lat=%depot_lat%" ^
-F "depot_lng=%depot_lng%" ^
"%url%?api_key=%apikey%"

timeout /t 30