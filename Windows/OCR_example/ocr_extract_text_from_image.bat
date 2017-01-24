@ECHO OFF

:: Add a note to the route using of file uploading

SET url=http://199.193.112.174/ImageUpload/AddImage
SET apikey=11111111111111111111111111111111
SET "filename=scanned_addresses.jpg"

ECHO ON

curl -o file1.txt -g -k -X POST -F "fileInput=@%filename%" "%url%?api_key=%apikey%"

timeout /t 30