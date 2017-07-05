@ECHO OFF
setlocal enableDelayedExpansion

SET url=https://www.route4me.com/api/geocoder.php
SET apikey=11111111111111111111111111111111
SET format=json

:: You can specify many addresses, divided by /n, in one string.
SET addrs="Los Angeles International Airport, CA\nn512,Florida Pl,Barberton,OH,44203\n3495,Purdue St,Cuyahoga Falls,OH,44221"

SET "addrs=!addrs: =%%20!"

ECHO ON

:: The example refers to the process of the forward geocoding.

curl -o file1.txt -k -g -X POST -F "strExportFormat=json" -F "addresses=%addrs%" "%url%?api_key=%apikey%" 

timeout /t 30