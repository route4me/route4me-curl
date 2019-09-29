#!/bin/bash

# The callback url was created on this site: https://requestb.in
# This URL expired in few days.
# To run this please update the optimized_callback_url creating
# one link in the page mentioned above.


url=https://api.route4me.com/api.v4/optimization_problem.php
api_key=11111111111111111111111111111111
optimized_callback_url=https://requestb.in/p59ihlp5


curl -o create_new_optimization_RESPONSE.json -k -X POST -d "@create_new_optimization_data.json" "$url?api_key=$api_key&optimized_callback_url=$optimized_callback_url"
