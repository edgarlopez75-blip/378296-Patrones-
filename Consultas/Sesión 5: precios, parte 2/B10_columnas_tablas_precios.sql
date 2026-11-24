-- B10. Columnas de las tablas de precios
-- Para qué sirve: obtener el nombre y tipo de cada columna para el diccionario de datos.
-- Base de datos: lin_news
-- Resultado: 12 columnas, 4 de precio_gasolina_estado y 8 de precio_referencia
-- (incluye fecha_ingesta).
SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE table_name IN ('precio_gasolina_estado', 'precio_referencia')
ORDER BY table_name, ordinal_position;
