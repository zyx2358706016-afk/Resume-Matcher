@echo off
chcp 65001 >nul

echo ================================
echo Resume-Matcher Launcher
echo ================================
echo.


set PROJECT_DIR=%~dp0


echo Checking Python...

python --version >nul 2>&1

if errorlevel 1 (
    echo Python not installed
    pause
    exit /b
)

echo Python OK


echo.
echo Checking Node.js...

node -v >nul 2>&1

if errorlevel 1 (
    echo Node.js not installed
    pause
    exit /b
)

echo Node.js OK


echo.
echo Checking uv...

uv --version >nul 2>&1

if errorlevel 1 (
    echo uv not installed
    pause
    exit /b
)

echo uv OK


echo.
echo Checking .env...


if not exist "%PROJECT_DIR%apps\backend\.env" (

    echo Backend .env missing

    pause
    exit /b

)

echo .env OK


echo.
echo Starting Backend...


start "Resume Backend" cmd /k ^
"cd /d %PROJECT_DIR%apps\backend && uv run app"



timeout /t 5 >nul



echo Starting Frontend...


start "Resume Frontend" cmd /k ^
"cd /d %PROJECT_DIR%apps\frontend && npm run dev"



echo.
echo ================================
echo Started Successfully
echo ================================


pause
