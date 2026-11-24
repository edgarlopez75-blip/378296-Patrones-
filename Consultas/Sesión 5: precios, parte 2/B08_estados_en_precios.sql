-- B08. Estados en precio_gasolina_estado
-- Para qué sirve: ver qué estados aparecen y cómo viene escrita su clave.
-- Base de datos: lin_news
-- Resultado: 32 estados. La clave es texto con cero a la izquierda (por ejemplo '04').
SELECT DISTINCT cve_ent
FROM precio_gasolina_estado
ORDER BY 1;
