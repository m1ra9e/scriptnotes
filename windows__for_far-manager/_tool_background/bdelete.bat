rem =_BACKGROUND_DELETE_=

goto start
-------------------
This batch file is 
used for starting 
delete in the background.
-------------------
When it run, the path 
of file/directory for 
delete will be 
passed to the batch file.

example for run delete in background:
start "" /min /low call "%FARHOME%\_tool_background\bdelete.bat" srcObject
-------------------
Batch file is written 04/05/2019
Last fix made 08/05/2019
-------------------
:start

@echo off

rem getting paths of 'srcObject' and 'tagregPlace' 
set src_obj=%~1

cd\
cls
echo.
echo --------------------------------------------
echo Delete "%src_obj%"
echo started.
echo --------------------------------------------
echo.

rem determining: is 'srcObject' file or directory
cd %src_obj% 
if "%errorlevel%"=="0" goto :directory
goto :file 

rem directory delete
:directory
echo on
rd /s /q "%src_obj%"

@echo off
goto :end

rem file delete
:file
echo.
echo JUST IN CASE: don't worry about previous message, 
echo it's just service message, every thing is under control.
echo.
echo on
attrib -s -h "%src_obj%"
del /f /q "%src_obj%"
@echo off
goto :end

:end
@echo off
echo.
echo ---------------------------------------------
echo Delete "%src_obj%"
echo finished.
echo ---------------------------------------------
echo.

ping -n 5 localhost > nul

exit