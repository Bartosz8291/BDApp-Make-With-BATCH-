@echo off
REM 引数として .bdapp ファイルが提供されているか確認する
if "%1"=="" (
    echo 使用方法: %0 ファイル名.bdapp
    exit /b 1
)

REM .bdapp ファイルが存在するか確認する
if not exist "%1" (
    echo %1 が見つかりません。
    exit /b 1
)

REM .bdapp ファイルを実行する
"%1"
if %errorlevel% neq 0 (
    echo %1 を実行中にエラーが発生しました
    exit /b %errorlevel%
)

echo %1 が正常に実行されました
exit /b 0
