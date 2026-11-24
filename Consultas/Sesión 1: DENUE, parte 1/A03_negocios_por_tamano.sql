-- A03. Establecimientos por tamaño
-- Para qué sirve: saber qué tan grandes son los establecimientos (personas ocupadas).
-- Base de datos: postgres
-- Resultado: la gran mayoría es de 0 a 5 personas (18,471,520 filas, el 87.9%).
SELECT per_ocu, COUNT(*) AS negocios
FROM denue_inegi_oficial
GROUP BY per_ocu
ORDER BY negocios DESC;
