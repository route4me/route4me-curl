## Overlapping Time Windows

A customer asked us to explain issue of the overlapping time windows.

You can see input JSON data [here. ](https://github.com/route4me/route4me-curl/blob/master/Customer_Related/Overlapping%20TIme%20Windows/overlapping_time_windows_data.json)

and

Output JSON data [here. ](https://github.com/route4me/route4me-curl/blob/master/Customer_Related/Overlapping%20TIme%20Windows/overlapping_time_windows_RESPONSE.json).

In the response are many error messages, which are 2 types:

1. The service time (00:20 UTC) must fit inside the specified time window (00:00 UTC to 00:00 UTC);

2. Address with sequence number 28 'C-00000457': The second time window start (00:00 UTC) must be after the first time window end (16:45 UTC)";

Also, input JSON data has some mistakes.

What was changed:

- The parameter **route_date** is not address parameter, it is route parameter and **it's integer** type, **not string** type. It was set once in the route parameters and removed from address parameters.

- The parameter **pieces** is **integer** type. Note: in the route parameters there is the parameter **vehicle_capacity**, which means how many pieces can carry the vehicle.

- The parameters: **weight**, **lat**, **lng** have **double** type.

- Every time window with value 0, was changed with null, because 0 means just '1970-01-01 0:00:00' and null means that algorithm will not take into account this time window.

- The address "FRIGOSERVICE" is the **depot**, it should be in the top of the list with sequence number 0 and it can not have time windows and service time - its values were put to the null.

- Everywhere, where time windows have non-null value, but start of the second time window was less than end of the first time window, was set the start of the second time window with the 5 minutes more than the end of the first time window - this number was chosen randomely, for demostration purpose (i.g. the address "C-00001373").

You can see improved input JSON data [here. ](https://github.com/route4me/route4me-curl/blob/master/Customer_Related/Overlapping%20TIme%20Windows/overlapping_time_windows_data_RIGHT.json)

and 

You can see RESPONSE from rigth input data [here. ](https://github.com/route4me/route4me-curl/blob/master/Customer_Related/Overlapping%20TIme%20Windows/overlapping_time_windows_right_RESPONSE.json).

