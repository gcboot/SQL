-- ! SELECT + WHERE
SELECT * FROM clientes WHERE nombre = 'Antonio';

/*
Operadores 
* = Igual
* != ó <> Distinto
* > Mayor que
* < Menor que
* >= Mayor o igual
* <= Menor o igual
*/

-- TODO: Prueba a crear y ejecutar las siguientes consultas:

-- 1. Nombre de los clientes cuyo DNI sea 789768D.
SELECT nombre FROM clienes WHERE dni  = '789768D';

-- 2. DNI de los clientes cuyo DNI no sea 789768D.
SELECT dni FROM clientes WHERE dni != '789768D';

-- 3. Todos los datos de los clientes con nombre SILVIA.
SELECT * FROM clientes WHERE nombre = 'Silvia';

-- 4. Número de clientes con más de 35 años.
SELECT COUNT(*) FROM cliente WHERE edad > 35;

-- 5. Clientes con más de 10 puntos ordenados de mayor a menor número de puntos.
SELECT * FROM CLIENTES WHERE PUNTOS > 10 ORDER BY PUNTOS DESC;

-- ! BETWEEN -- Permite buscar filas en base a un rango de valores
-- El primer valor debe ser siempre inferior al segundo.
SELECT nombre, edad FROM clientes WHERE edad BETWEEN 32 AND 45;

-- Si lo que queremos es buscar un conjunto de valores (numéricos o no), en vez de utilizar varias veces la comparación “=” podemos utilizar IN cuya sintaxis
SELECT nombre, apellidos FROM clientes WHERE nombre IN ('Antonio', 'Silvia');

-- ! Operadores Logicos AND / OR

-- AND - Deben de cumplirse las dos condiciones.
-- Or -  Seria suficiente con que se cumpliera una de las dos condiciones
SELECT nombre, fecha_nacimiento FROM clientes WHERE nombre = 'Antonio' OR fecha_nacimiento = '1968-06-05';

SELECT nombre, fecha_nacimiento FROM clientes WHERE nombre = 'Antonio' AND fecha_nacimiento = '1968-06-05';

-- ! IS NULL - Operador utilizado para comprobar si un campo es nulo. Su sintaxis es muy simple:
SELECT nombre, dni FROM clientes WHERE dni IS NULL;

-- ! NOT -Invierte  el sentido de una condición y por lo tanto debe utilizarse en combinación con un operador simple
SELECT *  FROM clientes  WHERE edad != 32; 
SELECT *  FROM clientes  WHERE NOT edad != 32;

SELECT *  FROM clientes  WHERE edad BETWEEN 18 AND 25; 
SELECT *  FROM clientes  WHERE edad NOT BETWEEN 18 AND 25;

SELECT *  FROM clientes  WHERE dniI IS NULL;
SELECT * FROM clientes  WHERE dni IS NOT NULL;

SELECT *  FROM clientes  WHERE NOMBRE IN('ROBERTO', 'ANTONIO'); 
SELECT *  FROM clientes  WHERE nombre

SELECT NOMBRE, fecha_nacimiento, EDAD  FROM clientes  WHERE   (nombre = 'ANTONIO' AND fecha_nacimiento = '1968-06-05') OR(nombre != 'ANTONIO' AND edad > 40);
SELECT nombre, numero_socio FROM clientes WHERE NOT(nombre='Roberto' AND numero_socio = 1);

-- TODO:
-- 1. Número de clientes mayores de 30 años.
SELECT COUNT(edad) FROM clientes WHERE edad > 30;

-- 2. Obtener clientes que se llamen Héctor o Laura, o que no se llamen ni Héctor ni Laura y además tengan el número de teléfono 679867456.
SELECT * FROM clientes WHERE (NOMBRE IN ('Hector', 'Laura')) OR (NOMBRE NOT IN ('Hector','Laura') AND numero_telefono = 679867456);

-- 3. Clientes con DNI 78665424D, número de socio mayor que 0 y edad mayor de 18 años.
SELECT * FROM clientes WHERE dni = '789768D' AND numero_socio > 0 AND edad > 18;

-- 4. Número de clientes sin dni
SELECT COUNT(*) FROM clientes WHERE dni IS NULL;

-- 5. Clientes cuya edad esté entre los 10 y los 35 años y que hayan informado su e-mail al darse de alta.
SELECT * FROM clientes WHERE edad BETWEEN 10 AND 30 AND email IS NULL;