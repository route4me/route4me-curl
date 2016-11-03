@ECHO OFF
SET url=https://apps.route4me.com/depots/api/v0.1/depot/

SET api_key=11111111111111111111111111111111
SET job_id=8275a7a0-f01c-4a6e-8477-93dd1e336ab5
SET pk=191

SET name=Depot_1_Updated
SET cost_per_driver_per_hour=10
SET cost_per_vehicle_per_hour=10
SET onetime_fee=30
SET recurring_fee=40

ECHO ON

:: Examlple refers to the process of updating depot object by sending form data

curl -o file1.txt -k -g -X PUT ^
	-F "api_key=%api_key%" ^
	-F "name=%name%" ^
	-F "cost_per_driver_per_hour=%cost_per_driver_per_hour%" ^
	-F "cost_per_vehicle_per_hour=%cost_per_vehicle_per_hour%" ^
	-F "onetime_fee=%onetime_fee%" ^
	-F "recurring_fee=%recurring_fee%" ^
	"%url%%pk%" 

timeout /t 30