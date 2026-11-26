@echo off
chcp 65001 >nul
title 查询当前 Google 账号所有 Pro 5TB 免费/折扣 Offer (零风险不下单)
cd /d "%~dp0"
set PYTHONIOENCODING=utf-8
echo ============================================================
echo   正在通过 Frida + BillingClient 查询当前账号可用的隐藏 Offer...
echo ============================================================
python query_sku.py g1.2tb.ai.subs_variant g1.2tb.ai.12months_eft g1.2tb.ai.18months_eft g1.play.2tb.ai.student g1.2tb.ai.6months_eft g1.2tb.ai.3months_eft g1.play.2tb.ai g1.2tb.ai.12months_ip_90p g1.2tb.ai.12months_ip_75p g1.2tb.ai.3months_ip_90p.acq g1.2tb.ai.1month_ip_95p.acq g1.2tb.ai.12months_eft.1 g1.2tb.ai.12months_eft.2 g1.2tb.ai.6months_eft.1 g1.2tb.ai.3months_eft.22
echo.
pause
