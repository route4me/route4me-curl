ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/analysis/monitoring
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET start=1
SET length=10
SET ts_to=1532800799
SET ts_from=1532196000

:: The example refers to the process of getting the Data Monitoring.

ECHO ON

curl -o Analysis_data_monitoring_get_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%?api_key=%api_key%&start=%start%&length=%length%&ts_to=%ts_to%&ts_from=%ts_from%"

timeout /t 30