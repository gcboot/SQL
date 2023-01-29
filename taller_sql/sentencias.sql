-- Crear Base de datos, tablas y sus Relaciones
CREATE DATABASE workshopcf;
USE workshopcf;
CREATE TABLE IF NOT EXISTS user_types(
  id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  assing_task BOOLEAN DEFAULT FALSE
);

-- INSERT TABLE user_types
INSERT INTO user_types(name, assing_task) VALUES ('Admin', 1), ('Tutor', 0);

CREATE TABLE  IF NOT EXISTS users(
  id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL,
  user_type_id INT UNSIGNED NOT NULL,
  FOREIGN KEY(user_type_id) REFERENCES user_types(id)
);

-- INSERT TABLE users
INSERT INTO users(username, user_type_id) VALUES ('eduardo', 2), ('Luis', 1), ('Mari', 1);

CREATE TABLE IF NOT EXISTS tasks(
  id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50) NOT NULL,
  description TEXT,
  status ENUM('Proceso', 'Pendiente', 'Terminado') DEFAULT 'Proceso',
  deadline DATETIME,
  user_id INT UNSIGNED NOT NULL,
  FOREIGN KEY(user_id) REFERENCES users(id)
);
INSERT TABLE tasksINSERT INTO tasks(title, description, status, deadline, user_id) VALUES 
                 ('Task 1', 'Task Description 1', 'Pendiente', '2022-08-23 00:00:00', 1), -- 1
                 ('Task 2', 'Task Description 2', 'Pendiente', '2022-08-23 00:00:00', 1), -- 6
                 ('Task 3', 'Task Description 3', 'Pendiente', '2022-08-23 00:00:00', 1),
                 ('Task 4', 'Task Description 4', 'Terminado', '2022-08-30 00:00:00', 2),
                 ('Task 5', 'Task Description 5', 'Pendiente', '2022-08-30 00:00:00', 2); --9

-- ? Uno a muchos
CREATE TABLE IF NOT EXISTS categories(
  id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL
);

-- INSERT TABLE categories
INSERT INTO categories(name) VALUES ('Contenido'), ('Admin'), ('Desarrollo');


-- ? Unos a muchos

CREATE TABLE IF NOT EXISTS task_categories(
  id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  task_id INT UNSIGNED NOT NULL,
  category_id INT UNSIGNED NOT NULL,
  FOREIGN KEY(task_id) REFERENCES tasks(id),
  FOREIGN KEY(category_id) REFERENCES categories(id)
);

-- INSERT TABLE task_categories
INSERT INTO task_categories(task_id, category_id) VALUES (1,1), (6,2), (7,3),(7,2), (8,2),(9,2);
                           
                           
                          
                           