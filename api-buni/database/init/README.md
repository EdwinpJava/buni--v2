# Inicializacion de MySQL

MySQL ejecuta los archivos `.sql` de esta carpeta, en orden alfabetico,
**solo la primera vez** que arranca (cuando el volumen `mysql_data` esta vacio).

Coloca aqui el esquema de la base de datos, por ejemplo `01-schema.sql`:

- Exporta solo la estructura (sin datos): en MySQL Workbench,
  *Data Export > Dump Structure Only*, o
  `mysqldump --no-data -u root -p buni > 01-schema.sql`.
- Quita las lineas `CREATE DATABASE` y `USE ...` del dump: los scripts ya se
  ejecutan sobre la base definida en `DB_NAME`.
- No subas dumps con datos reales de usuarios al repositorio.

Si la base ya fue creada, estos archivos se ignoran. Para reiniciarla hay que
borrar el volumen `mysql_data` en Dokploy (se pierden los datos).
