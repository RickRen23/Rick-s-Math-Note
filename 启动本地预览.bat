@echo off
if exist "%~dp0preview.ps1" (
    powershell -ExecutionPolicy Bypass -File "%~dp0preview.ps1"
) else (
    powershell -ExecutionPolicy Bypass -File "%~dp0..\Rick-Math-Note-Site\preview.ps1"
)
pause
