ECHO OFF

:: Please, put real value in the parameter xApiKey
SET url=https://oa.route4me.com/api/v1/analysis/monitoring
SET xApiKey=c8f031c712715c90b2e0cd1ce19cabf24792eb2d222222222222222222222222
SET start=1
SET length=10
SET ts_to=1532800799
SET ts_from=1532196000

:: The example refers to the process of getting the Data Monitoring.

ECHO ON

curl -o Analysis_data_monitoring_get_RESPONSE.json -H "x-api-key: %xApiKey%" -H "Accept: application/json" -g -k -X GET  "%url%?start=%start%&length=%length%&ts_to=%ts_to%&ts_from=%ts_from%"

timeout /t 30