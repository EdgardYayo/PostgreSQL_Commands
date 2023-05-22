DROP TABLE nombre_tabla;

DROP VIEW nombre_vista;

DROP INDEX nombre_indice;

ALTER TABLE nombre_tabla
DROP CONSTRAINT nombre_restriccion;

UPDATE nombre_tabla
SET columna1 = valor1, columna2 = valor2, ...
WHERE condicion;

UPDATE empleados
SET salario = 5000
WHERE id = 123;

UPDATE empleados
SET salario = 5000, departamento = 'Ventas'
WHERE salario < 3000;

INSERT INTO nombre_tabla (columna1, columna2, ...)
VALUES (valor1, valor2, ...)
ON CONFLICT (columna_conflicto) DO NOTHING;

INSERT INTO empleados (id, nombre)
VALUES (1, 'John Doe')
ON CONFLICT (id) DO NOTHING;

INSERT INTO nombre_tabla (columna1, columna2, ...)
VALUES (valor1, valor2, ...)
ON CONFLICT (columna_conflicto)
DO UPDATE SET columna1 = nuevo_valor1, columna2 = nuevo_valor2, ...;

INSERT INTO empleados (id, nombre, salario)
VALUES (1, 'John Doe', 5000)
ON CONFLICT (id)
DO UPDATE SET nombre = EXCLUDED.nombre, salario = EXCLUDED.salario;

CREATE TABLE tabla1 (
  columna1 tipo_dato1,
  columna2 tipo_dato2,
  ...
  columna_n tipo_dato_n,
  FOREIGN KEY (columna_fk) REFERENCES tabla2 (columna_referencia)
);

CREATE TABLE empleados (
  id INT PRIMARY KEY,
  nombre VARCHAR(50),
  departamento_id INT,
  FOREIGN KEY (departamento_id) REFERENCES departamentos (id)
);

CREATE TABLE departamentos (
  id INT PRIMARY KEY,
  nombre VARCHAR(50)
);
