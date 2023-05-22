SELECT columna1, columna2, ...
FROM tabla
WHERE condición;


SELECT nombre, apellido
FROM clientes
WHERE edad >= 18;


SELECT columnas
FROM tabla
WHERE columna LIKE 'patrón';


SELECT nombre
FROM clientes
WHERE nombre LIKE 'J%';


SELECT columna1, columna2, ..., función_agregación(columna)
FROM tabla
GROUP BY columna1, columna2, ...;


SELECT producto, SUM(cantidad)
FROM ventas
GROUP BY producto;


COALESCE(expresion1, expresion2, ..., expresionN)


SELECT id, COALESCE(nombre, 'Nombre no disponible') AS nombre
FROM clientes;


NULLIF(expresion1, expresion2)


SELECT NULLIF(columna, 0) AS columna_nula
FROM tabla;


