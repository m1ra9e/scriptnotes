rem =_BACKGROUND_COPY_=

goto start
-------------------
This batch file is 
used for starting 
copy in the background.
-------------------
When it run, the path 
of file/directory for 
copy and the path of 
target place will be 
passed to the batch file.

example for run copy in background:
start /min /low cmd /c "%FARHOME%\_tool_background\bcopy.bat" srcObject tagregPlace
-------------------
Batch file is written 01/05/2019
Last fix made 01/05/2019
-------------------
:start

@echo off

rem getting paths of 'srcObject' and 'tagregPlace' 
set src_obj=%~1
set target_plc=%~2

cd\
cls
echo.
echo --------------------------------------------
echo Copy "%src_obj%"
echo to "%target_plc%"
echo started.
echo --------------------------------------------
echo.

rem getting name of 'srcObject' and placed it to the 'src_obj_name'
FOR /F "delims=|" %%A IN ("%src_obj%") do set src_obj_name=%%~nxA

rem determining: is 'srcObject' file or directory
cd %src_obj% 
if "%errorlevel%"=="0" goto :directory
goto :file 

rem directory copy command
:directory
if exist %target_plc%\%src_obj_name% (goto :copydir)
mkdir %target_plc%\%src_obj_name%
:copydir
echo on
xcopy %src_obj% %target_plc%\%src_obj_name% /k /h /y /r /c /s /e
attrib -a %target_plc%\%src_obj_name%\*.* /s /d
@echo off
goto :end

rem file copy command
:file
echo.
echo JUST IN CASE: don't worry about previous message, 
echo it's just service message, every thing is under control.
echo.
rem saved this code just in case
rem 'copy' do not work with hidden and system files
rem copy /y %src_obj% %target_plc%\%src_obj_name% 
rem
rem 'echo f' here for answer to the request is a file or directory
echo on
echo f | xcopy %src_obj% %target_plc%\%src_obj_name% /k /h /y /r /c /s /e
attrib -a %target_plc%\%src_obj_name%
@echo off
goto :end

:end
@echo off
echo.
echo ---------------------------------------------
echo Copy "%src_obj%"
echo to "%target_plc%"
echo finished.
echo ---------------------------------------------
echo.
