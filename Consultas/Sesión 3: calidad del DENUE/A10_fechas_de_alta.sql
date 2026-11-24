-- A10. Fechas de alta
-- Para qué sirve: saber de qué periodo son los establecimientos.
-- Base de datos: postgres
-- Resultado: de 2010-07 a 2026-04. La columna es texto, no fecha.
SELECT MIN(fecha_alta) AS primera, MAX(fecha_alta) AS ultima
FROM denue_inegi_oficial;
