# Comparison of the results from web UI, curl (cmd) and Excel add-in

This article was written because of great interest among QA staff and Route4Me users about compability results from defferent applications:
- web UI. Results of route optimization on the official website: http://www.route4me.com;
- curl (cmd). Results of route optimization using curl (cmd);
- Excel add-in. Results of route optimizatin using Excel add-in.

For the aplications we prepared input data with similar content:

## 1. Single Driver Multiple Time WIndows

**Parameters:**
```
"parameters": {
	"algorithm_type": 1,
	"store_route": false,
	"route_name": "Single Driver Multiple TimeWindows 12 Stops",
	"route_time": 25200,
	"optimize": "Time",
	"distance_unit": "mi",
	"device_type": "web",
	"vehicle_max_distance_mi": 1000,
	"vehicle_capacity": 1,
	"rt": true,
	"route_max_duration": 86400,
	"travel_mode": "Driving"
}
```

**Addresses:**
```
"addresses": [
	{
		"address": "1201 Holcombe Blvd, Houston, TX 77030, USA",
		"alias": "Start",
		"is_depot": true, 
		"lat":  29.7063457,
		"lng": -95.3999784,
		"time_window_start": null,
		"time_window_end": null,
		"time_window_start_2": null,
		"time_window_end_2": null,
		"time": null
        },
	{ 
		"address": "1220 Holcombe Blvd, Houston, TX, 77030",
		"alias": "Betty  Thornburg",
		"lat":  29.7055795,
		"lng": -95.400029,
		"time_window_start": 28800,
		"time_window_end": 43200,
		"time": 300
        },
	{ 
		"address": "6651 Main Street, Houston, TX, 77030",
		"alias": "Corey  Barker",
		"lat":  29.708566,
		"lng": -95.4024123,
		"time_window_start": 32400,
		"time_window_end": 39600,
		"time": 100
        },
	{ 
		"address": "6100 Main St, Houston, TX, 77005",
		"alias": "Evon  Caldwell",
		"lat":  29.7184075,
		"lng": -95.3980766,
		"time_window_start": 28800,
		"time_window_end": 54000,
		"time": 300
        },
	{ 
		"address": "1520 Louisiana St, Houston, TX 77002, USA",
		"alias": "Jody  McDougall",
		"lat":  29.7543582,
		"lng": -95.3708402,
		"time_window_start": 32400,
		"time_window_end": 64800,
		"time": 300
        },
	{ 
		"address": "6633 Travis St, Houston, TX, 77030-1308",
		"alias": "Nancy  Chiu",
		"lat":  29.709903,
		"lng": -95.403276,
		"time_window_start": 30600,
		"time_window_end": 57600,
		"time": 300
        },
	{ 
		"address": "4001 Hazard St, Houston, TX 77098, USA",
		"alias": "Patrick  Allison",
		"lat":  29.7366671,
		"lng": -95.4068916,
		"time_window_start": 28800,
		"time_window_end": 54000,
		"time": 300
        },
	{ 
		"address": "6720 Bertner Ave, Houston, TX, 77030",
		"alias": "Sandra  Sabatini",
		"lat":  29.707876,
		"lng": -95.400405,
		"time_window_start": 23400,
		"time_window_end": 64800,
		"time": 300
        },
	{ 
		"address": "1515 Holcombe Blvd, Houston, TX, 77030-4000",
		"alias": "Tarsha  Wilson",
		"lat":  29.7071962,
		"lng": -95.3966905,
		"time_window_start": 25200,
		"time_window_end": 61200,
		"time": 300
        },
	{ 
		"address": "1 Baylor Plaza, Houston, TX, 77030",
		"alias": "Tricia  Magana",
		"lat":  29.7105286,
		"lng": -95.3962414,
		"time_window_start": 21600,
		"time_window_end": 46800,
		"time": 300
        },
	{ 
		"address": "1220 Blalock Rd, Ste 150, Houston, TX, 77055",
		"alias": "William  Espinoza",
		"lat":  29.7903957,
		"lng": -95.5213012,
		"time_window_start": 27000,
		"time_window_end": 64800,
		"time": 300
        }
	]
```

*Note:* *These addresses are not allowed for demo account with api_key=11111111111111111111111111111111*.

## Results

### web UI

Response JSON file - [web UI Single Driver Multiple TW ](https://github.com/route4me/route4me-curl/blob/master/QA%20Related/Applications%20results%20compability/SD_multiple_TW_QA_webUI_RESPONSE.json)

The route one the map.

![alt text](https://github.com/route4me/route4me-curl/blob/master/QA%20Related/Applications%20results%20compability/SD_multiple_TW_QA_webUI.png "web UI - Single Driver Multiple TW, 12 Stops")

### curl (cmd)

Response JSON file - [curl (cmd) Single Driver Multiple TW ](https://github.com/route4me/route4me-curl/blob/master/QA%20Related/Applications%20results%20compability/SD_multiple_TW_curl_RESPONSE.json)

The route one the map.

![alt text](https://github.com/route4me/route4me-curl/blob/master/QA%20Related/Applications%20results%20compability/SD_multiple_TW_curl.png "curl (cmd) - Single Driver Multiple TW, 12 Stops")

### Excel add-in

Response JSON file - [Excel add-in Single Driver Multiple TW ](https://github.com/route4me/route4me-curl/blob/master/QA%20Related/Applications%20results%20compability/SD_multiple_TW_Excel_RESPONSE.json)

The route one the map.

![alt text](https://github.com/route4me/route4me-curl/blob/master/QA%20Related/Applications%20results%20compability/SD_multiple_TW_Excel_addin.png "Excel add-in - Single Driver Multiple TW, 12 Stops")

### Conclusion

The results from **curl (cmd)** and **Excel add-in** are **equal**. Ther result from **web UI** is **same** but movement on the route is **opposite**.
***

## 2. Multiple Driver Multiple Time Windows With Vehicle Capacity = 1

For this optimization type was changed only the parameter **algorithm_type**:
```
algorithm_type=3
```

The addresses are same as in the previous optimization type.

## Results

### web UI

In case of web UI we got 1 route.

Response JSON file - [web UI Multiple Driver Multiple TW ](https://github.com/route4me/route4me-curl/blob/master/QA%20Related/Applications%20results%20compability/MD_multiple_TW_cap_1_web_UI_RESPONSE.json)

The route one the map.

![alt text](https://github.com/route4me/route4me-curl/blob/master/QA%20Related/Applications%20results%20compability/MD_multiple_TW_QA_webUI_cap_1.png "web UI - Multiple Driver Multiple TW, 12 Stops")

### curl (cmd)

Was got 10 routes - from depot to other stops one by one.

Response JSON file - [curl (cmd) Multiple Driver Multiple TW, Vehicle Capacity = 1 ](https://github.com/route4me/route4me-curl/blob/master/QA%20Related/Applications%20results%20compability/MD_multiple_TW_cap_1_curl_RESPONSE.json)

### Excel add-in

Was got 10 routes - from depot to other stops one by one.

Response JSON file - [Excel add-in Multiple Driver Multiple TW, Vehicle Capacity = 1 ](https://github.com/route4me/route4me-curl/blob/master/QA%20Related/Applications%20results%20compability/MD_multiple_TW_cap_1_Excel_RESPONSE.json)

### Conclusion

The results from the **curl (cmd)** and **Excel add-in** are equal again. The **web UI** result is different - it seems low value of the parameter **vehicle_capacity** didn't affected on the result - altough, in the response file we see that 
```
vehicle_capacity=1
```
***

## 3. Multiple Driver Multiple Time Windows With Vehicle Capacity = 30

The parameters and addresses are same except the parameter **vehicle_capacity**
```
vehicle_capacity=30
```

## Results

### web UI

Results from web UI is same as vehicle_capacity=1

Response JSON file - [web UI Single Driver Multiple TW, Vehicle Capacity = 30 ](https://github.com/route4me/route4me-curl/blob/master/QA%20Related/Applications%20results%20compability/MD_multiple_TW_cap_30_web_UI_RESPONSE.json)

The route one the map.

![alt text](https://github.com/route4me/route4me-curl/blob/master/QA%20Related/Applications%20results%20compability/MD_multiple_TW_QA_webUI_cap_30.png "web UI - Multiple Driver Multiple TW, 12 Stops, capacity=30")

### curl (cmd)

Response JSON file - [curl (cmd) Single Driver Multiple TW, Vehicle Capacity = 30 ](https://github.com/route4me/route4me-curl/blob/master/QA%20Related/Applications%20results%20compability/MD_multiple_TW_cap_30_curl_RESPONSE.json)

The route one the map.

![alt text](https://github.com/route4me/route4me-curl/blob/master/QA%20Related/Applications%20results%20compability/MD_multiple_TW_QA_curl_cap_30.png "curl (cmd) - Multiple Driver Multiple TW, 12 Stops, capacity=30")

### Excel add-in

Response JSON file - [Excel add-in Single Driver Multiple TW, Vehicle Capacity = 30 ](https://github.com/route4me/route4me-curl/blob/master/QA%20Related/Applications%20results%20compability/MD_multiple_TW_cap_30_Excel_RESPONSE.json)

The route one the map.

![alt text](https://github.com/route4me/route4me-curl/blob/master/QA%20Related/Applications%20results%20compability/MD_multiple_TW_QA_Excel_cap_30.png "Excel add-in - Multiple Driver Multiple TW, 12 Stops, capacity=30")

### Conclusion

The results from **curl (cmd)** and **Excel add-in** are **equal**. Ther route shape from **web UI** is **same**, but the sequence of the addresses is different.
***

## Summary

The name for the parameter **algorithm=3** is CVRP_TW_SD - **Capacitated Vehicle Routing Problem, Time Windows, Single Depot**. Of course, this algorithm assumes that we should pay attention to the parameter **vehicle_capacity** and set it to right value. If we'll set it to 1, algorithm will be forced to generate almost as many routes as many stops are in the optimization.
***

## Apendix

Please, pay attention to this table, which shows corespodence between API parameters and web UI field names.

| web UI field | API parameter |
|:-----------|:------------|
| Maximum Pieces per Route | vehicle_capacity |
|Maximum Weight per Vehicle|vehicle_max_cargo_weight|
|Maximum Volume per Route|vehicle_max_cargo_volume|
|Maximum Distance per Vehicle or Route|vehicle_max_distance_mi|
|Maximum Number of Routes/Vehicles|parts|
|Maximum Stops per Route|max_tour_size|


