ALTER TABLE nombre_tabla
ADD columna tipo_dato;

ALTER TABLE nombre_tabla
ALTER COLUMN nombre_columna TYPE nuevo_tipo_dato;

ALTER TABLE nombre_tabla
RENAME TO nuevo_nombre_tabla;

ALTER TABLE nombre_tabla
DROP COLUMN nombre_columna;

ALTER TABLE nombre_tabla
ADD CONSTRAINT nombre_restriccion restriccion;

CREATE TABLE nombre_tabla (
  columna1 tipo_dato1,
  columna2 tipo_dato2,
  ...
);


CREATE TABLE empleados (
  id INT PRIMARY KEY,
  nombre VARCHAR(50),
  edad INT CHECK (edad >= 18),
  salario DECIMAL(10, 2)
);


ALTER TABLE empleados
ADD CONSTRAINT ck_edad CHECK (edad >= 18);


CREATE TABLE productos (
  id INT PRIMARY KEY,
  nombre VARCHAR(50),
  precio DECIMAL(10, 2),
  descuento DECIMAL(4, 2),
  CHECK (precio > 0 AND descuento >= 0 AND descuento <= precio)
);

DELETE FROM nombre_tabla
WHERE condicion;

DELETE FROM nombre_tabla;

DELETE FROM empleados
WHERE salario < 1000;

CREATE TABLE empleados (
  id INT,
  nombre VARCHAR(50),
  salario DECIMAL(10, 2)
);

CREATE VIEW nombre_vista AS
SELECT columna1, columna2, ...
FROM nombre_tabla
WHERE condicion;

CREATE VIEW vista_empleados AS
SELECT id, nombre
FROM empleados
WHERE salario > 2000;

CREATE INDEX nombre_indice
ON nombre_tabla (columna1, columna2, ...);

CREATE INDEX idx_empleados_nombre
ON empleados (nombre);
