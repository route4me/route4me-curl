## Make An Address Book Location Routed

The address book locations are becoming routed after Hybrid Optimization. But how to make it routed manualy?

Suppose you have a generated route:<br>
**route_id=8709A02ED54F568894E72E7FF0EB672E**,

which includes the address:
 
**route_destination_id=248379455**<br>
**3634 W Market St, Fairlawn, OH 44333**

Later you discovered that you have this address in the your Route4Me account address book:<br>
**address_id=18553493**

And you want to make this address book location routed. For this purpose you can use route destination update method and put into payload this parameter:
```
{
	"contact_id": 18553493
}
```

Now you can search for the routed address book locations and see that the location above is routed.

### Files in this folder:<br>

#### Update a route destination
-  [update_route_destination.bat](https://github.com/route4me/route4me-curl/blob/master/Customer_Related/Routed%20Addressbook%20Locations/Addressbook_display_routed.bat) - the script file for updating of the route destination;

- [update_route_destination_data.json](https://github.com/route4me/route4me-curl/blob/master/Customer_Related/Routed%20Addressbook%20Locations/update_route_destination_data.json) - JSON payload for the route destination updating;

- [update_route_destination_RESPONSE.json](https://github.com/route4me/route4me-curl/blob/master/Customer_Related/Routed%20Addressbook%20Locations/update_route_destination_RESPONSE.json) - the response JSON file from the route destination udating process.

#### Get the routed address book locations

- [Addressbook_display_routed.bat](https://github.com/route4me/route4me-curl/blob/master/Customer_Related/Routed%20Addressbook%20Locations/Addressbook_display_routed.bat) - the script file for getting routed address book locations;

- [Addressbook_display_routed_RESPONSE.json](https://github.com/route4me/route4me-curl/blob/master/Customer_Related/Routed%20Addressbook%20Locations/Addressbook_display_routed_RESPONSE.json) - the response JSON file from the query of the routed address book lcations.

