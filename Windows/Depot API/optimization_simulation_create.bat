@ECHO OFF
SET url=https://apps.route4me.com/depots/api/v0.1/optimization/

SET api_key=11111111111111111111111111111111
SET fuel=2.32
SET miles=9
SET work_days=260
SET cost_per_vehicle_per_hour=10
SET cost_per_driver_per_hour=10
SET labor_peak_season=15
SET hours=8
SET drivers=20
SET avg_time=30
:: file name
SET depots=depots.csv
SET locations=locations.csv

SET peak_season_start=1478044800
SET peak_season_stop=1478217600
SET vehicle_cost_per_time_period=Hourly
SET departure_day=1478044800
SET departure_time=60000
SET name=sample_simulation_0211116

ECHO ON

:: Examlple refers to creating optimization simulation object with the form data parameters

curl -o file1.txt -k -g -X POST ^
	-F "simulation.api_key=%api_key%" ^
	-F "simulation.fuel=%fuel%" ^
	-F "simulation.miles=%miles%" ^
	-F "simulation.work_days=%work_days%" ^
	-F "simulation.cost_per_vehicle_per_hour=%cost_per_vehicle_per_hour%" ^
	-F "simulation.cost_per_driver_per_hour=%cost_per_driver_per_hour%" ^
	-F "simulation.labor_peak_season=%labor_peak_season%" ^
	-F "simulation.hours=%hours%" ^
	-F "simulation.drivers=%drivers%" ^
	-F "simulation.avg_time=%avg_time%" ^
	-F "simulation.depots=@%depots%" ^
	-F "simulation.locations=@%locations%" ^
	-F "simulation.peak_season_start=%peak_season_start%" ^
	-F "simulation.peak_season_stop=%peak_season_stop%" ^
	-F "simulation.vehicle_cost_per_time_period=%vehicle_cost_per_time_period%" ^
	-F "simulation.departure_day=%departure_day%" ^
	-F "simulation.departure_time=%departure_time%" ^
	-F "simulation.name=%name%" ^
	"%url%" 

timeout /t 30