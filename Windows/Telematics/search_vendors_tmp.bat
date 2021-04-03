@ECHO OFF

SET url=https://telematics.route4me.com/api/vendors.php
SET apikey=11111111111111111111111111111111
:: Accepted values for the parameter size: global, regional, local
SET size=global
:: Accepted values for the parameter is_integrated: 1, 0
SET is_integrated=1
SET feature=Satellite
SET country=GB
SET search=Fleet
SET page=1
SET per_page=15
SET "outfile=get_comparisons_RESPONSE.json"

:: The example refers to the process of searching the telematics vendors by sending HTTP parameters.

ECHO ON

type "%outfile%" | jq-win64 --raw-output -f get_comparisons_filter.txt >"get_comparison.csv"

timeout /t 30