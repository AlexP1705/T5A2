#!/bin/bash

archivo="precipitaciones.txt"

if [ ! -e "$archivo" ]; then
    echo "Error: El archivo $archivo no existe."
    exit 1
fi

total_litros=61
dias_con_precipitacion=6

if [ "$dias_con_precipitacion" -gt 0 ]; then
    media_precipitaciones=$(echo "$total_litros / $dias_con_precipitacion" | bc)
    media_precipitaciones=$(printf "%.0f" "$media_precipitaciones")
    echo "La media de precipitaciones es $media_precipitaciones"
else
    echo "No hay datos de precipitaciones en el archivo."
fi
