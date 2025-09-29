#!/bin/bash

read -p "Introduce nombre del usuario": usuario

if [ -z "$usuario" ]; then
        echo "No se  ha introducido ningun usuario";
        exit;
fi

if who | grep -q "$usuario"; then
        echo "El usuario "$usuario" esta conectado al sistema";
else
        echo "el usuario  '$usuario' no esta conectado al sistema";
fi