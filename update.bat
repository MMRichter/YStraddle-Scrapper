@echo off
echo ============================
echo Iniciando instalacion...
echo ============================

REM Verificar si Python esta instalado
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python no esta instalado o no esta en PATH.
    pause
    exit /b
)

REM Crear entorno virtual si no existe
if not exist venv (
    echo Creando entorno virtual...
    python -m venv venv
)

REM Activar entorno virtual
call venv\Scripts\activate.bat

REM Instalar dependencias desde requirements.txt si existe
if exist requirements.txt (
    echo Instalando dependencias...
    pip install -r requirements.txt
)

REM Instalar pyinstaller si no esta
pip show pyinstaller >nul 2>&1
if errorlevel 1 (
    echo Instalando PyInstaller...
    pip install pyinstaller
)

REM Compilar el programa
echo Compilando aplicacion...
pyinstaller --onefile app.py

REM Verificar si se creo el ejecutable
if exist dist\app.exe (
    echo Compilacion exitosa. Moviendo archivo...
    move /Y dist\app.exe .\
    echo Ejecutando aplicacion...
    app.exe
) else (
    echo ERROR: No se pudo compilar el programa.
)
REM Limpiar archivos temporales
rmdir /S /Q build
rmdir /S /Q dist
del /Q app.spec

pause
