@echo off
setlocal enabledelayedexpansion

set "source_folder=C:\Users\joelj\OneDrive\Escritorio\fr prueba\gen"
set "output_file=lista_de_archivos.txt"

if not exist "%source_folder%" (
    echo La carpeta de origen no existe.
    exit /b
)

pushd "%source_folder%"

if exist "%output_file%" (
    del "%output_file%"
)

for %%F in (*) do (
    echo %%~nF.html >> "%output_file%"
)

popd

echo Proceso completado. Los nombres de los archivos se han guardado en "%output_file" con la extensión .html.

endlocal
