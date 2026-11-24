-- A04. Actividades más frecuentes
-- Para qué sirve: ver a qué se dedican la mayoría de los establecimientos.
-- Base de datos: postgres
-- Resultado: las 30 actividades más frecuentes son de fabricación (tortillas, panadería,
-- herrería, textiles). Los nombres salen con letras dañadas.
SELECT codigo_act, nombre_act, COUNT(*) AS negocios
FROM denue_inegi_oficial
GROUP BY codigo_act, nombre_act
ORDER BY negocios DESC
LIMIT 30;
