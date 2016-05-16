@ECHO OFF
SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111

ECHO ON
curl -o file1.txt -g -k -X POST -d '@delete_routes_data.json' "%URL%/actions/delete_routes.php?api_key=%apikey%" 

timeout /t 30