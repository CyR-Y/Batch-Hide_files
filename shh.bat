@echo off
cd /d %~dp0

set "logFile=hidden_files.txt"
set "hiddenFilesList=hidden_files_list.txt"
set "tempfile=%TEMP%\cancel_launch.tmp"

if not exist "%logFile%" (
    echo Current Hidden Files > "%logFile%"
    echo ========================== >> "%logFile%"
)

if not exist "%hiddenFilesList%" (
    echo Hidden Files List > "%hiddenFilesList%"
    echo ========================== >> "%hiddenFilesList%"
)

:menu
cls
echo.
echo            HACKER FILE HIDER
echo        ~~~~ Your Secret Forest ~~~~
echo =========================================
echo.
echo     [1] Hide a file
echo     [2] Show a file
echo     [3] View hidden files
echo     [4] Exit (Press 'X')
echo.
set /p choice=Choose an option (1-4): 

if "%choice%" == "1" goto hide
if "%choice%" == "2" goto show
if "%choice%" == "3" goto view_hidden
if "%choice%" == "4" exit
goto menu

:hide
cls
echo =========================================
echo          HIDE A FILE
echo =========================================
set "defaultDir=%USERPROFILE%"
set /p filepath=Enter the full path of the file to hide (default: %defaultDir%): 

if "%filepath%"=="" set "filepath=%defaultDir%"

if not exist "%filepath%" (
    echo Error: No file found. Please check the path and try again.
    pause
    goto menu
)

attrib +h "%filepath%"
if errorlevel 1 (
    echo Failed to hide the file. Please check the path and try again.
) else (
    echo File hidden successfully!
    echo %filepath% >> "%hiddenFilesList%"
)
pause
goto menu

:show
cls
echo =========================================
echo          SHOW A FILE
echo =========================================
set /p filepath=Enter the full path of the file to show (including the file extension): 

if not exist "%filepath%" (
    echo Error: File not found. Please check the path and try again.
    pause
    goto menu
)

attrib -h "%filepath%" || (
    echo Failed to show the file. Please check the path and try again.
    pause
    goto menu
)

echo File shown successfully!
findstr /v /x "%filepath%" "%hiddenFilesList%" > "%hiddenFilesList%.tmp"
move /y "%hiddenFilesList%.tmp" "%hiddenFilesList%" > nul
echo %filepath% removed from hidden files list.
pause
goto menu

:view_hidden
cls
echo =========================================
echo          HIDDEN FILES
echo =========================================
echo Here are the hidden files:
echo -----------------------------------------
type "%hiddenFilesList%"
echo -----------------------------------------
echo Press any key to return to menu...
pause > nul
goto menu
