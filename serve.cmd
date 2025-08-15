@echo off
setlocal enabledelayedexpansion
set PORT=5500
if NOT "%1"=="" set PORT=%1

echo Starting static server on http://localhost:%PORT%/
echo Looking for Python...
where py >nul 2>&1
if %ERRORLEVEL%==0 (
  echo Using: py -m http.server %PORT%
  py -m http.server %PORT%
  goto :eof
)

where python >nul 2>&1
if %ERRORLEVEL%==0 (
  echo Using: python -m http.server %PORT%
  python -m http.server %PORT%
  goto :eof
)

where python3 >nul 2>&1
if %ERRORLEVEL%==0 (
  echo Using: python3 -m http.server %PORT%
  python3 -m http.server %PORT%
  goto :eof
)

echo.
echo No Python found on PATH.
echo Options:
echo   1) Install Python 3, then re-run this script.
echo   2) If you have Node.js, run: npx http-server -p %PORT% .
echo   3) Or use VS Code "Live Server" extension.
echo.
pause
