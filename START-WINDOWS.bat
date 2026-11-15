@echo off
cd /d "%~dp0"
node --version
if errorlevel 1 (
 echo Node.js 24 LTS or newer is required. Install from https://nodejs.org
 pause
 exit /b 1
)
node -e "if (parseInt(process.versions.node)<24) process.exit(1)"
if errorlevel 1 (
 echo Node.js 24 or newer is required.
 pause
 exit /b 1
)
echo Open http://localhost:8080 in your browser.
node server.mjs
pause
