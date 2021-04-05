@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/custom-note-type

SET apikey=11111111111111111111111111111111

:: The example refers to the process of adding a note custom type to a user's account by sending HTTP parameters.

ECHO ON

curl -o add_new_note_custom_type_RESPONSE.json -g -k -X POST -d "@add_new_note_custom_type_data.json" "%base_url%%endpoint%?api_key=%apikey%"

timeout /t 30