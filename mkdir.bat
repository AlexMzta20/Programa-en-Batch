@echo off
setlocal

set "nombre_carpeta=BatchAuto"
set "archivo_mensaje=%CD%\%nombre_carpeta%\leeme.txt"
set "mensaje=Hola, fui creado automáticamente en batch :D"

echo Creando la carpeta %nombre_carpeta%...
mkdir "%nombre_carpeta%"

if not exist "%nombre_carpeta%" (
    echo Error al crear la carpeta.
    pause
    exit /b
)

echo La carpeta se ha creado correctamente.

cd "%nombre_carpeta%"

echo %mensaje% > "%archivo_mensaje%"

if not exist "%archivo_mensaje%" (
    echo Error al crear el archivo de mensaje.
    pause
    exit /b
)

echo Se ha creado el archivo de mensaje "%archivo_mensaje%".
echo.
echo Contenido del archivo:
type "%archivo_mensaje%"

pause
