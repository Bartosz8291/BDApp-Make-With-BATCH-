@echo off
REM Sprawdź, czy plik .bdapp został podany jako argument
if "%1"=="" (
    echo Użycie: %0 plik.bdapp
    exit /b 1
)

REM Sprawdź, czy plik .bdapp istnieje
if not exist "%1" (
    echo Nie znaleziono pliku %1.
    exit /b 1
)

REM Uruchom plik .bdapp
"%1"
if %errorlevel% neq 0 (
    echo Wystąpił błąd podczas uruchamiania %1
    exit /b %errorlevel%
)

echo Pomyślnie uruchomiono %1
exit /b 0
