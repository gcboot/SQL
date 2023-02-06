-- * SELECT: La instrucción SELECT de MySQL se utiliza para recuperar registros de una o más tablas en MySQL pudiendo seleccionar cuales campos queremos incluir y excluir.

/* Ejemplos estructura
SELECT 10 + 10;
SELECT @username;
SELECT columns FORM table;
SELECT columns FROM table WHERE condition;
SELECT columns FROM table WHERE codition\G; -> Se obitiene un formato de cartas
SELECT column AS <alias> FROM table WHERE codition;
*/

-- Ejercicios
-- Obtener el nombre y correo todos los usuarios;
SELECT name, email FROM users;
-- Obtener el nombre de todos los usuarios cuyo sexo es Femenino
SELECT name FROM users WHERE gender = 'female';

-- Obtener el nombre de todos los usuarios cuyo sexo es Masculino y tengan una edad mayor a 50
SELECT name FROM users WHERE gender = 'male' AND age > 50;
-- Obtener todos los usuarios cuya edad sea mayor a 20
SELECT * FROM users WHERE age > 20;
-- Obtener el username y correo electrónico de los usuarios cuya edad se encuentre encuentre en el rango 30 a 50,
SELECT username, email FROM users WHERE age BETWEEN 30 AND 50;
SELECT username, email FROM users WHERE age >= 30 AND age <= 50;
-- Obtener el username de todos los usuarios cuyo correo no terminen con@example.com
SELECT username FROM users WHERE email NOT LIKE '%example.com';

-- Obtener el username de todos los usuarios cuyo pais sea Germany, Finlandia o Canadá
SELECT username FROM users WHERE country = 'Germany' OR country = 'Finland' OR country = 'Canada';
SELECT username FROM users WHERE country IN ('Germany', 'Finland', 'Canada');
SELECT username FROM users WHERE id IN (SELECT id FROM users WHERE country IN ('Germany', 'Canada', 'Finland'));

--Obtener el número de países en el data set
SELECT COUNT(*) FROM (SELECT DISTINCT country FROM users) AS resultado;

-- Obtener el nombre y correo electronico de todos los usuarios de sexo Femenino que sean del pais Germany
SELECT name, email FROM users WHERE gender = 'female' AND country = 'Germany'

-- Obtener el promedio de edad de todos los usuarios de sexo Femenino de Canada mayores de 20 años

SELECT AVG(age) FROM users WHERE gender = 'female' AND country = 'Canada' AND age > 20;

-- Conocer la cantidad de usuarios que residen en Finlandia
SELECT COUNT(*) FROM users WHERE country = 'Finland';

-- Mostrar en consola la cantidad de hombres y mujeres en el data set.
SELECT gender, COUNT(*)  FROM users GROUP BY gender;

-- Mostrar en consola el pais con más mujeres
SELECT country, COUNT(*) AS total FROM users WHERE gender = 'female' GROUP BY country ORDER BY total DESC LIMIT 1;

-- Obtener los 3 paises con mås usuarios
SELECT country, COUNT(*) AS total FROM users GROUP BY country ORDER BY total DESC LIMIT 3;

-- Conocer el país de la persona más viejas
SELECT country, age, name FROM users ORDER BY age DESC LIMIT 1;

-- Conocer el pais con el promedio de edad mås grande;
SELECT country, AVG(age) AS avg FROM users GROUP BY country ORDER BY avg DESC LIMIT 1;

-- Mostrar en consola el nombre de todos los usuarios cuya edad se encuentre en el rango de 10 a 20 y 40 a 70.
-- Mostrar en consola todos los usuarios con correo electrónico.
-- Mostrar en pantalla el nombre y correo electrónico del usuario más joven en Canadá.
-- Mostrar en pantalla el nombre y correo electrónico del usuario más viejo en Canadá.
-- Listar en consola los 3 países con menor cantidad de usuarios.
-- Obtener el país con mayor cantidad de usuarios cuya edad sea mayor a 50.
-- Obtener el país con mayor promedio de edad.
-- Mostrar en consola el país con más hombres.
-- Mostrar en consola el nombre, username y edad de todos los usuarios cuya edad
-- sea mayor a 10 y no sean del país México, Brasil y Canadá.
-- Mostrar en consola el código postal de todos los usuarios de México.
-- Mostrar en consola la cantidad de hombres y mujeres del país México.