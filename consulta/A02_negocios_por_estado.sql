-- A02. Establecimientos por estado
-- Para qué sirve: ver en qué estados hay más establecimientos.
-- Base de datos: postgres
-- Resultado: México, Puebla, Oaxaca y Jalisco encabezan la lista. Los números están inflados
-- por los duplicados (México sale con 2,429,312 filas, que divididas entre 32 son 75,916).
SELECT cve_ent, entidad, COUNT(*) AS negocios
FROM denue_inegi_oficial
GROUP BY cve_ent, entidad
ORDER BY negocios DESC;
