@ECHO OFF

setlocal enableDelayedExpansion

SET url=https://www.route4me.com/actions/merge_routes.php
SET apikey=1D479A8464677D9FC054EB7D00B046D2
SET route_destination_id=167899059
SET route_ids=56E8F6BF949670F0C0BBAC00590FD116,A6DAA07A7D4737723A9C85E7C3BA2351
SET "depot_address=11921 N Dickinson Dr, Fredericksburg, VA 22407, USA"
SET "remove_origin=false"
SET depot_lat=38.285804
SET depot_lng=-77.555054

ECHO ON

:: The example refers to the process of merging of the two routes into one route.
:: Attention - this function requires clarification, it doesn't work properly. Will be updated soon.

curl -o file1.txt -g -k -H "multipart/form-data" -X POST ^
-F "route_ids=%route_ids%" ^
-F "depot_address=%depot_address%" ^
-F "remove_origin=%remove_origin%" ^
-F "depot_lat=%depot_lat%" ^
-F "depot_lng=%depot_lng%" ^
"%url%?api_key=%apikey%"

timeout /t 30