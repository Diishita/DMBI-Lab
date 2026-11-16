@echo off
echo ==============================================================================
echo DeliverOps: Interactive Food Delivery Analytics and Prediction System
echo Continuous Assessment 2 (CA2) Mini Project - Streamlit Application
echo ==============================================================================
echo.

:: Navigate to script directory
cd /d "%~dp0"

:: Check for python
where python >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Python is not installed or not found in system PATH.
    echo Please install Python 3.9+ and ensure it is added to your PATH.
    pause
    exit /b 1
)

:: Check if virtual environment exists in current or parent folder
if exist "..\.venv\Scripts\activate.bat" (
    echo [INFO] Activating virtual environment from ..\.venv...
    call "..\.venv\Scripts\activate.bat"
) else if exist ".venv\Scripts\activate.bat" (
    echo [INFO] Activating local virtual environment...
    call ".venv\Scripts\activate.bat"
)

:: Verify critical dependencies
echo [INFO] Verifying Streamlit installation...
python -c "import streamlit" >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo [WARNING] Streamlit not detected. Installing dependencies from requirements.txt...
    python -m pip install -r requirements.txt
)

echo.
echo [INFO] Launching DeliverOps Streamlit Application on local browser...
echo Command: python -m streamlit run app.py
echo.
python -m streamlit run app.py

pause

