rem =_SET_MY_CONFIGS_=

goto start
-------------------
This batch file is 
used for setting my
far configurations.
-------------------
When it run, 
the files from
%FARHOME%\Profile
will be copied with overwriting to the
%$APPDATA%\Far Manager (my configs)\Profile
-------------------
Batch file is written 04/05/2019
Last fix made 08/05/2019
-------------------
:start

@echo off

cd\
cls
echo.
echo --------------------------------------------
echo Copy files from "%FARHOME%\Profile"
echo to "%APPDATA%\Far Manager (my configs)\Profile"
echo started.
echo --------------------------------------------
echo.

echo on

set far_profile="%FARHOME%\Profile"
set app_data_far="%APPDATA%\Far Manager (my configs)"
set app_data_far_profile="%APPDATA%\Far Manager (my configs)\Profile"

if exist %app_data_far% rd /s /q %app_data_far%
mkdir %app_data_far%
mkdir %app_data_far_profile%

xcopy %far_profile% %app_data_far_profile% /k /h /y /r /c /s /e

@echo off
echo.
echo --------------------------------------------
echo Copy files from "%FARHOME%\Profile"
echo to "%APPDATA%\Far Manager (my configs)\Profile"
echo finished.
echo --------------------------------------------
echo.

echo         !!!
echo.
echo --------------------------------------------
echo Make the next steps:
echo  1) close Far manager
echo  2) rename "%APPDATA%\Far Manager (my configs)"
echo     to "%APPDATA%\Far Manager"
echo  3) open Far manager
echo --------------------------------------------
echo.

pause
