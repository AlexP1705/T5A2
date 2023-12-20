#!/bin/bash
archivo="precipitaciones.txt"

if [ ! -e "$archivo" ]; then
    echo "Error: El archivo $archivo no existe."
    exit 1
fi

dias=("Lunes" "Martes" "Miércoles" "Jueves" "Viernes" "Sábado" "Domingo")

while read -r dia cantidad_litros; do
    if [ "$cantidad_litros" -eq 0 ]; then
        echo "${dias[$((dia-1))]}"
    fi
   
    if [ "$dia" -eq 7 ]; then
        dia=0
    fi
done < "$archivo"