@echo off
REM 检查是否提供了 .bdapp 文件作为参数
if "%1"=="" (
    echo 使用方法: %0 文件名.bdapp
    exit /b 1
)

REM 检查 .bdapp 文件是否存在
if not exist "%1" (
    echo 找不到 %1。
    exit /b 1
)

REM 运行 .bdapp 文件
"%1"
if %errorlevel% neq 0 (
    echo 运行 %1 时发生错误
    exit /b %errorlevel%
)

echo 成功运行 %1
exit /b 0
