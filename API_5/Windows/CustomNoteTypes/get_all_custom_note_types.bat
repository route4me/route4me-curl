@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/custom-note-type

SET apikey=11111111111111111111111111111111


:: The example refers to the process of getting all the custom note types.

ECHO ON
curl -o get_all_custom_note_types_RESPONSE.json -g -k -X GET "%base_url%%endpoint%?api_key=%apikey%"

timeout /t 30