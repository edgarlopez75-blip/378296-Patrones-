-- A08. Coordenadas fuera de México
-- Para qué sirve: revisar si hay ubicaciones imposibles. Usé como límites de México
-- una latitud entre 14 y 33 y una longitud entre -119 y -86.
-- Base de datos: postgres
-- Resultado: 0, todas están dentro del rango.
SELECT COUNT(*) AS fuera_de_rango
FROM denue_inegi_oficial
WHERE latitud NOT BETWEEN 14 AND 33
   OR longitud NOT BETWEEN -119 AND -86;
