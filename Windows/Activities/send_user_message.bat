@ECHO OFF

SET url=https://api.route4me.com/api.v4/activity_feed.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: The example refers to sending of an user's message directly to Activity Feed

curl  -o file1.txt -g -k -X POST -H "Content-Type: application/json" -d"@send_user_message_data.json" "%url%?api_key=%apikey%"

timeout /t 30