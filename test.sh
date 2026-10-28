#!/bin/sh

echo "Iniciando pruebas..."

test -f index.html || {
    echo "ERROR: Falta index.html"
    exit 1
}

grep -q "Mi primera página web" index.html || {
    echo "ERROR: No se encontró el título"
    exit 1
}

echo "Todas las pruebas pasaron correctamente."