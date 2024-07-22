# Workspace para desarrollo django

## Requisitos
Se trata de la estructura básica de un workspace para desarrollar en django, se ejecuta en un contenedor al abrir la carpeta desde VSCode. Es necesario tener instalado:
- VSCode
- La extensión "Dev Containers" para arrancar los contenedores
- Docker o docker desktop en windows


## Configuración básica
El workspace arranca tres contenedores:
- django: con python y django
- postgres: con el servidor de base de datos
- pgadmin: con la consola para administrar la base de datos

Por defecto trae un proyecto django llamado server:
- Está creada la base de datos en Postgres llamada "bdatos"
- Para ejecutar el servidor hay que ejecutar run.sh

## Credenciales por defecto
- postgres: adminbd / bdadmin
- pgadmin: adminpg@sevilla.es / pgadmin
- consola django: appuser / appuser