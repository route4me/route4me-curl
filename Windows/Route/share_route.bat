@ECHO OFF
SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111
SET routeid=3A2DD89E6E1A044B2098AD1313E3138C

ECHO ON
::will work only in OS with email provider
curl -o file1.txt -g -X POST -k -d 'email_for_route_sharing.json' "%URL%/actions/route/share_route.php?api_key=%apikey%&route_id=%routeid%&response_format=json" 

timeout /t 30