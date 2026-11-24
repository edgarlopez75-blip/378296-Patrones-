-- A01. Duplicados en el DENUE
-- Para qué sirve: comparar cuántas filas tiene la tabla contra cuántas claves distintas hay,
-- para saber si hay establecimientos repetidos.
-- Base de datos: postgres
-- Resultado: 21,011,712 filas y 656,616 claves distintas, o sea que cada establecimiento aparece 32 veces.
SELECT COUNT(*) AS registros, COUNT(DISTINCT clee) AS claves_distintas
FROM denue_inegi_oficial;
