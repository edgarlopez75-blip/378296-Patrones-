-- A09. Caracteres dañados
-- Para qué sirve: confirmar si el símbolo raro que veía en los nombres está guardado
-- en el dato o es solo cómo lo muestra DBeaver.
-- Base de datos: postgres
-- Resultado: encontró filas, así que el carácter dañado sí está en el dato.
SELECT nombre_act
FROM denue_inegi_oficial
WHERE nombre_act LIKE '%' || chr(65533) || '%'
LIMIT 10;
