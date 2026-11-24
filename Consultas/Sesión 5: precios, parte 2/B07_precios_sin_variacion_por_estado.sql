-- B07. Precios sin variación en precio_gasolina_estado
-- Para qué sirve: confirmar si los precios por estado cambian o valen siempre lo mismo.
-- Base de datos: lin_news
-- Resultado: magna (6,667 registros), premium (6,667) y diésel (6,666) tienen mínimo y
-- máximo de 0.01. No puedo comparar el combustible entre estados.
SELECT * FROM precio_gasolina_estado LIMIT 20;

SELECT COUNT(DISTINCT precio) AS precios_distintos
FROM precio_gasolina_estado;

SELECT tipo, COUNT(*) AS registros, MIN(precio) AS minimo, MAX(precio) AS maximo
FROM precio_gasolina_estado
GROUP BY tipo;
