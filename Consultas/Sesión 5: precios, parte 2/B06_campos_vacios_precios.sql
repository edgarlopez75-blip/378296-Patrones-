-- B06. Campos vacíos en precio_referencia
-- Para qué sirve: revisar si faltan datos del dólar, la magna o el diésel.
-- Base de datos: lin_news
-- Resultado: 0 en las tres columnas.
SELECT
  COUNT(*) FILTER (WHERE usd_mxn IS NULL) AS sin_dolar,
  COUNT(*) FILTER (WHERE gasolina_magna IS NULL) AS sin_magna,
  COUNT(*) FILTER (WHERE diesel IS NULL) AS sin_diesel
FROM precio_referencia;
