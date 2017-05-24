# The route parameter **priority**

User can use the route parameter **priority** for defining the way the optimization algorithm should work in case of conflicts between several time windows (in shortened TW) of the addresses. If there is no conflict, the algorithm ignores the parameter priority - because main point of the good logistic service is timely service, a service done according to a preliminary arranged schedule. But in the case of TW conflict, the algorithm tries first preserve TW of an address with higher priority.

For the demonstration of the above mentioned, we made some examples and placed in this folder. For all of them the following parameters are same:
  - "algorithm_type": 3
  - "min_tour_size": 7
  - "parts": 1

Here are 3 cases in these examples:
1. The addresses with TW, no priorities. Files:
  - single_driver_multiple_time_windows_data_0.json (input data);
  - get_optimization_single_RESPONSE_0.json (generated solution).
2. The addresses with TW, different priorities, but without TW conflicting. Files:
  - single_driver_multiple_time_windows_data_1.json (input data);
  - get_optimization_single_RESPONSE_1.json (generated solution).
3. The addresses with TW, different priorities and with TW conflicting (compare the addresses: "3495 Purdue St, Cuyahoga Falls, OH 44221" (**priority=2**) and "1659 Hibbard Dr, Stow, OH 44224" (**priority=1**), they have equal TW but different priorities). Files:
  - single_driver_multiple_time_windows_data_2.json (input data);
  - get_optimization_single_RESPONSE_2.json (generated solution).

The results of all 3 cases we put in the Excel file all_routes.xlsx one under other, in order to have better ability to compare results.

As you can see that 1-st and 2-nd cases generate similar solutions, there is no difference between them.

As for 3-rd case there is one important nuance in the output solution: the TW of the address with higher priority preserved and the TW of the other conflicting address changed.

Input:

|address|priority|TW start|TW end|TW start 2|TW end 2|
|-------|:------:|:---------:|:---------:|
|3495 Purdue St, Cuyahoga Falls, OH 44221|2|34200|33300|
|1659 Hibbard Dr, Stow, OH 44224|1|34200|33300|

Output:

|address|priority|TW start|TW end|
|-------|:------:|:---------:|:---------:|
|3495 Purdue St, Cuyahoga Falls, OH 44221|2|32400|32699|
|1659 Hibbard Dr, Stow, OH 44224|1|34200|34499|








in this file for comparing placed 3 different types of generated route:
1) addresses with TW, no priorities
2) addresses with TW, different priorities
3) addresses with TW, different priorities and conflicting TW
priorities worked only in 3-rd case: TW for address with higher priority preserved and TW for address with lower priority changed
As for the parameter max_routes=1, there is no such parameter in the Route4Me API, but there are instead parameters:
"min_tour_size": 7,
  "parts": 1,
which do same as max_routes in web UI
Tomorrow I'll write README.md file in the customer's case folder - today is too late here.
