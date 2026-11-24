-- B09. Precio nacional en el mismo periodo que los precios por estado
-- Para qué sirve: comparar con precio_referencia en las mismas fechas (enero a julio de 1981).
-- Base de datos: lin_news
-- Resultado: también vale 0.01 en magna y diésel, igual que los precios por estado.
SELECT MIN(gasolina_magna), MAX(gasolina_magna), MIN(diesel), MAX(diesel)
FROM precio_referencia
WHERE fecha BETWEEN '1981-01-01' AND '1981-07-28';
