#!/bin/bash

url=https://www.route4me.com/actions/merge_routes.php
apikey=11111111111111111111111111111111
route_destination_id=167899059
route_ids="56E8F6BF949670F0C0BBAC00590FD116,A6DAA07A7D4737723A9C85E7C3BA2351"
depot_address="11921 N Dickinson Dr, Fredericksburg, VA 22407, USA"
remove_origin=false
depot_lat=38.285804
depot_lng=-77.555054

ECHO ON

# The example refers to the process of merging of the two routes into one route.
# Attention - this function requires clarification, it doesn't work properly. Will be updated soon.

curl -o file1.txt -g -k -H "multipart/form-data" -X POST \
-F "route_ids=$route_ids" \
-F "depot_address=$depot_address" \
-F "remove_origin=$remove_origin" \
-F "depot_lat=$depot_lat" \
-F "depot_lng=$depot_lng" \
"$url%?api_key=$apikey"

echo "Finished..."

sleep 15