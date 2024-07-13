@echo off
REM Verifique se um arquivo .bdapp foi fornecido como argumento
if "%1"=="" (
    echo Uso: %0 nome_do_arquivo.bdapp
    exit /b 1
)

REM Verifique se o arquivo .bdapp existe
if not exist "%1" (
    echo %1 não encontrado.
    exit /b 1
)

REM Execute o arquivo .bdapp
"%1"
if %errorlevel% neq 0 (
    echo Ocorreu um erro ao executar %1
    exit /b %errorlevel%
)

echo %1 executado com sucesso
exit /b 0
