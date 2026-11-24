-- B01. Fechas futuras en precio_referencia
-- Para qué sirve: revisar si hay datos con fecha que todavía no llega.
-- Base de datos: lin_news
-- Resultado: 39 registros con fecha posterior al día de la consulta.
SELECT COUNT(*) AS fechas_futuras
FROM precio_referencia
WHERE fecha > CURRENT_DATE;
