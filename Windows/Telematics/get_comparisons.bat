@ECHO OFF

SET url=https://telematics.route4me.com/api/vendors.php
SET apikey=11111111111111111111111111111111
SET "vendors=55,56,57"
SET "jsonfile=get_comparisons_RESPONSE.json"

:: The example refers to the process of comparison the telematics vendors.

:: ==== Get JSON response file of the selected vendors ==================

ECHO ON
curl -o %jsonfile% -g -k -X GET "%url%?api_key=%apikey%&vendors=%vendors%"

timeout /t 10

:: ==== Read response JSON file and make comparison CSV file ============

:: jq-win64 is a JSON parser for batch scripts.  Manual: https://stedolan.github.io/jq/manual/

SET "filter_file=get_comparisons_filter.txt"

type "%jsonfile%" | jq-win64 --raw-output -f %filter_file% >"get_comparison.csv"

timeout /t 30
