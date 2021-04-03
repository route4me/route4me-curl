@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/team/files

SET apikey=11111111111111111111111111111111
SET "filename=addresses_linked.xlsx"

SET "tags=xlsx file"

ECHO ON

curl -o upload_excel_file_RESPONSE.json -g -k -X POST  -H  "accept: application/json" -H  "Content-Type: multipart/form-data" -F "upload_file=@%filename%" -F "tags=%tags%" "%base_url%%endpoint%?api_key=%apikey%" 

timeout /t 30
