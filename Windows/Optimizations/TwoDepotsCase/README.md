The example refers to the process of generating route with two depots, the vehicle will exit from the first depot go through the addresses and enter in the second depot.

Main files are:
- Script file: **two_depots_optimization.bat**
- Input JSON file: **two_depots_optimization_data.json**

Please, pay attention to these parameters in the input file:<br>
**"rt": false** --- no round trip<br>
**"lock_last"**: true --- last address is fixed. <br>The optimization will generate only routes with the end address indicated in the input file (the address with highest sequence number).

Output file: **two_depots_optimization_RESPONSE.json**.

There are other few files for the detalization and exploration of the generated result.

View details of the generated optimization problem:
- Script file: **get_optimization_single.bat** (the parameter optimization_problem_id is taken from the output file above);
- Output file: **get_optimization_single_RESPONSE.json**.

View details of the generated route:
- Script file: **get_route_path_points.bat** (the parameter route_id is taken from the output file above);
- Output file: **get_route_path_points_RESPONSE.json**

You can use last output file for drawing a generated route on a map.
