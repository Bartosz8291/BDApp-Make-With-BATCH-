@echo off
REM Kontroleer of 'n .bdapp-lêer as argument verskaf is
if "%1"=="" (
    echo Gebruik: %0 lêernaam.bdapp
    exit /b 1
)

REM Kontroleer of die .bdapp-lêer bestaan
if not exist "%1" (
    echo %1 nie gevind nie.
    exit /b 1
)

REM Voer die .bdapp-lêer uit
"%1"
if %errorlevel% neq 0 (
    echo Daar was 'n fout tydens die uitvoer van %1
    exit /b %errorlevel%
)

echo %1 suksesvol uitgevoer
exit /b 0
