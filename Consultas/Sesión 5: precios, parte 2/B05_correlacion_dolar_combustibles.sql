-- B05. Correlación entre dólar y combustibles
-- Para qué sirve: ver si el dólar y los combustibles suben juntos.
-- Base de datos: lin_news
-- Resultado: 0.948 con la magna y 0.94 con el diésel. No lo tomo como causa, porque las dos
-- series suben con los años y son sintéticas.
SELECT ROUND(CORR(usd_mxn, gasolina_magna)::numeric, 3) AS corr_dolar_magna,
       ROUND(CORR(usd_mxn, diesel)::numeric, 3) AS corr_dolar_diesel
FROM precio_referencia;
