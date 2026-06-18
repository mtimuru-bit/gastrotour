@echo off
setlocal

cd /d "%~dp0"

echo.
echo === Deploy gastrotour to github.com/mtimuru-bit/gastrotour ===
echo.

echo [1/3] Staging files...
git add -A

echo.
echo [2/3] Committing...
for /f "tokens=*" %%i in ('powershell -NoProfile -Command "Get-Date -Format yyyy-MM-dd_HH-mm"') do set TS=%%i
git commit -m "Update %TS%"

echo.
echo [3/3] Pushing to GitHub...
git push

echo.
echo === Done! In ~1 minute updated at: ===
echo     https://mtimuru-bit.github.io/gastrotour/
echo.
pause
