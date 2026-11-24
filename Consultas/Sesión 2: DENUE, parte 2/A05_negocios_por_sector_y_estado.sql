-- A05. Establecimientos por sector y estado
-- Para qué sirve: ver qué tipos de negocio trae la tabla en cada estado, usando los
-- primeros dos números del código de actividad.
-- Base de datos: postgres
-- Resultado: solo aparecen los sectores 31, 32 y 33, que son de manufactura (96 filas: 32 estados por 3 sectores).
SELECT cve_ent, LEFT(codigo_act::text, 2) AS sector, COUNT(*) AS negocios
FROM denue_inegi_oficial
GROUP BY cve_ent, LEFT(codigo_act::text, 2)
ORDER BY cve_ent, negocios DESC;
