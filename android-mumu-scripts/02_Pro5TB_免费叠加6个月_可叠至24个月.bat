@echo off
chcp 65001 >nul
title Google AI Pro (5 TB) - 免费叠加 +6个月 (最高叠至 24个月)
cd /d "%~dp0"
set PYTHONIOENCODING=utf-8
echo ============================================================
echo   [Android Google Play 订阅升级叠加模式 --stack]
echo   在已有 12个月免费 Pro 基础上，使用 6months-eft / 6months-eft-2
echo   无损折算叠加 +6 个月（可连点叠加至 18~24 个月  免费）
echo ============================================================
python ultra0.py --account "current@device" --no-add --force --plan pro6 --stack
echo.
pause
