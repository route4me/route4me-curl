@ECHO OFF

SET url=https://www.route4me.com/actions/route/move_route_destination.php
SET apikey=11111111111111111111111111111111

:: address recipient route ID
SET trid=4B3431CDBFECD1A6949C9C9B8475F5A3

:: The destination to be moved - address "434 N 26TH STREET #2, Louisville, KY, 40212" in the route "4B3431CDBFECD1A6949C9C9B8475F5A3", sequence # = 2
SET rdi=188936049

:: ID of the destination n recipient route, after which will be inserted moved destination. "117 FOUNT LANDING CT, Louisville, KY, 40212"
SET adi=188936068

ECHO ON

curl -o file1.txt -g -X POST -k -H "Content-Type: multipart/form-data;" -F "to_route_id=%trid%" -F "route_destination_id=%rdi%" -F "after_destination_id=%adi%" "%url%?api_key=%apikey%"

timeout /t 30