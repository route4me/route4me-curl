ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/user/affiliates/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET affiliate_id=55555555555555555555555555555555

:: The example refers to the process of updating an affiliate

ECHO ON

curl -o User_affiliate_update_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X PUT -d "@User_affiliate_update_data.json" "%url%%affiliate_id%?api_key=%api_key%"

timeout /t 30