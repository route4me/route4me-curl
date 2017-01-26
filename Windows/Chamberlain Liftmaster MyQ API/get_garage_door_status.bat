@ECHO OFF

:: The example refers to the process of getting garage dor status
:: device_id (garage opener id) and filter conditions are defined in the file jq_filter.txt
:: The equivalent of the command 'type' in the Linux is 'cat'
:: jq-win64.exe file is windows JSON parser file. There are version for other platfroms: jq-linux64, jq-osx-amd64

ECHO ON

type %json_file% | jq-win64 -f jq_filter.txt >file3.txt

timeout /t 30