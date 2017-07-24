@ECHO OFF

:: Example refers to the process of getting the ebooks.

SET host=https://blog.route4me.com/wp-json/wp/v2/ebooks

SET apikey=11111111111111111111111111111111
SET page=1
SET per_page=20
SET context=embed

ECHO ON
curl -o "get_ebooks_embed_RESPONSE.json" -L -g -k -X GET "%host%?api_key=%apikey%&page=%page%&per_page=%per_page%&context=$context"

timeout /t 30