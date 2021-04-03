@ECHO OFF

SET url=https://myqexternal.myqdevice.com/Device/setDeviceAttribute

:: The example refers to the process of getting a status of a particular device attribute.
:: doorStatuses = enum{"1" = "open", "2" = "closed", "4" = "opening", "5" = "closing"}
:: doorActions = enum{0 = "close", 1 = "open"}

ECHO ON

curl -o file1.txt -g -k -d "@change_garage_door_state_data.json" -X PUT "%url%"

timeout /t 30