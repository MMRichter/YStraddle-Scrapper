# Straddle Analyzer - Yahoo Finanzas

Este proyecto realiza **scraping de tablas de opciones financieras** desde Yahoo Finanzas y genera automáticamente una tabla de estrategia **Straddle** en formato Excel, a partir de los datos obtenidos.

## 🧩 Descripción

El programa realiza los siguientes pasos:

1. Lee un archivo `.txt` con los códigos de opciones (uno por línea).
2. Descarga desde Yahoo Finanzas las tablas de opciones asociadas (calls y puts).
3. Procesa la información y genera automáticamente una hoja de cálculo `.xlsx` con la estrategia straddle construida.

### 📌 Futuras implementaciones

- Archivos de configuración personalizados (entrada y salida).
- Descargas concurrentes para mayor velocidad.
- Generación separada de tablas para **Calls** y **Puts**.
- Sistema completo de configuración avanzada.

## ⚙️ Requisitos

- Python 3.x (preferentemente ≥ 3.8)
- Acceso a Internet

## 🧪 Instalación

Para compilar el programa, ejecutar el script correspondiente según tu sistema operativo:

- **Windows:** `update.bat`
- **Linux/macOS:** `update.sh`

Esto instalará las dependencias y creará un ejecutable `app` o `app.exe`.

## 🚀 Modo de uso

1. Crear un archivo `.txt` con los códigos de las opciones (uno por línea). Ejemplo:

```
AAPL
MSFT
```

2. Arrastrar ese archivo `.txt` sobre el archivo `app.exe` (o ejecutarlo con el archivo como argumento).

3. El programa descargará los datos y generará un archivo `.xlsx` con la estrategia calculada.

## 📂 Estructura del proyecto

```
📁 tu-proyecto/
├── app.py
├── requirements.txt
├── update.bat
├── update.sh
└── README.md
```

## 📃 Licencia

MIT License
