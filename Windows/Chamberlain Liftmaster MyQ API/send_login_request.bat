@ECHO OFF

SET url=http://myqexternal.myqdevice.com/Membership/ValidateUserWithCulture
SET "appId=Vj8pQggXLhLy0WHahglCD4N1nAkkXQtGYpq2HrHD7H1nvmbT55KqtN6RSF4ILB%2fi"
SET securityToken=456sadas
SET username=username
SET password=password
SET culture=en

:: The example refers to the process of login into a MyQ system

:: You should only need to store the securityToken in the response for subsequent requests. Also, I have noticed that sometimes the call to login returns a token that does not work. From time to time, I have found that retrying the login call once or twice gets one that works.

ECHO ON

curl -o file1.txt -g -X GET -k "%url%?appId=%appId%&securityToken==%securityToken%&username=%username%&password=%password%&culture=%culture%"

timeout /t 30