@ECHO OFF

SET url=http://myqexternal.myqdevice.com/Device/getDeviceAttribute
SET "appId=Vj8pQggXLhLy0WHahglCD4N1nAkkXQtGYpq2HrHD7H1nvmbT55KqtN6RSF4ILB%2fi"
SET "securityToken=456sadas"
SET deviceId=876543
SET name=doorstate

:: The example refers to the process of getting a status of a particular device attribute.

ECHO ON

curl -o file1.txt -g -X GET -k "%url%?appId=%appId%&securityToken==%securityToken%&devId=%deviceId%&name=%name%"

timeout /t 30