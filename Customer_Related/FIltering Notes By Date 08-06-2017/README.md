# Getting the notes inserted after the specified time

To get the notes inserted after the specified time, user can do this request:

https://www.route4me.com/api/get_activities.php?api_key=11111111111111111111111111111111&offset=0&limit=50&activity_type=note-insert&start=1495238400

Where:
- api_key is users Route4Me API key;
- offset - starting point of the search;
- limit - limitting of the found results;
- activity_type - type of the activity is searched for (in our case it is 'note-insert' activity);
- start - start time in EPOCH datetime system (seconds after 01-01-1970 00:00:00 GMT) (human readable equivalent of the 1495238400 is 20 May 2017 00:00:00 GMT).

See the example in this folder done in the curl (cmd):
- get_notes_inserted_starting_from_date.bat - script file;
- get_notes_inserted_starting_from_date_RESPONSE.json - response file;