@echo off
chcp 65001 >nul
title Google AI Pro (5 TB) - 12个月  免费试用 (Android Play 强拉)
cd /d "%~dp0"
set PYTHONIOENCODING=utf-8
echo ============================================================
echo   [Android Google Play 强拉隐藏收银台]
echo   目标: Google AI Pro (5 TB) - 12个月  免费试用
echo   SKU : g1.2tb.ai.subs_variant (12months-eft) / g1.2tb.ai.12months_eft
echo ============================================================
python ultra0.py --account "current@device" --no-add --force --plan pro12
echo.
pause
