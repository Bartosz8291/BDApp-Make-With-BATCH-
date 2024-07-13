@echo off
REM Check if a .bdapp file is provided as an argument
if "%1"=="" (
    echo Usage: %0 filename.bdapp
    exit /b 1
)

REM Check if the .bdapp file exists
if not exist "%1" (
    echo %1 not found.
    exit /b 1
)

REM Run the .bdapp file
"%1"
if %errorlevel% neq 0 (
    echo There was an error running %1
    exit /b %errorlevel%
)

echo Successfully ran %1
exit /b 0
