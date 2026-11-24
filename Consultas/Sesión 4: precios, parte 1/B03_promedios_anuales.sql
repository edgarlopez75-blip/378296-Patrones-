-- B03. Promedios anuales de precio_referencia
-- Para qué sirve: ver cómo cambian los precios y el dólar año con año.
-- Base de datos: lin_news
-- Resultado: los combustibles promedian 0.01 hasta 2014 y llegan a 0.09 en 2026.
-- El dólar sube de 0.03 en 1981 a 59.99 en 2027.
SELECT EXTRACT(YEAR FROM fecha) AS anio,
       ROUND(AVG(gasolina_magna), 2) AS magna,
       ROUND(AVG(gasolina_premium), 2) AS premium,
       ROUND(AVG(diesel), 2) AS diesel,
       ROUND(AVG(usd_mxn), 2) AS dolar
FROM precio_referencia
GROUP BY 1
ORDER BY 1;
