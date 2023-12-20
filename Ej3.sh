#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Uso: $0 <directorio>"
    exit 1
fi

directorio="$1"

if [ ! -d "$directorio" ]; then
    echo "Error: El directorio $directorio no existe."
    exit 1
fi

cantidad_borrados=0
for archivo in "$directorio"/*.txt; do
    if [ -e "$archivo" ]; then
        rm "$archivo"
        cantidad_borrados=$((cantidad_borrados + 1))
    fi
done

echo "Se han borrado $cantidad_borrados archivos .txt en el directorio $directorio."
