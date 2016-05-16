Access Route4Me's logistics-as-a-service API using our curl SDK (Windows)
-------------------


### What does the Route4Me SDK permit me to do?
This SDK makes it easier for you use the Route4Me API, which creates optimally sequenced driving routes for many drivers.

### Who can use the Route4Me SDK (and API)?
The service is typically used by organizations who must route many drivers to many destinations. In addition to route optimization for new (future) routes, the API can also be used to analyze historical routes, and to distribute routes to field personnel.

### Who is prohibited from using the Route4Me SDK (and API)?
The Route4Me SDK and API cannot be resold or used in a product or system that competes directly with Route4Me. This means that developers cannot resell route optimization services to other businesses or developers. However, developers can integrate our route optimization SDK/API into their software applications. Developers and startups are also permitted to use our software for internal purposes (i.e. a same day delivery startup).


### How does the API/SDK Integration Work?
A Route4Me customer, integrator, or partner incorporates the Route4Me SDK or API into their code base.
Route4Me permits any paying subscriber to interact with every part of its system using it’s API.
The API is RESTful, which means that it’s web based and can be accessed by other programs and machines
The API/SDK should be used to automate the route planning process, or to generate many routes with minimal manual intervention



### Do optimized routes automatically appear inside my Route4Me account?
Every Route4Me SDK instance needs a unique API key. The API key can be retrieved inside your Route4Me.com account, inside the Settings tab called API. When a route is planned, it appears inside the corresponding Route4Me account. Because Route4Me web and mobile accounts are synchronized, the routes will appear in both environments at the same time.

### Can I test the SDK with other addresses without a valid API Key?
No. The sample API key only permits you to optimize routes with the sample address coordinates that are part of this SDK.

### Does the SDK have rate limits?
The number of requests you can make per second is limited by your current subscription plan. Typically, there are different rate limits for these core features:
Address Geocoding & Address Reverse Geocoding
Route Optimization & Management
Viewing a Route

### What is the recommended architecture for the Route4Me SDK?
There are two typical integration strategies that we recommend.  Using this SDK, you can make optimization requests and then the SDK polls the Route4Me API to detect state changes as the optimization progresses. Alternatively, you can provide a webhook/callback url, and the API will notify that callback URL every time there is a state change.

### I don't need route management or mobile capabilities. Is there a lower level Route4Me API just for the optimization engine?
Yes. Please contact support@route4me.com to learn about the low-level RESTful API.

### How fast is the route Route4Me Optimization Web Service?
Most routes having less than 200 destinations are optimized in 1 second or less.

### Can I disable optimization when planning routes?
Yes. You can send routes with optimization disabled if you want to conveniently see them on a map, or distribute them to your drivers in the order you prefer.

### Can the API be used for aerial vehicles such as drones or self-driving cars?
Yes. The API can accept lat/lng and an unlimited amount of per-address metadata. The metadata will be preserved as passthrough data by our API, so that the receiving device will have access to critical data when our API invokes a webhook callback to the device.

### Are all my optimized routes stored permanently stored in the Route4Me database?
Yes. All routes are permanently stored in the database and are no longer accessible to you after your subscription is terminated.


### Can I incorporate your API into my mobile application?
Route4Me’s route planning and optimization technology can only be added into applications that do not directly compete with Route4Me. 
This means the application’s primary capabilities must be unrelated to route optimization, route planning, or navigation.

### Can I pay you to develop a custom algorithm?
Yes

### Can I use your API and resell it to my customers?
White-labeling and private-labeling Route4Me is possible but the deal’s licensing terms vary considerably based on customer count, route count, and the level of support that Route4Me should provide to your customers.

### Does the API/SDK have TMS or EDI, or EDI translator capabilities?
Route4Me is currently working on these features but they are not currently available for sale.

### Can the API/SDK send notifications back to our system using callbacks, notifications, pushes, or webhooks?

Because Route4Me processes all routes asynchronously, Route4Me will conveniently notify the endpoint you specify as the route optimization job progresses through each state of the optimization. Every stage of the route optimization process has a unique stage id.

### Does the Route4Me API and SDK work in my country?
Route4Me.com, as well as all of Route4Me’s mobile applications use the Route4Me SDK’s and API.
Since Route4Me works globally, this means that all of Route4Me’s capabilities are available using the SDK’s in every country 


### Will the Route4Me API/SDK work in my program on the Mac, PC, or Linux?
Customers are encouraged to select their preferred operating system environment. The Route4Me API/SDK will function on any operating system that supports the preferred programming language of the customer. At this point in time, almost every supported SDK can run on any operating system.


### Does the Route4Me API/SDK require me to buy my own servers?
Route4Me has its own computing infrastructure that you can access using the API and SDKs. Customers typically have to run the SDK code on their own computers and/or servers to access this infrastructure.

### Does Route4Me have an on-premise solution?
Route4Me does not currently lease or sell servers, and does not have on-premise appliance solution. This would only be possible in exceptionally unique scenarios.


### Does the Route4Me API/SDK require me to have my own programmers?
The time required to integrate the SDK can be as little as 1 hour or may take several weeks, depending on the number of features being incorporated into the customer’s application and how much integration testing will be done by the client. A programmer’s involvement is almost always required to use Route4Me’s technology when accessing it through the API.



### Installation and Usage

Using of curl in Windows requires only to have curl.exe in folder with scripts or in certain folder, which is listed in Windows envirnoment PATH variable.


## Examples

### Single Driver Route Optimization

```curl
@ECHO OFF
:: Single Driver Round Trip

::See video tutorial here: http://support.route4me.com/route-planning-help.php?id=manual0:tutorial2:chapter1:subchapter1

SET URL=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111

ECHO ON

curl -o file1.txt -g -X POST -k -d "@single_driver_round_trip_data.json" "%URL%?api_key=%apikey%" 

timeout /t 30

The file "single_driver_round_trip_data.json" contains json data for http post request:

{
	"parameters": {
        "algorithm_type": 1,
        "device_type": "web",
        "distance_unit": "mi",
        "member_id": "1",
        "optimize": "Distance",
        "remote_ip": "0",
        "route_max_duration": 86400,
        "route_time": 0,
        "store_route": true,
        "travel_mode": "Driving",
        "vehicle_capacity": "1",
        "vehicle_max_distance_mi": "10000",
		"rt":true
    },
    "addresses": [
	  {
		"lng": -85.757308,
		"lat": 38.251698,
		"is_depot": true,
		"time": 300,
		"sequence_no": 0,
		"address": "455 S 4th St, Louisville, KY 40202"
	  },
	  {
		"lng": -85.793846,
		"lat": 38.141598,
		"is_depot": false,
		"time": 300,
		"sequence_no": 1,
		"address": "1604 PARKRIDGE PKWY, Louisville, KY, 40214"
	  },
	  {
		"lng": -85.786514,
		"lat": 38.202496,
		"is_depot": false,
		"time": 300,
		"sequence_no": 2,
		"address": "1407 MCCOY, Louisville, KY, 40215"
	  },
	  {
		"lng": -85.774864,
		"lat": 38.178844,
		"is_depot": false,
		"time": 300,
		"sequence_no": 3,
		"address": "4805 BELLEVUE AVE, Louisville, KY, 40215"
	  },
	  {
		"lng": -85.821121,
		"lat": 38.248684,
		"is_depot": false,
		"time": 300,
		"sequence_no": 4,
		"address": "730 CECIL AVENUE, Louisville, KY, 40211"
	  },
	  {
		"lng": -85.800034,
		"lat": 38.251923,
		"is_depot": false,
		"time": 300,
		"sequence_no": 5,
		"address": "650 SOUTH 29TH ST UNIT 315, Louisville, KY, 40211"
	  },
	  {
		"lng": -85.824638,
		"lat": 38.176067,
		"is_depot": false,
		"time": 300,
		"sequence_no": 6,
		"address": "4629 HILLSIDE DRIVE, Louisville, KY, 40216"
	  },
	  {
		"lng": -85.775558,
		"lat": 38.179806,
		"is_depot": false,
		"time": 300,
		"sequence_no": 7,
		"address": "4738 BELLEVUE AVE, Louisville, KY, 40215"
	  },
	  {
		"lng": -85.815094,
		"lat": 38.259335,
		"is_depot": false,
		"time": 300,
		"sequence_no": 8,
		"address": "318 SO. 39TH STREET, Louisville, KY, 40212"
	  },
	  {
		"lng": -85.785118,
		"lat": 38.179253,
		"is_depot": false,
		"time": 300,
		"sequence_no": 9,
		"address": "1324 BLUEGRASS AVE, Louisville, KY, 40215"
	  },
	  {
		"lng": -85.792854,
		"lat": 38.162472,
		"is_depot": false,
		"time": 300,
		"sequence_no": 10,
		"address": "7305 ROYAL WOODS DR, Louisville, KY, 40214"
	  },
	  {
		"lng": -85.783966,
		"lat": 38.229584,
		"is_depot": false,
		"time": 300,
		"sequence_no": 11,
		"address": "1661 W HILL ST, Louisville, KY, 40210"
	  },
	  {
		"lng": -85.822594,
		"lat": 38.210606,
		"is_depot": false,
		"time": 300,
		"sequence_no": 12,
		"address": "3222 KINGSWOOD WAY, Louisville, KY, 40216"
	  },
	  {
		"lng": -85.796783,
		"lat": 38.153767,
		"is_depot": false,
		"time": 300,
		"sequence_no": 13,
		"address": "1922 PALATKA RD, Louisville, KY, 40214"
	  },
	  {
		"lng": -85.796852,
		"lat": 38.235847,
		"is_depot": false,
		"time": 300,
		"sequence_no": 14,
		"address": "1314 SOUTH 26TH STREET, Louisville, KY, 40210"
	  },
	  {
		"lng": -85.789032,
		"lat": 38.218662,
		"is_depot": false,
		"time": 300,
		"sequence_no": 15,
		"address": "2135 MCCLOSKEY AVENUE, Louisville, KY, 40210"
	  },
	  {
		"lng": -85.781387,
		"lat": 38.206154,
		"is_depot": false,
		"time": 300,
		"sequence_no": 16,
		"address": "1409 PHYLLIS AVE, Louisville, KY, 40215"
	  },
	  {
		"lng": -85.839149,
		"lat": 38.187511,
		"is_depot": false,
		"time": 300,
		"sequence_no": 17,
		"address": "4504 SUNFLOWER AVE, Louisville, KY, 40216"
	  },
	  {
		"lng": -85.795059,
		"lat": 38.241405,
		"is_depot": false,
		"time": 300,
		"sequence_no": 18,
		"address": "2512 GREENWOOD AVE, Louisville, KY, 40210"
	  },
	  {
		"lng": -85.863319,
		"lat": 38.166065,
		"is_depot": false,
		"time": 300,
		"sequence_no": 19,
		"address": "5500 WILKE FARM AVE, Louisville, KY, 40216"
	  },
	  {
		"lng": -85.786201,
		"lat": 38.193283,
		"is_depot": false,
		"time": 300,
		"sequence_no": 20,
		"address": "3640 LENTZ AVE, Louisville, KY, 40215"
	  },
	  {
		"lng": -85.780037,
		"lat": 38.17952,
		"is_depot": false,
		"time": 300,
		"sequence_no": 21,
		"address": "1020 BLUEGRASS AVE, Louisville, KY, 40215"
	  },
	  {
		"lng": -85.814156,
		"lat": 38.26498,
		"is_depot": false,
		"time": 300,
		"sequence_no": 22,
		"address": "123 NORTH 40TH ST, Louisville, KY, 40212"
	  },
	  {
		"lng": -85.802867,
		"lat": 38.151072,
		"is_depot": false,
		"time": 300,
		"sequence_no": 23,
		"address": "7315 ST ANDREWS WOODS CIRCLE UNIT 104, Louisville, KY, 40214"
	  },
	  {
		"lng": -85.849937,
		"lat": 38.182594,
		"is_depot": false,
		"time": 300,
		"sequence_no": 24,
		"address": "3210 POPLAR VIEW DR, Louisville, KY, 40216"
	  },
	  {
		"lng": -85.811447,
		"lat": 38.1754,
		"is_depot": false,
		"time": 300,
		"sequence_no": 25,
		"address": "4519 LOUANE WAY, Louisville, KY, 40216"
	  }
	]
    
}

```

### Multiple Depot Multiple driver route optimization

```curl
@ECHO OFF
:: Multiple Depot, Multiple Driver, No Time Window
:: Please put real value in route_date

::See video tutorial here: http://support.route4me.com/route-planning-help.php?id=manual0:tutorial2:chapter3:subchapter1

SET URL=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111

ECHO ON

curl -o file1.txt -g -X POST -k -d "@multiple_depot_multiple_driver_data.json" "%URL%?api_key=%apikey%" 

timeout /t 30

The file "multiple_depot_multiple_driver_data.json" contains json data for http post request:

{
	"parameters": {
        "algorithm_type": 4,
		"store_route": true,
		"route_name": "multiple_depot_multiple_driver",	
		"route_date": 1464623994,
		"route_time": 25200,
		"optimize": "Distance",
		"distance_unit": "mi",
        "device_type": "web"
    },
    "addresses": [
		{ 
			"address": "3634 W Market St, Fairlawn, OH 44333",
			"is_depot": true,
			"lat": 41.135762259364,
			"lng": -81.629313826561,
			"time": 300,
			"time_window_start": 28800,
			"time_window_end": 28800
		},
		{ 
			"address": "1218 Ruth Ave, Cuyahoga Falls, OH 44221",
			"lat": 41.135762259364,
			"lng": -81.629313826561,
			"time": 300,
			"time_window_start": 29465,
			"time_window_end": 30529
		},
		{ 
			"address": "512 Florida Pl, Barberton, OH 44203",
			"lat": 41.003671512008,
			"lng": -81.598461046815,
			"time": 300,
			"time_window_start": 30529,
			"time_window_end": 33779
		},
		{ 
			"address": "512 Florida Pl, Barberton, OH 44203",
			"lat": 41.003671512008,
			"lng": -81.598461046815,
			"time": 100,
			"time_window_start": 33779,
			"time_window_end": 33944
		},
		{ 
			"address": "3495 Purdue St, Cuyahoga Falls, OH 44221",
			"lat": 41.162971496582,
			"lng": -81.479049682617,
			"time": 300,
			"time_window_start": 33944,
			"time_window_end": 34801
		},
		{ 
			"address": "1659 Hibbard Dr, Stow, OH 44224",
			"lat": 41.194505989552,
			"lng": -81.443351581693,
			"time": 300,
			"time_window_start": 34801,
			"time_window_end": 36366
		},
		{ 
			"address": "2705 N River Rd, Stow, OH 44224",
			"lat": 41.145240783691,
			"lng": -81.410247802734,
			"time": 300,
			"time_window_start": 36366,
			"time_window_end": 39173
		},
		{ 
			"address": "10159 Bissell Dr, Twinsburg, OH 44087",
			"lat": 41.340042114258,
			"lng": -81.421226501465,
			"time": 300,
			"time_window_start": 39173,
			"time_window_end": 41617
		},
		{ 
			"address": "367 Cathy Dr, Munroe Falls, OH 44262",
			"lat": 41.148578643799,
			"lng": -81.429229736328,
			"time": 300,
			"time_window_start": 41617,
			"time_window_end": 43660
		},
		{ 
			"address": "367 Cathy Dr, Munroe Falls, OH 44262",
			"lat": 41.148578643799,
			"lng": -81.429229736328,
			"time": 300,
			"time_window_start": 43660,
			"time_window_end": 46392
		},
		{ 
			"address": "512 Florida Pl, Barberton, OH 44203",
			"lat": 41.003671512008,
			"lng": -81.598461046815,
			"time": 300,
			"time_window_start": 46392,
			"time_window_end": 48389
		},
		{ 
			"address": "3933 Klein Ave, Stow, OH 44224",
			"lat": 41.169467926025,
			"lng": -81.429420471191,
			"time": 300,
			"time_window_start": 48389,
			"time_window_end": 50152
		},
		{ 
			"address": "2148 8th St, Cuyahoga Falls, OH 44221",
			"lat": 41.136692047119,
			"lng": -81.493492126465,
			"time": 300,
			"time_window_start": 50152,
			"time_window_end": 51982
		},
		{ 
			"address": "3731 Osage St, Stow, OH 44224",
			"lat": 41.161357879639,
			"lng": -81.42293548584,
			"time": 100,
			"time_window_start": 51982,
			"time_window_end": 52180
		},
		{ 
			"address": "3731 Osage St, Stow, OH 44224",
			"lat": 41.161357879639,
			"lng": -81.42293548584,
			"time": 300,
			"time_window_start": 52180,
			"time_window_end": 54379
		}
	]
}
```

-------------------
##Optimization Problem Types

Route4Me provides solutions for different types of routes:

### Single depot, Single Driver

Single Depot, Single Driver is particular case of an Optimization Problem of VRP (Vehicle Routing Problem), in which a vehicle departs from a depot and visits a set of customers.

See video tutorial at [Single Driver, Single Depot](http://support.route4me.com/route-planning-help.php?id=manual0:tutorial2:chapter1:subchapter1)

Required parameters: addresses, api_key, algorithm_types.

see detailed description of parameters and sample values [here] (https://www.route4me.com/api/demo/add_optimization_problem.php?sample=Single%20Depot,%20Single%20Driver)

### Single Driver Route 10 Stops

Single Depot, Single Driver and 10 stops is particular case of an Optimization Problem, in which a vehicle departs from a depot, visits 10 stops and ends exactly in the 10th stop.

Required parameters: addresses, api_key, algorithm_types.

see detailed description of parameters and sample values [here] (https://www.route4me.com/api/demo/add_optimization_problem.php?sample=Single%20Driver%20Route%2010%20Stops)

### Single Driver Round Trip

Single Driver Round Trip is particular case of an Optimization Problem, in which a vehicle departs from a depot, visits a set of customers and ends it's routes in the depot.

Required parameters: addresses, api_key, algorithm_types.

see detailed description of parameters and sample values [here] (https://www.route4me.com/api/demo/add_optimization_problem.php?sample=Single%20Driver%20Round%20Trip)

### Single Depot, Multiple Driver

Single Depot, Multiple Driver is particular case of an Optimization Problem, in which multiple vehicles depart from a depot, visit a set of customers and end their routes in the depot.

See video tutorial at [Single Depot, Multiple Driver](http://support.route4me.com/route-planning-help.php?id=manual0:tutorial2:chapter1:subchapter2)

Required parameters: addresses, api_key, algorithm_types.

see detailed description of parameters and sample values [here] (https://www.route4me.com/api/demo/add_optimization_problem.php?sample=Single%20Depot,%20Multiple%20Driver)

### Single Depot, Multiple Driver, Time window

Single Depot, Multiple Driver, Time window is particular case of an Optimization Problem with time constraints, in which multiple vehicles depart from a depot, visit a set of customers and end their routes in the depot.

Required parameters: addresses, api_key, algorithm_types.

see detailed description of parameters and sample values [here] (https://www.route4me.com/api/demo/add_optimization_problem.php?sample=Single%20Depot,%20Multiple%20Driver,%20Time%20window)

### Multiple Depot, Multiple Driver

Multiple Depot, Multiple Driver is particular case of an Optimization Problem, in which multiple vehicles depart from the multiple depot, visit a set of customers and end their routes in the depots.

See video tutorial at [Multiple Depot, Multiple](http://support.route4me.com/route-planning-help.php?id=manual0:tutorial2:chapter2:subchapter1)

Required parameters: addresses, api_key, algorithm_types.

see detailed description of parameters and sample values [here] (https://www.route4me.com/api/demo/add_optimization_problem.php?sample=Multiple%20Depot,%20Multiple%20Driver)

### Multiple Depot, Multiple Driver, Time window

Multiple Depot, Multiple Driver, Time window is particular case of an Optimization Problem with time constraints, in which multiple vehicles depart from the multiple depot, visit a set of customers and end their routes in the depots.

See video tutorial at [Multiple Depot, Multiple Driver, Time window](http://support.route4me.com/route-planning-help.php?id=manual0:tutorial2:chapter2:subchapter2)

Required parameters: addresses, api_key, algorithm_types.

see detailed description of parameters and sample values [here] (https://www.route4me.com/api/demo/add_optimization_problem.php?sample=Multiple%20Depot,%20Multiple%20Driver,%20Time%20window)

...

**See other interesting video tutorials about Different Types of Routes [here](http://support.route4me.com/route-planning-help.php?id=manual0:tutorial2)**

-------------------