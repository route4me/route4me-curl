@ECHO OFF

SET url=https://api.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111
SET optprobid=DE62B03510AB5A6A876093F30F6C7BF5
SET redirect=0

ECHO ON

:: The example refers to the process of removing the existing optimization problems.

curl -o file1.txt -g -k -X DELETE -d "@delete_optimization_data.json" "%url%?api_key=%apikey%&redirect=%redirect%" 

timeout /t 30