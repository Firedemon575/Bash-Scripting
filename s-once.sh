#!/bin/bash

if [ $# -eq 0 ]; then
        echo "debes dar al menos un usuario como parametro"
        echo "Ejemplo: debes introducir ./s-once.sh pablo alejandro usuario2"
        exit 1
fi

for usuario in "$@"; do
        echo "Buscando grupos del usuario: $usuario"

if  id "$usuario"  >/dev/null 2>&1; then
        groups "$usuario"
else
        echo "el usuario '$usuario' no existe en el sistema"
fi

done