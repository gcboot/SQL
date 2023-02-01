-- DATE, TIME, DATETIME
SELECT DATE(fecha_nacimiento), TIME(fecha_nacimiento), DATETIME(fecha_nacimiento
FROM clientes
WHERE fecha_nacimiento IS NOT NULL;


