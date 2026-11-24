-- B04. Variación anual del diésel
-- Para qué sirve: ver si el diésel cambia dentro de cada año.
-- Base de datos: lin_news
-- Resultado: el diésel casi no cambia dentro de cada año. Se queda en 0.01 hasta 2014
-- y sube poco a poco hasta 0.08 en 2027.
SELECT EXTRACT(YEAR FROM fecha) AS anio,
       MIN(diesel) AS minimo, MAX(diesel) AS maximo
FROM precio_referencia
GROUP BY 1
ORDER BY 1;
