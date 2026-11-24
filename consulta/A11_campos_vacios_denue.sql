-- A11. Campos vacíos en columnas clave
-- Para qué sirve: revisar si faltan datos en tamaño, actividad, estado y municipio.
-- Base de datos: postgres
-- Resultado: 0 en las cuatro columnas.
SELECT
  COUNT(*) FILTER (WHERE per_ocu IS NULL) AS sin_tamano,
  COUNT(*) FILTER (WHERE codigo_act IS NULL) AS sin_actividad,
  COUNT(*) FILTER (WHERE cve_ent IS NULL) AS sin_estado,
  COUNT(*) FILTER (WHERE cve_mun IS NULL) AS sin_municipio
FROM denue_inegi_oficial;
