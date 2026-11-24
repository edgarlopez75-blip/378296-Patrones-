-- A12. Columnas del DENUE
-- Para qué sirve: obtener el nombre y el tipo de cada columna para armar el diccionario de datos.
-- Base de datos: postgres
-- Resultado: 42 columnas.
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'denue_inegi_oficial'
ORDER BY ordinal_position;
