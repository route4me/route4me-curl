ECHO OFF

:: Please, put real value in the parameter api_key
SET url=https://oa.route4me.com/api/v1/user/vendors/
SET api_key=1111111111111111111111111111111111111111111111111111111111111111
SET user_id=F9E0EC73944444444444444444444444

:: The example refers to the process of getting a telematics vendors belonging to the user.

ECHO ON

curl -o User_telematics_vendor_get_RESPONSE.json -H "Accept: application/json" -g -k -X GET  "%url%%user_id%?api_key=%api_key%"

timeout /t 30