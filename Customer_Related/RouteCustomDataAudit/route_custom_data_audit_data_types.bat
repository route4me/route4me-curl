@ECHO OFF

chcp 1252

SET URL=https://api.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of creating route with custom fields into addresses (one depot, one non-depot) with different datatypes for field values

ECHO ON

curl -o file1.txt -g -X POST -k -H "Content-Type: application/json; charset=utf-8" -d "@route_custom_data_audit_data_types_data.json" "%url%?api_key=%apikey%" 

timeout /t 30