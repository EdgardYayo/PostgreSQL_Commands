SELECT NOW();

INSERT INTO tabla (columna_fecha) VALUES (NOW());

expresión + INTERVAL valor unidad

SELECT fecha + INTERVAL 2 DAY
FROM tabla;

SELECT (fecha_fin - fecha_inicio) HOUR
FROM tabla;

EXTRACT(componente FROM expresión)

SELECT EXTRACT(YEAR FROM fecha)
FROM tabla;

SELECT EXTRACT(MONTH FROM fecha) AS mes, EXTRACT(DAY FROM fecha) AS dia
FROM tabla;

AGE(fecha_inicial, fecha_final)

SELECT AGE(fecha_nacimiento) AS edad
FROM tabla;

SELECT AGE(fecha_inicio, fecha_fin) AS diferencia_tiempo
FROM tabla;
