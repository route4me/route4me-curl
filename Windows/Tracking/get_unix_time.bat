@ECHO OFF
setlocal enableextensions

SET date1=%1

SET dd1=%date1:~8,2%
SET mm1=%date1:~5,2%
SET yy1=%date1:~0,4%
SET hh1=%date1:~11,2%
SET mi1=%date1~14,2%
SET ss1=%date1:~17,2%

set /a z=(14-100%mm1%%%100)/12 
set /a y=(10000%yy1%%%10000)-%z%
set /a ut=%y%*365+%y%/4-%y%/100+%y%/400+(153*(100%mm1%%%100+12*%z%-3)+2)/5+%dd1%-719469
set /a ut=%ut%*86400+100%hh1% %% 100 * 3600 + 100%mi1% %% 100 * 60 + 100%ss1% %% 100
echo ut=%ut%
endlocal & set "%2=%ut%" & goto :EOF