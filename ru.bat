@echo off
REM Проверьте, указан ли файл .bdapp в качестве аргумента
if "%1"=="" (
    echo Использование: %0 файл.bdapp
    exit /b 1
)

REM Проверьте, существует ли файл .bdapp
if not exist "%1" (
    echo Файл %1 не найден.
    exit /b 1
)

REM Запустить файл .bdapp
"%1"
if %errorlevel% neq 0 (
    echo Произошла ошибка при запуске %1
    exit /b %errorlevel%
)

echo Успешно запущен %1
exit /b 0
