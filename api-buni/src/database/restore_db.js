import fs from 'fs';
import mysql from 'mysql2/promise';
import { config } from 'dotenv';

config();

function splitSql(sqlText) {
  const queries = [];
  let query = '';
  let inString = false;
  let stringChar = '';
  let inLineComment = false;
  let inBlockComment = false;

  for (let i = 0; i < sqlText.length; i++) {
    const char = sqlText[i];
    const nextChar = sqlText[i + 1];

    if (inLineComment) {
      if (char === '\n') {
        inLineComment = false;
      }
      continue;
    }

    if (inBlockComment) {
      if (char === '*' && nextChar === '/') {
        inBlockComment = false;
        i++;
      }
      continue;
    }

    // Check for comments
    if (char === '-' && nextChar === '-') {
      inLineComment = true;
      i++;
      continue;
    }
    if (char === '/' && nextChar === '*') {
      inBlockComment = true;
      i++;
      continue;
    }

    // Check for string boundaries (handle escaping)
    if ((char === "'" || char === '"' || char === '`') && sqlText[i - 1] !== '\\') {
      if (inString && stringChar === char) {
        inString = false;
      } else if (!inString) {
        inString = true;
        stringChar = char;
      }
    }

    query += char;

    if (char === ';' && !inString) {
      const q = query.trim();
      // Only keep statements that aren't empty, comments, or settings/system checks
      if (q && q !== ';' && !q.startsWith('/*!')) {
        queries.push(q);
      }
      query = '';
    }
  }
  const q = query.trim();
  if (q && q !== ';' && !q.startsWith('/*!')) {
    queries.push(q);
  }
  return queries;
}

async function main() {
  const connection = await mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    port: process.env.DB_PORT,
    multipleStatements: true, // Allow multiple statements in one query if needed
  });

  try {
    console.log('Creando la base de datos si no existe...');
    await connection.query(`CREATE DATABASE IF NOT EXISTS \`${process.env.DB_NAME}\``);
    console.log(`Base de datos \`${process.env.DB_NAME}\` creada o verificada.`);

    // Cambiar al schema de la base de datos
    await connection.query(`USE \`${process.env.DB_NAME}\``);

    console.log('Leyendo el archivo de volcado SQL...');
    const sqlPath = 'src/database/Dump20260527 (1).sql';
    const sqlText = fs.readFileSync(sqlPath, 'utf8');

    console.log('Procesando y dividiendo sentencias SQL...');
    const queries = splitSql(sqlText);
    console.log(`Se encontraron ${queries.length} sentencias SQL para ejecutar.`);

    // Desactivar restricciones de clave foránea temporalmente
    await connection.query('SET FOREIGN_KEY_CHECKS = 0');
    console.log('Restricciones de clave foránea desactivadas.');

    for (let i = 0; i < queries.length; i++) {
      const q = queries[i];
      // Ignorar inserciones de datos (INSERT INTO) para mantener la base de datos vacía
      if (q.toUpperCase().startsWith('INSERT INTO')) {
        continue;
      }
      try {
        await connection.query(q);
      } catch (err) {
        // Ignorar ciertos errores de configuración del volcado si ocurren
        console.warn(`Advertencia al ejecutar sentencia ${i + 1}:`, err.message);
      }
    }

    // Obtener todas las tablas de la base de datos
    const [tables] = await connection.query(
      `SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = ?`,
      [process.env.DB_NAME]
    );

    console.log(`Vaciando (Truncando) todas las tablas encontradas...`);
    for (const row of tables) {
      const tableName = row.TABLE_NAME || row.table_name;
      console.log(`Truncando tabla: ${tableName}...`);
      await connection.query(`TRUNCATE TABLE \`${tableName}\``);
    }

    // Reactivar restricciones de clave foránea
    await connection.query('SET FOREIGN_KEY_CHECKS = 1');
    console.log('Restricciones de clave foránea reactivadas.');

    console.log('¡Base de datos limpia e inicializada exitosamente!');
  } catch (err) {
    console.error('Error al inicializar la base de datos:', err);
  } finally {
    await connection.end();
  }
}

main();
