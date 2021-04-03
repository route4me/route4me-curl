@ECHO OFF

:: Example refers to the process of authentication on the MyQ service
:: You need to remember the securityToken in the response for subsequent requests.
:: After the certain time the established connection can be broken, in this case you have to login again.
:: In order to obtain MyQ account, you have to power MyQ device and to pair your mobile device (or PC) with MyQ device (see details at the link: https://setup.myqdevice.com/)

SET base_url=https://myqexternal.myqdevice.com/
SET validation_path=Membership/ValidateUserWithCulture
SET device_details=api/UserDeviceDetails
SET "appId=Vj8pQggXLhLy0WHahglCD4N1nAkkXQtGYpq2HrHD7H1nvmbT55KqtN6RSF4ILB%2fi"
SET username=username
SET password=password
SET securityToken=null
SET culture=en

ECHO ON

curl -o file1.txt -g -k -X GET "%base_url%%validation_path%?appIdappId=%appId%&username=%username%&password=%password%&securityToken=%securityToken%&culture=%culture%"

timeout /t 30