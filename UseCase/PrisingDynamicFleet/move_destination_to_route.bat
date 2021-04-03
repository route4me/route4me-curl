@ECHO OFF

SET url=https://www.route4me.com/actions/route/move_route_destination.php
SET apikey=11111111111111111111111111111111

:: address recipient route ID
SET trid=BAD35EEE32BFF8E20C2077AC53761BC7

:: The destination to be moved - address "3524 WHEELER AVE, Louisville, KY, 40215" in the route "5BB7EA1E6E3E4633D1299505BDAEA953", sequence # = 8
SET rdi=184611093

:: ID of the destination n recipient route, after which will be inserted moved destination. "2707 7TH ST, Louisville, KY, 40215"
SET adi=184611074

ECHO ON

curl -o file1.txt -g -X POST -k -H "Content-Type: multipart/form-data;" -F "to_route_id=%trid%" -F "route_destination_id=%rdi%" -F "after_destination_id=%adi%" "%url%?api_key=%apikey%"

timeout /t 30