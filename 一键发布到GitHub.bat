@echo off
if exist "%~dp0publish.ps1" (
    powershell -ExecutionPolicy Bypass -File "%~dp0publish.ps1"
) else (
    powershell -ExecutionPolicy Bypass -File "%~dp0..\Rick-Math-Note-Site\publish.ps1"
)
pause
