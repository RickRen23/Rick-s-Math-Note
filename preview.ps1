[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$SiteDir = $PSScriptRoot
if (-not (Test-Path "$SiteDir\quartz.config.yaml")) {
    if (Test-Path "$SiteDir\..\Rick-Math-Note-Site\quartz.config.yaml") {
        $SiteDir = "$SiteDir\..\Rick-Math-Note-Site"
    }
}

Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "       Rick's Math Note - 本地实时预览" -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "正在启动本地预览服务器..." -ForegroundColor Yellow
Write-Host "启动后，请在浏览器中访问: http://localhost:8080" -ForegroundColor Green
Write-Host "Obsidian 中保存笔记时网页将自动热重载！" -ForegroundColor Green
Write-Host "按 Ctrl + C 可关闭服务器。" -ForegroundColor Gray
Write-Host ""

Set-Location $SiteDir
Start-Process "http://localhost:8080"
npx quartz build --serve
