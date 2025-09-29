#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Error: Necesitas darme archivos para trabajar"
    echo "Ejemplo: ./s-diez.sh s-seis.sh"
    exit 1
fi

echo "Voy a añadir permisos de ejecucion a los archivos"
echo ""

for archivo in "$@"; do
    echo "Revisando: $archivo"

if [ ! -e "$archivo" ]; then
        echo "  Este archivo no existe"
        echo ""
        continue
fi

if [ -O "$archivo" ]; then
      chmod o+x "$archivo"
      echo "  Permiso añadido correctamente"
 else
      echo " No puedo cambiarlo porque no eres el dueño"
fi
      echo ""
done
      echo "Se termino de revisar todos los archivos"