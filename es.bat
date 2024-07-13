@echo off
REM Verificar si se ha proporcionado un archivo .bdapp como argumento
if "%1"=="" (
    echo Uso: %0 nombre_del_archivo.bdapp
    exit /b 1
)

REM Verificar si el archivo .bdapp existe
if not exist "%1" (
    echo %1 no encontrado.
    exit /b 1
)

REM Ejecutar el archivo .bdapp
"%1"
if %errorlevel% neq 0 (
    echo Hubo un error al ejecutar %1
    exit /b %errorlevel%
)

echo %1 se ejecutó correctamente
exit /b 0
