@echo off

echo ================================
echo Stopping Resume-Matcher
echo ================================


echo Stopping Backend...

taskkill /f /im python.exe >nul 2>&1


echo Stopping Frontend...

taskkill /f /im node.exe >nul 2>&1


echo.
echo Resume-Matcher stopped.


pause
