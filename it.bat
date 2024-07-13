@echo off
REM Controlla se un file .bdapp è stato fornito come argomento
if "%1"=="" (
    echo Uso: %0 nomefile.bdapp
    exit /b 1
)

REM Controlla se il file .bdapp esiste
if not exist "%1" (
    echo %1 non trovato.
    exit /b 1
)

REM Esegui il file .bdapp
"%1"
if %errorlevel% neq 0 (
    echo Si è verificato un errore durante l'esecuzione di %1
    exit /b %errorlevel%
)

echo %1 eseguito con successo
exit /b 0
