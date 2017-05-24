# The route parameter **priority**

A Route4Me API user can use the route parameter **priority** for defining a way the optimization algorithm should work in the case of conflict between several time windows (in shortened TW) of the addresses. If there is no conflict, the algorithm ignores the parameter priority, because main point of the good logistic service is timely service, a service done according to a preliminary arranged schedule. But in the case of TW conflict, the algorithm tries first preserve TW of an address with higher priority.

For the demonstration of the above mentioned, we made some examples and placed in 3 folders:
  1. Single driver, 1 TW (folder SD_1_TW);
  2. Single driver, 2 TW (folder SD_2_TW);
  3. Multi driver, 1 TW (folder MD_1_TW).

Each case contains 3 sub-cases:

  - The addresses with TW, no priorities;
  - The addresses with TW, different priorities, but without conflicting TW ;
  - The addresses with TW, different priorities and with conflicting TW.

## Single driver, 1 TW
(folder SD_1_TW)

The profiling parameters for this case are
- "algorithm_type": 3
- "min_tour_size": 7
- "parts": 1

This set of the parameters causes generating of a single route.

The addresses in this case are with 1 TW.

There are 3 sub-cases in this case:
1. The addresses with TW, no priorities. See the files:
  - single_driver_multiple_time_windows_data_0.json (input data);
  - get_optimization_single_RESPONSE_0.json (generated solution).
2. The addresses with TW, different priorities, but without TW conflicting. Files:
  - single_driver_multiple_time_windows_data_1.json (input data);
  - get_optimization_single_RESPONSE_1.json (generated solution).
3. The addresses with TW, different priorities and with TW conflicting (compare the addresses: "3495 Purdue St, Cuyahoga Falls, OH 44221" (**priority=2**) and "1659 Hibbard Dr, Stow, OH 44224" (**priority=1**), they have equal TW but different priorities). Files:
  - single_driver_multiple_time_windows_data_2.json (input data);
  - get_optimization_single_RESPONSE_2.json (generated solution).

The results of all 3 sub-cases we put in the Excel file **all_routes_SD_1_TW.xlsx** one under other, in order to have better ability to compare results.

You can notice that 1-st and 2-nd sub-cases generate similar solutions, there is no difference between them.

As for 3-rd sub-case, the conflict between TW of the addresses causes removal of the address with lower priority. The address with higher priority preserved in the generated route.

## Single driver, 2 TW
(folder SD_2_TW)

The profiling parameters for this case are:
- "algorithm_type": 3
- "min_tour_size": 7
- "parts": 1

This set of the parameters causes generating of a single route.

The addresses in this case are with 2 TW.

There are 3 sub-cases in this case:
1. The addresses with TW, no priorities. See the files:
  - single_driver_multiple_time_windows_data_0.json (input data);
  - get_optimization_single_RESPONSE_0.json (generated solution).
2. The addresses with TW, different priorities, but without TW conflicting. Files:
  - single_driver_multiple_time_windows_data_1.json (input data);
  - get_optimization_single_RESPONSE_1.json (generated solution).
3. The addresses with TW, different priorities and with TW conflicting (compare the addresses: "3495 Purdue St, Cuyahoga Falls, OH 44221" (**priority=2**) and "1659 Hibbard Dr, Stow, OH 44224" (**priority=1**), they have equal TW but different priorities). Files:
  - single_driver_multiple_time_windows_data_2.json (input data);
  - get_optimization_single_RESPONSE_2.json (generated solution).

The results of all 3 sub-cases we put in the Excel file **all_routes_SD_2_TW.xlsx**.

You can see that 1-st and 2-nd sub-cases generate similar solutions, there is no difference between them.

As for 3-rd case there is one important nuance in the output solution: the TW of the address with higher priority took TW 2, TW of the address with lower priority preserved.

Input:

|address|priority|TW start|TW end|TW start 2|TW end 2|
|-------|:------:|:---------:|:-------:|:-------:|:------:|
|3495 Purdue St, Cuyahoga Falls, OH 44221|2|32400|33300|34200|35100|
|1659 Hibbard Dr, Stow, OH 44224|1|32400|33300|34200|35100|

Output:

|address|priority|Generated TW start|Generated TW end|
|-------|:------:|:---------:|:---------:|
|3495 Purdue St, Cuyahoga Falls, OH 44221|2|32400|32699|
|1659 Hibbard Dr, Stow, OH 44224|1|34200|34499|

This case means that the Route4Me optimization algorithm is trying to preserve all addresses in a route in the optimal sequence, if there is a way to do it. In this case second TW gives to the algorithm the ability to resolve conflict without affecting other addresses.

## Multiple drivers, 1 TW
(folder MD_1_TW)

The profiling parameters for this case are:
- "algorithm_type": 4
- "min_tour_size": 3
- "parts": 2

This set of the parameters causes generating 2 routes.

The addresses in this case are with 1 TW.

There are 3 sub-cases in this case:
1. The addresses with TW, no priorities. See the files:
  - single_driver_multiple_time_windows_data_0.json (input data);
  - get_optimization_single_RESPONSE_0.json (generated solution).
2. The addresses with TW, different priorities, but without TW conflicting. Files:
  - single_driver_multiple_time_windows_data_1.json (input data);
  - get_optimization_single_RESPONSE_1.json (generated solution).
3. The addresses with TW, different priorities and with TW conflicting (compare the addresses: **"3495 Purdue St, Cuyahoga Falls, OH 44221"** (**priority=2**) and **"1659 Hibbard Dr, Stow, OH 44224"** (**priority=1**), they have equal TW but different priorities). Files:
  - single_driver_multiple_time_windows_data_2.json (input data);
  - get_optimization_single_RESPONSE_2.json (generated solution).

The results of all 3 sub-cases we put in the Excel file **all_routes_MD_1_TW.xlsx**.

In 1-st sub-case (no priorities) was generated 1 route with preserving all TW of the addresses.

In 2-nd sub-case (different priorities, no TW conflict) was generated 2 routes with both highlighted by us addresses in the second route.

In the 3-rd sub-case (different priorities, conflicting TW between 2 addresses) was generated 2 routes with the 2 addresses (highlighted by us) distributed in the different routes.

## Conclusion

Using of the route parameter **property** causes the following consequence:
  - The Route4Me optimization algorithm is trying to preserve TW of an address with higher priority;
  - If there is a possibility to use second TW for preserving the sequence of the address with higher priority in the route, the algorithm uses it. This means that 1-st and 2-nd TW have equal importance for the algorithm.
  - If there is such possibility, the algorithm distributes the addresses with the conflicting TW in the different routes.
  - If there is no other way to resolve TW conflict between the addresses with different priorities, the algorithm removes the address with lower priority from the route.
