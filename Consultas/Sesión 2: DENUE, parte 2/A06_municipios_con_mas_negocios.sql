-- A06. Municipios con más establecimientos
-- Para qué sirve: ver en qué municipios se concentran los establecimientos.
-- Base de datos: postgres
-- Resultado: León, Puebla, Guadalajara, Ecatepec e Iztapalapa encabezan la lista
-- (León con 401,824 filas, que divididas entre 32 son 12,557).
SELECT cve_ent, cve_mun, municipio, COUNT(*) AS negocios
FROM denue_inegi_oficial
GROUP BY cve_ent, cve_mun, municipio
ORDER BY negocios DESC
LIMIT 50;
