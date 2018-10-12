ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/user/vendors/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET user_id=F9E0EC73944444444444444444444444

:: The example refers to the process of updating a teleamtics vendor

ECHO ON

curl -o User_telematics_vendor_update_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -g -k -X PUT -d "@User_telematics_vendor_update_data.json" "%url%%user_id%?api_key=%api_key%"

timeout /t 30