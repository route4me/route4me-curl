@ECHO OFF

SET url=https://www.route4me.com/actions/route/move_route_destination.php
SET apikey=11111111111111111111111111111111

:: address recipient route ID
SET trid=1D866267B57AA9FC35D3B2797E14CD51

SET rdi_1=188936025
SET rdi_3=188936050
SET rdi_4=188936065

SET adi_3=188936078

SET adi_1=188936051
SET adi_4=188936025


ECHO ON

curl -o file3.txt -g -X POST -k -H "Content-Type: multipart/form-data;" -F "to_route_id=%trid%" -F "route_destination_id=%rdi_3%" -F "after_destination_id=%adi_3%" "%url%?api_key=%apikey%"

START /WAIT curl -o file1.txt -g -X POST -k -H "Content-Type: multipart/form-data;" -F "to_route_id=%trid%" -F "route_destination_id=%rdi_1%" -F "after_destination_id=%adi_1%" "%url%?api_key=%apikey%"

START /WAIT curl -o file4.txt -g -X POST -k -H "Content-Type: multipart/form-data;" -F "to_route_id=%trid%" -F "route_destination_id=%rdi_4%" -F "after_destination_id=%adi_4%" "%url%?api_key=%apikey%"

timeout /t 30