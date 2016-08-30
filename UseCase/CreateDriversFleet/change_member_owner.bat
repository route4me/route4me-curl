@ECHO OFF

SET url=https://route4me.com/api/member/change_owner.php
SET apikey=11111111111111111111111111111111
SET memebr_id=45837
SET owner_member_id=2

ECHO ON

curl -o file1.txt -g -X POST -k "%url%?api_key=%apikey%&memebr_id=%memebr_id%&owner_member_id=%owner_member_id%"

timeout /t 30