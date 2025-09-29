#!/bin/bash


if [ $# -eq 0 ]; then
    echo "Error: debes pasar al menos un parámetro."
    exit 1
fi


for parametro in "$@"; do
    echo "Procesando: $parametro"


    case "$parametro" in
        /*) ;;
        *)
            echo " Error: el parámetro '$parametro' debe comenzar con '/'."
            continue
            ;;
    esac

    if echo "$parametro" | grep -q '[^a-zA-Z0-9/]'; then
        echo " Error: el parámetro '$parametro' contiene caracteres no permitidos."
        continue
    fi


   if [[ -f "$parametro" ]] && file "$parametro" | grep -q "text"; then
        echo " Mostrando contenido de '$parametro':"
        cat "$parametro"
        echo "--------------------------------------"
    else
        echo "  Error: '$parametro' no es un archivo de texto válido."
    fi

done