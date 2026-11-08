# Inicializacion de MySQL

MySQL ejecuta los archivos `.sql` de esta carpeta, en orden alfabetico,
**solo la primera vez** que arranca (cuando el volumen `mysql_data` esta vacio).

`01-buni.sql` contiene el esquema y los datos iniciales de BUNI. El volcado se
limpio para incluir solo la base `buni`; no importes el esquema del sistema
MySQL (`sys`). El servicio `db` del `docker-compose.yml` monta esta carpeta y
crea la base indicada por `DB_NAME` (por defecto, `buni`).

No agregues aqui volcados con datos reales o secretos. Si reemplazas el SQL,
asegurate de exportar la base `buni` y omitir `CREATE DATABASE` y `USE`, ya que
MySQL ejecuta los scripts dentro de la base configurada por `DB_NAME`.

Si el volumen `mysql_data` ya tiene una base, estos archivos se ignoran. Para
cargar este esquema en un volumen existente, haz primero una copia de seguridad
y sigue un procedimiento de migracion; no borres el volumen sin confirmar que
puedes perder sus datos.
