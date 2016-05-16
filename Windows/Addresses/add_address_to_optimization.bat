@ECHO OFF
SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111
SET optprobid=07372F2CF3814EC6DFFAFE92E22771AA

ECHO ON
:: Worning - data in json file isn't real, you should put there real test data for right testing
curl -o file1.txt -g -X PUT -k -d "@address_for_reoptimization.json" "%URL%/api.v4/optimization_problem.php?api_key=%apikey%&optimization_problem_id=%optprobid%&reoptimize=0" 

timeout /t 30