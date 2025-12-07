# notas.sh - Script simple para versionar notas de Obsidian con Git

Este script permite mantener sincronizado un repositorio de notas (Obsidian Vault) mediante dos operaciones básicas:
- `-push`: agrega, commitea y envía los cambios al repositorio remoto.
- `-pull`: obtiene cambios desde el repositorio remoto.
Su finalidad es versionar rápido, sin la necesidad de estar en el directorio del Vault y escribir comandos de Git a mano.

----

## Instalación

1. Clonar el repositorio
2. Hacer el script ejecutable:
```shell
chmod +x notas.sh
```
3. Moverlo a `/usr/local/bin` para usarlo desde cualquier lado:
```shell
sudo mv notas.sh /usr/local/bin/notas
```
Ejecutarlo simplemente como:
```shell
notas -push
notas -pull
```

---

## Configuración previa

Editar la variable `VAULT` dentro del script y poner la ruta a la carpeta, por ejemplo:
```shell
VAULT="$HOME/Obsidian/Notas"
```
Asegurarse de que esa carpeta sea un repositorio Git válido:
```shell
cd ~/Obsidian/Notas
git init
git remote add origin <URL_DE_TU_REPO>
git pull origin main # si ya existe
```

---

## Uso

**Subir cambios :**
```shell
notas -push
```

**Bajar cambios**
```shell
notas -pull
```

>[!WARNING]
> Recordá ejecutar **notas -pull antes** de editar y **notas -push después**, para evitar conflictos o pérdida de información.

---

## Ejemplo de flujo recomendado
1. Abrir la terminal -> `notas -pull`
2. Escribir en Obsidian
3. Guardar y cerrar
4. En la terminal -> `notas -push`

---
## Requisitos
- Git instalado
- Bash
- Un repositorio remoto (GitHub, GitLab, etc.)

---

## Futuras mejoras
- Automatizar el push/pull al abrir o cerrar Obsidian.
- Agregar más flags (ej: `--status`, `--log`).
- Mejor manejo de errores por conflictos.

