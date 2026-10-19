@echo off
chcp 65001 >nul
title Rick's Math Note - 一键发布到 GitHub Pages
echo ========================================================
echo        Rick's Math Note - 一键发布到 GitHub
echo ========================================================
echo.

cd /d "%~dp0"
if exist "..\Rick-Math-Note-Site" (
    cd /d "..\Rick-Math-Note-Site"
)

echo [1/3] 检查并添加笔记改动 (git add)...
git add -A

echo [2/3] 提交更新 (git commit)...
for /f "tokens=1-3 delims=/ " %%a in ("%date%") do set mydate=%%a-%%b-%%c
for /f "tokens=1-2 delims=: " %%a in ("%time%") do set mytime=%%a:%%b
git commit -m "update math notes [%mydate% %mytime%]"

echo.
echo [3/3] 推送到 GitHub (git push)...
git push

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ========================================================
    echo 【提示】推送未成功，可能原因：
    echo 1. 尚未关联您的 GitHub 仓库。如果还没关联，请先在 GitHub 创建一个新仓库，然后在命令行运行：
    echo    git remote add origin https://github.com/您的用户名/您的仓库名.git
    echo    git branch -M main
    echo    git push -u origin main
    echo 2. 或者网络连接问题，请检查网络或代理后重试。
    echo ========================================================
) else (
    echo.
    echo ========================================================
    echo 发布成功！GitHub Actions 正在云端自动构建您的网站。
    echo 大约 1-2 分钟后即可在您的 GitHub Pages 地址查看最新笔记！
    echo ========================================================
)

echo.
echo 请按任意键退出...
pause >nul
