-- A07. Establecimientos sin coordenadas
-- Para qué sirve: revisar si faltan datos de ubicación.
-- Base de datos: postgres
-- Resultado: 0, todos tienen latitud y longitud.
SELECT COUNT(*) AS sin_coordenadas
FROM denue_inegi_oficial
WHERE latitud IS NULL OR longitud IS NULL;
