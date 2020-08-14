@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/route-destinations

SET apikey=11111111111111111111111111111111

SET routeid=5C15E83A4BE005BCD1537955D28D51D7
SET destinationId=/542271197

:: The example refers to the process of removing an address from a route.

ECHO ON

curl -o remove_route_destination_RESPONSE.json -g -X DELETE -k "%base_url%%endpoint%%destinationId%?api_key=%apikey%"

timeout /t 30