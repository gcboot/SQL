CREATE DATABASE IF NOT EXISTS bootcamp;
USE bootcamp;
DROP TABLE IF EXISTS users;
CREATE TABLE users(
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  country VARCHAR(20) NOT NULL,
  cp VARCHAR(20) NOT NULL,
  gender ENUM('male', 'female') NOT NULL DEFAULT 'female',
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
-- ? CONSTRAINTS
/* Los constraints son reglas establecidas para cada una de las columnas de una tabla
Ejemplos:

* NOT NULL -> No permite valores nulos
* UNIQUE -> Inidica que en la columna no acepte datos repetidos
* PRIMARY KEY -> La columna se la llave primaria, indexa la columna y no acepta valores repetidos
* DEFAULT -> Inserta un valor por defecto
* UNSIGNED -> La columna no puede almacenar numeros negativos
* ENUMS -> Es un string el cual toma su valor de una lista previamente definida. Al nosotros asignar el tipo enum a un campo, este, no podrá almacenar otro valor que no se encuentre dentro de la lista.
*/
-- ? UPDATE
-- UPDATE users SET last_name = 'Lopez', country = 'Guatemala' WHERE id = 1;

-- -- ? DELETE
-- DELETE FROM users WHERE id = 2;

-- ? TRUNCATE
-- TRUNCATE users; -> Elimina toda la informacion de la tabla y toda la informacion de restablece.

-- ? SOFT DELETE
