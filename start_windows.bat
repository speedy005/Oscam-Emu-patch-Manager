@echo off
setlocal EnableExtensions
cd /d "%~dp0"

echo ========================================
echo OSCam Patch Manager - Windows Start
echo ========================================
echo.

set "PYTHON_EXE="

REM ========================================
REM Python automatisch erkennen
REM ========================================

echo Suche nach einer Python-Installation ...
echo.

REM Versuch 1: Python-Launcher
for /f "delims=" %%P in ('py -c "import sys; print(sys.executable)" 2^>nul') do (
    set "PYTHON_EXE=%%P"
)

REM Versuch 2: Python ueber PATH
if not defined PYTHON_EXE (
    for /f "delims=" %%P in ('python -c "import sys; print(sys.executable)" 2^>nul') do (
        set "PYTHON_EXE=%%P"
    )
)

REM Keine Python-Installation gefunden
if not defined PYTHON_EXE (
    echo FEHLER: Python wurde nicht gefunden.
    echo.
    echo Bitte Python installieren oder zum PATH hinzufuegen.
    echo Download: https://www.python.org/downloads/
    echo.
    pause
    exit /b 1
)

REM ========================================
REM Python-Version anzeigen
REM ========================================

echo Verwendetes Python:
echo "%PYTHON_EXE%"
"%PYTHON_EXE%" --version
echo.

REM ========================================
REM Python-Datei pruefen
REM ========================================

if not exist "oscam_patch_manager.py" (
    echo FEHLER: oscam_patch_manager.py wurde nicht gefunden.
    echo Bitte pruefe, ob die Datei im selben Ordner liegt.
    echo.
    pause
    exit /b 1
)

REM ========================================
REM Syntaxpruefung
REM ========================================

echo Pruefe Syntax ...
"%PYTHON_EXE%" -m py_compile oscam_patch_manager.py

if errorlevel 1 (
    echo.
    echo FEHLER: Syntaxpruefung fehlgeschlagen.
    pause
    exit /b 1
)

echo.
echo Syntaxpruefung erfolgreich.
echo.

REM ========================================
REM Programm starten
REM ========================================

echo Starte OSCam Patch Manager ...
echo.

"%PYTHON_EXE%" oscam_patch_manager.py

if errorlevel 1 (
    echo.
    echo FEHLER beim Start. Siehe Fehlermeldung oben.
    pause
    exit /b 1
)

echo.
echo OSCam Patch Manager wurde beendet.
pause
exit /b 0