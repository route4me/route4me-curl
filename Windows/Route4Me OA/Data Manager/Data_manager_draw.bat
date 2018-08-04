ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/data/manager
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg
SET start=1
SET length=3
SET ts_to=1532800799
SET ts_from=1532196000
SET draw=1

:: The example refers to the process of assigning the technical parameter draw to the data managers

ECHO ON

curl -o Data_manager_draw_RESPONSE.json -H "x-auth-token: %xAuthToken%" -H "Accept: application/json" -g -k -X POST -F length=%length% -F start=%start% -F draw=%draw% -F ts_to=%ts_to% -F ts_from=%ts_from% "%url%"

timeout /t 30