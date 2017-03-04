# Telematics Gateway

The Route4Me telematics gateway allows you to integrate data from third party telematics systems through the "Vehicles" section of your Route4Me account. Vehicles from connected third-party systems are automatically imported and re-synchronized into the account of the corresponding Route4Me user. Each Route4Me vehicle can then be "linked" to a vehicle that is external to Route4Me.

When tracking data is captured from a 3rd party system, then data sent to Route4Me is evaluated to determine which vehicle (by ID) is associated with this connected vehicle ID. The last-known active route for the corresponding Route4Me vehicle ID is identified, and tracking data is appended into this route's tracking history.

In this directory you can find examples for Telematics Gateway issue:

## Get a Vendor
- Script file: **get_single_vendor.bat**;
- Output file: **get_single_vendor_RESPONSE.json**.

## Get All Vendors
- Script file: **get_vendors.bat**;
- Output file: **get_vendors_RESPONSE.json**.

## Search Vendors
- Script file: **search_vendors.bat**;
- Output file: **search_vendors_RESPONSE_1.json** (search by the parameters: **size, per_page, page, is_integrated**);
- Output file: **search_vendors_RESPONSE_2.json** (search by the parameter **feature**);
- Output file: **search_vendors_RESPONSE_3.json** (search by the parameter **country**).
