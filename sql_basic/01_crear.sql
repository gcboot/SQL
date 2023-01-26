--! Muestra las bases de datos que tenemos creados
--* SHOW DATABASES;

--! Crear base de datos
CREATE DATABASE mi_tienda;

--! Seleccion una base de datos
USE mi_tienda;

--! Crear una tabla
CREATE TABLE usuarios(
  alias VARCHAR(200),
  email VARCHAR(200),
  password VARCHAR(200)
);

CREATE TABLE cliente(
  nombre VARCHAR(100),
  apellidos VARCHAR(100),
  dni VARCHAR(10),
  direccion VARCHAR(100),
  numero_socio INT,
  fecha_nacimiento DATETIME,
  edad INT,
  puntos FLOAT
);

CREATE TABLE ventas(
  numero_socio INT,
  fecha DATETIME,
  producto VARCHAR(100),
  cantidad INT
);

CREATE TABLE clientes_web(
  numero_socio INT,
  nombre VARCHAR(100),
  dni VARCHAR(100)
);

--! Insertar datos a una tabla
INSERT INTO usuarios(alias, email, password) VALUES ('admin', 'admin@mitienda.com', 'pa$$word');
INSERT INTO usuarios(alias, email, password) VALUES ('invitado', 'invitado@yahoo.es', 'pwd');

-- * Mostrar el contenido de una tabla
SELECT * FROM usuarios;

-- * Mostrar datos especificos
SELECT * FROM usuarios WHERE alias = 'admin';

-- * Todos los usuarios no sea 'admin'
SELECT * FROM usuarios WHERE alias != 'admin';

-- * Número total de usuarios registrados:
SELECT COUNT(1) FROM usuarios;

-- ! Eliminar una base de datos o una tabla
DROP DATABASE mi_tienda;
DROP TABLE usuarios;

-- ? Operadores
SELECT 1 + 2 FROM usuarios;

-- ! PRIMARY KEY
CREATE TABLE modelos(
  modelo INT PRIMARY KEY,
  marca VARCHAR(30),
  cilindrada VARCHAR(10),
  consumo VARCHAR(15)
);

-- Otra posibilidad es que la PK esté formada por dos o más columnas. En
CREATE TABLE modelos(
  modelo INT,
  marca VARCHAR(30),
  cilindrada VARCHAR(10),
  consumo VARCHAR(15),
  PRIMARY KEY(modelo, marca)
);



