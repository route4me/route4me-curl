@ECHO OFF
SET url=https://apps.route4me.com/depots/api/v0.1/job/

SET api_key=11111111111111111111111111111111
SET job_id=8275a7a0-f01c-4a6e-8477-93dd1e336ab5

:: job ID. Not code in the job RESPONSE
SET pk=28

SET fuel_cost_per_gallon=2.40
SET annual_inflation=4
SET miles_per_gallon=10

ECHO ON

:: Examlple refers to creating optimization simulation object with the form data parameters

curl -o file1.txt -k -g -X PUT ^
	-F "api_key=%api_key%" ^
	-F "fuel_cost_per_gallon=%fuel_cost_per_gallon%" ^
	-F "annual_inflation=%annual_inflation%" ^
	-F "miles_per_gallon=%miles_per_gallon%" ^
	"%url%%pk%" 

timeout /t 30