@echo off
chcp 65001 >nul
title Pro 5TB - 1 month at US$0.99
cd /d "%~dp0"
set PYTHONIOENCODING=utf-8

echo ============================================================
echo   Google AI Pro (5 TB)  -  1 month 95% OFF
echo   SKU: g1.2tb.ai.1month_ip_95p.acq
echo   First month: US$0.99   (normal US$19.99)
echo ============================================================
echo.

python ultra0.py --account "current@device" --no-add --force --allow-paid --sku g1.2tb.ai.1month_ip_95p.acq

echo.
pause