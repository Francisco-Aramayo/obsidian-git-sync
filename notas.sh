#!/bin/bash

# Modificar path y nombre del vault
VAULT="$HOME/Documentos/notas-obsidian"
cd "$VAULT" || exit

MSG="Actualizacion: $(date +"%Y-%m-%d %H:%M")"

case "$1" in
    -push)
        echo "pusheando..."
        
        # Evitar commits vacíos
        if git diff --quiet; then
            echo "No hay cambios para pushear."
            exit 0
        fi
        
        git add .
        git commit -m "$MSG"
        git push origin main
        ;;
    -pull)
        echo "pulleando..."
        git pull origin main || {
            echo "Error al hacer pull."
            exit 1
        }
        ;;
    *)
        echo "parametro incorrecto, usar -push o -pull"
        exit 1
        ;;
esac

