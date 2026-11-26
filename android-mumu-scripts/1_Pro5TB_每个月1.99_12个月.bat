@echo off
chcp 65001 >nul
title Pro 5TB - 12 months at US$1.99 (90% off)
cd /d "%~dp0"
set PYTHONIOENCODING=utf-8

echo ============================================================
echo   Google AI Pro (5 TB)  -  ANNUAL 90% OFF
echo   SKU: g1.2tb.ai.12months_ip_90p   offer: ip-12mo-90p
echo   First 12 MONTHS: US$1.99/month
echo   From month 13:   US$19.99/month
echo   12-MONTH TOTAL:  US$23.88   (normal US$199.99)
echo ============================================================
echo.

python ultra0.py --account "current@device" --no-add --force --allow-paid --sku g1.2tb.ai.12months_ip_90p

echo.
pause
