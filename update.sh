#!/bin/bash

echo "============================"
echo "Iniciando instalación..."
echo "============================"

# Verificar que Python 3 esté instalado
if ! command -v python3 &> /dev/null
then
    echo "ERROR: Python3 no está instalado."
    exit 1
fi

# Crear entorno virtual si no existe
if [ ! -d "venv" ]; then
    echo "Creando entorno virtual..."
    python3 -m venv venv
fi

# Activar entorno virtual
source venv/bin/activate

# Instalar dependencias si existe requirements.txt
if [ -f "requirements.txt" ]; then
    echo "Instalando dependencias..."
    pip install -r requirements.txt
fi

# Instalar pyinstaller si no está
if ! pip show pyinstaller &> /dev/null; then
    echo "Instalando PyInstaller..."
    pip install pyinstaller
fi

# Compilar el programa
echo "Compilando aplicación..."
pyinstaller --onefile app.py

# Verificar si el ejecutable se creó correctamente
if [ -f "dist/app" ]; then
    echo "Compilación exitosa. Moviendo ejecutable..."
    mv -f dist/app ./app
    echo "Ejecutando aplicación..."
    ./app
else
    echo "ERROR: No se pudo compilar el programa."
fi

# Limpieza opcional
rm -rf build dist app.spec

