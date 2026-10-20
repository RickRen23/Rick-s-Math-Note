[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$SiteDir = $PSScriptRoot
if (-not (Test-Path "$SiteDir\quartz.config.yaml")) {
    if (Test-Path "$SiteDir\..\Rick-Math-Note-Site\quartz.config.yaml") {
        $SiteDir = "$SiteDir\..\Rick-Math-Note-Site"
    }
}

Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "       Rick's Math Note - 发布到 GitHub Pages" -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host ""

Set-Location $SiteDir

Write-Host "[1/3] 添加所有笔记变动 (git add)..." -ForegroundColor Yellow
git add -A

Write-Host "[2/3] 提交更新 (git commit)..." -ForegroundColor Yellow
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
git commit -m "update math notes: $timestamp"

Write-Host "[3/3] 推送到 GitHub (git push)..." -ForegroundColor Yellow
git push origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "========================================================" -ForegroundColor Green
    Write-Host "发布成功！GitHub Actions 正在云端自动构建您的网页。" -ForegroundColor Green
    Write-Host "大约 1-2 分钟后即可访问: https://rickren23.github.io/Rick-s-Math-Note/" -ForegroundColor Green
    Write-Host "（提示：查看时若页面未刷新，请按 Ctrl + F5 强制刷新浏览器缓存）" -ForegroundColor Cyan
    Write-Host "========================================================" -ForegroundColor Green
} else {
    Write-Host ""
    Write-Host "推送出现错误，请检查网络连接或权限。" -ForegroundColor Red
}
