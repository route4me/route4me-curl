## Address updating and URL callback

You can set callback URl in your Route4Me account and receive notifications about activities in your account.

Let's create a simple **r4m_activity.php** file and upload it on you server, for example on youdomain.com:

~~~ php
<?php
function logToFile($filename, $msg) 
   {  
   $fd = fopen($filename, "a"); 
   fwrite($fd, $msg . "\r\n"); 
   fclose($fd); 
   } 
   
echo "You received info about activities on your Route4Me account <br>";

foreach ($_GET as $key => $value) { 
	logToFile("r4m_activities.txt",$key.":");
	if (is_array($value)) {
		foreach ($value as $k1 => $v1) {
			logToFile("r4m_activities.txt",$k1." -> ".$v1);
		}
	}
}
?>
~~~

You can setup callback URL in your Route4Me account (My Account -> Settings -> Activity Feed Settings):
- Callback URL: http://youdomain.com/r4m_activity.php
- Callback Method: GET

Let's assume that you already have been created an optimized route:

1) Create optimization problem.
- Script file: **single_driver_route_ten_stops.bat**;
- Input JSON file: **single_driver_route_ten_stops_data.json**;
- Output JSON file: **single_driver_route_ten_stops_RESPONSE.json**.
   
2) Get details of the generated optimization problem.
- Script file: **get_optimization_single.bat**;
- Output JSON file: **get_optimization_single_RESPONSE.json**.
   
In the last output JSON file you can find the parameters: **route_id** and **route_destination_id** and put them in the script for updating a destination data:
  
3) Update a route destination:
- Script file: **update_route_destination.bat**;
- Input JSON file (update **alias**): **update_route_destination_alias_data.json**;
- Output JSON file (update **alias**): **update_destination_alias_RESPONSE.json**;
- Input JSON file (update **custom data**): **update_route_destination_custom_data.json**;
- Output JSON file (update **custom data**): **update_destination_custom_RESPONSE.json**;
   
Then you can change input JSON files and repeat updating of the destination again.
  
You can see this log file **r4m_activities.txt** on your server with the content:
  
```
activity:
route_id -> 8E1D64773050020ECBBD3FC2CB46C8FE
route_destination_id -> 217213163
member_id -> 1
activity_type -> update-destinations
activity_id -> FAD867CE74780D9D54988F5988CBB932
activity_timestamp -> 1488830418
activity_message -> Address '4805 BELLEVUE AVE, Louisville, KY, 40215' was updated
account_type_id -> 123
member_level -> 0
root_owner_member_api_key -> 11111111111111111111111111111111
root_owner_member_email -> aaaaaaaaa@gmail.com
root_owner_member_id -> 1

activity:
route_id -> 8E1D64773050020ECBBD3FC2CB46C8FE
route_destination_id -> 217213163
member_id -> 1
activity_type -> update-destinations
activity_id -> C7004B88E48CC98FA9528D79225E08A1
activity_timestamp -> 1488830420
activity_message -> Address '4805 BELLEVUE AVE, Louisville, KY, 40215' was updated
account_type_id -> 123
member_level -> 0
root_owner_member_api_key -> 11111111111111111111111111111111
root_owner_member_email -> aaaaaaaaa@gmail.com
root_owner_member_id -> 1
```

If you run the updating script with a wrong JSON input data, the callback URl will not receive notification.