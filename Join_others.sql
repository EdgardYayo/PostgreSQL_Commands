SELECT columnas
FROM tabla1
INNER JOIN tabla2
ON tabla1.columna = tabla2.columna;

SELECT columnas
FROM tabla1
LEFT JOIN tabla2
ON tabla1.columna = tabla2.columna;

SELECT columnas
FROM tabla1
RIGHT JOIN tabla2
ON tabla1.columna = tabla2.columna;

SELECT columnas
FROM tabla1
FULL JOIN tabla2
ON tabla1.columna = tabla2.columna;

\copy nombre_tabla FROM/TO 'ruta_del_archivo' [opciones]

\copy empleados FROM '/ruta/del/archivo.csv' DELIMITER ',' CSV HEADER;

\copy empleados TO '/ruta/del/archivo.csv' DELIMITER ',' CSV HEADER;

CREATE SEQUENCE nombre_sequence
    START WITH valor_inicial
    INCREMENT BY incremento
    MAXVALUE valor_maximo;


INSERT INTO tabla (columna_pk, otra_columna)
VALUES (NEXTVAL('nombre_sequence'), 'valor');

\i ruta_del_archivo

\i /ruta/del/archivo.sql
