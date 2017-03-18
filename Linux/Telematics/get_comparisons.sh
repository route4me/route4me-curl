#!/bin/bash

url=https://telematics.route4me.com/api/vendors.php
apikey=11111111111111111111111111111111
vendors="55,56,57"
jsonfile="get_comparisons_RESPONSE.json"

# The example refers to the process of comparison the telematics vendors.

# ==== Get JSON response file of the selected vendors ==================

curl -o $jsonfile -g -k -X GET "$url?api_key=$apikey&vendors=$vendors"

sleep 5

# ==== Read response JSON file and make comparison CSV file ============

# jq-win64 is a JSON parser for batch scripts.  Manual: https://stedolan.github.io/jq/manual/

filter_file="get_comparisons_filter.txt"

cat "$jsonfile" | jq --raw-output -f $filter_file >"get_comparison.csv"

echo "Finished..."

sleep 15
