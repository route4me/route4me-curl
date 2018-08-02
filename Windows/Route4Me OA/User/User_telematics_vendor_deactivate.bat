ECHO OFF

:: Please, put real values in the parameter xAuthToken
SET url=https://oa.route4me.com/api/v1/user/vendors/
SET xAuthToken=eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ.LL-gggggggggggggggggggggggggggggggggggggggg
SET vendor_id=F9E0EC73944444444444444444444444


:: The example refers to the process of activating/deactivating of a telematics vendor

ECHO ON

curl -o User_telematics_vendor_deactivate_RESPONSE.json -H "Content-Type: application/json" -H "x-auth-token: %xAuthToken%" -H "Accept: application/json" -g -k -X PATCH -d "@User_telematics_vendor_deactivate_data.json" "%url%%vendor_id%"

timeout /t 30