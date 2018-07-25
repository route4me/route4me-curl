ECHO OFF

:: Please, put real values n the parameters originApiKey and authToken
SET url=https://oa.route4me.com/api/v1/statistics/analysis-session/created/count-grouped
SET authToken=111111111111111111111111111111111111.222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222.333333333-44444444444444444444444444444-555
SET from_ts=1526649668
SET trim_ts=1529328068

:: The example refers to the process of getting the statistic for created OA Analysis Sessions

ECHO ON

curl -o Statistics_analysis_created_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%?auth_token=%authToken%&from_ts=%from_ts%&trim_ts=%trim_ts%"

timeout /t 30