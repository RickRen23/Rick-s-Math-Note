@echo off
chcp 65001 >nul
title Rick's Math Note - 本地实时预览
echo ========================================================
echo        Rick's Math Note - 个人数学笔记网站本地预览
echo ========================================================
echo.
echo 正在启动本地预览服务器...
echo 启动完成后，请在浏览器中打开: http://localhost:8080
echo 当你在 Obsidian 中修改或新建笔记并保存时，网站将自动热重载！
echo 按 Ctrl + C 可停止预览服务器。
echo.

cd /d "%~dp0"
if exist "..\Rick-Math-Note-Site" (
    cd /d "..\Rick-Math-Note-Site"
)

start "" http://localhost:8080
npx quartz build --serve

pause
