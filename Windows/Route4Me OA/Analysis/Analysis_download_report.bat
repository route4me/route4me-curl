ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/analysis/download/report
SET api_key=1111111111111111111111111111111111111111111111111111111111111111

SET member_id=888888
SET from_ts=1526649668
SET trim_ts=1533559838
SET format=xls

:: The example refers to the process of downloading an analysis report in the xls format

ECHO ON

curl -o Analysis_download_report_RESPONSE.xls -H "Accept: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" -g -k -X GET  "%url%?api_key=%api_key%&member_id=%member_id%&from_ts=%from_ts%&trim_ts=%trim_ts%&format=%format%"

timeout /t 30