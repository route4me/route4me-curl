ECHO OFF

:: Please, put real value in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/user/vendors/
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg
SET user_id=F9E0EC73944444444444444444444444

:: The example refers to the process of updating a teleamtics vendor

ECHO ON

curl -o User_telematics_vendor_update_RESPONSE.json -H "Content-Type: application/json" -H "Accept: application/json" -H "x-auth-token: %xAuthToken%" -g -k -X PUT -d "@User_telematics_vendor_update_data.json" "%url%%user_id%"

timeout /t 30