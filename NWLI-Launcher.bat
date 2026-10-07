@echo off
title NoWebsite Lead Intelligence (NWLI) — Windows Launcher
cd /d "%~dp0"
echo =====================================================================
echo    NoWebsite Lead Intelligence (NWLI) v1.0.0
echo    Launching native executable...
echo =====================================================================
if exist "NWLI.exe" (
    start "" "%~dp0NWLI.exe"
) else (
    echo Launching Python backend directly...
    start http://localhost:8000
    cd backend
    python -m uvicorn app.main:app --host 127.0.0.1 --port 8000
)
