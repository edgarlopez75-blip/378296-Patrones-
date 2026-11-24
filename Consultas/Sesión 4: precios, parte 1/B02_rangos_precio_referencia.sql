-- B02. Rangos de precio_referencia
-- Para qué sirve: ver el valor más bajo y más alto de cada combustible y del dólar.
-- Base de datos: lin_news
-- Resultado: los combustibles van de 0.01 a 0.1 como máximo (no pueden ser pesos por litro).
-- El dólar va de 0.0269 a 60.9999.
SELECT MIN(gasolina_magna), MAX(gasolina_magna),
       MIN(gasolina_premium), MAX(gasolina_premium),
       MIN(diesel), MAX(diesel),
       MIN(usd_mxn), MAX(usd_mxn)
FROM precio_referencia;
