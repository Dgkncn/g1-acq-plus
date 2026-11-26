@echo off
chcp 65001 >nul
title Pro 5TB - 3 months at US$1.99 (90% off)
cd /d "%~dp0"
set PYTHONIOENCODING=utf-8

echo ============================================================
echo   Google AI Pro (5 TB)  -  3 months 90% OFF
echo   SKU: g1.2tb.ai.3months_ip_90p.acq
echo   First 3 MONTHS: US$1.99/month
echo   3-MONTH TOTAL:  US$5.97
echo ============================================================
echo.

python ultra0.py --account "current@device" --no-add --force --allow-paid --sku g1.2tb.ai.3months_ip_90p.acq

echo.
pause
