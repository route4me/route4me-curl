@ECHO OFF

SET url=http://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=4728372005DE97EF9E4205852D690E34
SET rpo=Points
SET compress_path_points=true

:: The example refers to the process of getting a route with the encoded & compressed path points.
:: For a path compreesion is used Encoded Polyline Algorithm Format (see link: https://developers.google.com/maps/documentation/utilities/polylinealgorithm)
:: There are interactive decoder polyline utilities in the Internet (see link: https://developers.google.com/maps/documentation/utilities/polylineutility)

ECHO ON

curl -o file1.txt -g -X GET "%url%?route_id=%routeid%&api_key=%apikey%&route_path_output=%rpo%&compress_path_points=%compress_path_points%"

timeout /t 30