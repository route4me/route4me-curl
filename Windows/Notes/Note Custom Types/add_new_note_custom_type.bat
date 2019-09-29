@ECHO OFF

SET url=https://api.route4me.com/api.v4/note_custom_types.php

SET apikey=11111111111111111111111111111111

:: The example refers to the process of adding a note custom type to a user's account by sending HTTP parameters.

ECHO ON

curl -o add_new_note_custom_type_RESPONSE.json -g -k -X POST -d "@add_new_note_custom_type_data.json" "%url%?api_key=%apikey%"

timeout /t 30