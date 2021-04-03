@ECHO OFF

SET url=http://myqexternal.myqdevice.com/api/UserDeviceDetails
SET "appId=Vj8pQggXLhLy0WHahglCD4N1nAkkXQtGYpq2HrHD7H1nvmbT55KqtN6RSF4ILB%2fi"
SET securityToken=456sadas

:: The example refers to the process of getting information about MyQ system and devices (doors etc)

ECHO ON

curl -o file1.txt -g -X GET -k "%url%?appId=%appId%&securityToken==%securityToken%"

timeout /t 30