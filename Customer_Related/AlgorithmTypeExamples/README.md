## Optimization Algorithm Type Examples

These examples created for showing how the output data depends on the applied optimization algorithm type.

The Route4Me optimization engine provides the following optimization types:

| Optimization Type | Algorithm |Use Cases|
|-------------------|-------------|-------------|
|TSP = 1| Travel Salesman Problem|Single Depot, Single Driver|
|VRP = 2| Deprecated||
|CVRP_TW_SD = 3|Capacitated Vehicle Routing Problem with time windows contraint|Single Depot, Multiple Drivers|
|CVRP_TW_MD = 4|Capacitated Vehicle Routing Problem with time windows contraint|Multiple Depots, Multiple Drivers|
|TSP_TW = 5| c||
|TSP_TW_CR = 6| Deprecated||
|BBCVRP = 7| Deprecated||
|ALG_NONE = 100|No Algorithm|To get the routes with the original sequence of the destinations|
|ALG_LEGACY_DISTRIBUTED = 101|Balanced Team Routes optimization|In case of consuming the Route Balancing Advanced Constraint Add-On|

[Input data](./input_data.json) contains 15 addresses, among them 2 are depots and 13 - destinations.

### TSP = 1

Generated one round trip route.
Trip distance: 93.32 mi.

Links:
- [Output Data](./output_data_alg_type_1.json)
- [Route4Me Website](https://route4me.com/route?api_key=11111111111111111111111111111111&route_id=7D84E416E32966E0A82478BABD7B027C)

### VRP = 2

Received error response:

```
{
	"errors": [
		"Unsupported optimization algorithm type: 2"
	],
	"timestamp": 1580119950
}
```

### CVRP_TW_SD = 3

Generated 2 round trip routes.
Total trip distance: 44.26 + 45.17 = 89.43 mi.

Links:
- [Output Data](./output_data_alg_type_3.json)
- [Route4Me Website, 1st route](https://route4me.com/route?api_key=11111111111111111111111111111111&route_id=021E22B2C3A72E86E4A5CF24FC530FA4)
- [Route4Me Website, 2nd route](https://route4me.com/route?api_key=11111111111111111111111111111111&route_id=DE6BB1BAFC8B95709C0D1B5935747C5E)


### CVRP_TW_MD = 4

Generated 2 round trip routes.
Total trip distance: 55.95 + 24.35 = 80.30 mi.

Links:
- [Ouput Data](./output_data_alg_type_4.json)
- [Route4Me Website, 1st route](https://route4me.com/route?api_key=11111111111111111111111111111111&route_id=826415B073A616F1E5C872DE668DAB27)
- [Route4Me Website, 2nd route](https://route4me.com/route?api_key=11111111111111111111111111111111&route_id=88FA3B218529988BAAEA19045731C63D)

### TSP_TW = 5

Received error response:

```
{
	"errors": [
		"Unsupported optimization algorithm type: 5"
	],
	"timestamp": 1580117099
}
```

### TSP_TW_CR = 6

Received error response:

```
{
	"errors": [
		"Unsupported optimization algorithm type: 6"
	],
	"timestamp": 1580117188
}
```

### BBCVRP = 7

Received error response:

```
{
	"errors": [
		"Unsupported optimization algorithm type: 7"
	],
	"timestamp": 1580117242
}
```

### ALG_NONE = 100

Generated one route.
Trip distance: 128.72 mi.

Links:
- [Ouput Data](./output_data_alg_type_100.json)
- [Route4Me Website](https://route4me.com/route?api_key=11111111111111111111111111111111&route_id=28D5218241BAB8C4159E361CFA1946B0)


### ALG_LEGACY_DISTRIBUTED = 101

Generated 9 routes (1 failed).
Total trip distance: 10.28 + 42.91 + 6.92 + 8 + 5.6 + 41.28 + 22.86 + 6.92 + 8.32 = 153.09 mi.

- [Ouput Data](./output_data_alg_type_101_stops_15.json)
- [Route4Me Website, 1st route](https://route4me.com/route?api_key=11111111111111111111111111111111&route_id=06B880243AB597692571FDA013848665)
- [Route4Me Website, 2nd route](https://route4me.com/route?api_key=11111111111111111111111111111111&route_id=3EA78533ECF0E30A391377B083B5C989)
- [Route4Me Website, 3rd route](https://route4me.com/route?api_key=11111111111111111111111111111111&route_id=72344F7416DBF8AA9A53430FFE821AC6)
- [Route4Me Website, 4th route](https://route4me.com/route?api_key=11111111111111111111111111111111&route_id=7297C2EFC3CBA6D40174183648689D37)
- [Route4Me Website, 5th route](https://route4me.com/route?api_key=11111111111111111111111111111111&route_id=855D5AAE7A9AD7ECE8905A6062A87C27)
- 6th route: failed
- [Route4Me Website, 7th route](https://route4me.com/route?api_key=11111111111111111111111111111111&route_id=E38355FE62DB440C81CB099F972AB389)
- [Route4Me Website, 8th route](https://route4me.com/route?api_key=11111111111111111111111111111111&route_id=ECE1DC1B48B9FEF3D2D15AD1AB2EECF8)
- [Route4Me Website, 9th route](https://route4me.com/route?api_key=11111111111111111111111111111111&route_id=F0AB26DE37B23208BFBC5BE8D7D98C96)
- [Route4Me Website, 10th route](https://route4me.com/route?api_key=11111111111111111111111111111111&route_id=F56CF89DB93CFB51B14601259431251B)


If the input addresses are less than 10 you can expect this response:

```
{
	"errors": [
		"Balanced Team Routes require more than 10 stops"
	],
	"timestamp": 1580120592
}
```
