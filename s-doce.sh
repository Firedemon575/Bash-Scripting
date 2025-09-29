#!/bin/bash

if [ $# -ne 1 ]; then
        echo "Error necesito exactamente 1 parametro"
        echo "Ejemplo: ./s-doce.sh /home/2024.20/aso/archivo.txt"
        exit 1
fi

archivo="$1"

echo "Voy a comprobar: $archivo"

case $archivo in
    /*)
        echo "bien, empieza por /"
        ;;
     *) echo "Tu escribiste: $archivo"
        exit 1
        ;;
esac

if  [ -f "$archivo" ]; then
if file "$archivo" | grep -q "text"; then
    echo "Es un archivo de texto, aquí está el contenido:"
    echo "================================"
    cat "$archivo"
else
    echo "Error: el archivo no contiene texto"
    exit 1
fi

        echo "$archivo: es una archivo regular "

else
        echo "no es un archivo"
        exit 1
fi