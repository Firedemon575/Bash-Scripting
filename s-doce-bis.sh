#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Error: debes pasar exactamente un parametro"
    exit 1
fi

parametro=$1


case "$parametro" in
    /*) ;;  # OK
    *) echo "El parametro debe comenzar con '/'."; exit 1 ;;
esac


if echo "$parametro" | grep -q '[^a-zA-Z0-9/]'; then
    echo "Solo se permiten letras, numeros y '/'."
    exit 1
fi


if [ -f "$parametro" ] && file "$parametro" | grep -q "text"; then
    cat "$parametro"
else
    echo "No es un archivo de texto valido"
    exit 1
fi