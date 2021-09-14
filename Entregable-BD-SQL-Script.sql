/* Crea Base de datos Notepad */

CREATE DATABASE IF NOT EXISTS Notepad;
USE Notepad;

/* Creacion tabla Usuarios */

DROP TABLE IF EXISTS usuarios;
CREATE TABLE usuarios (
  usuario_id INT NOT NULL AUTO_INCREMENT,
  email varchar(50) NOT NULL,
  nombre varchar(50) NOT NULL,
  PRIMARY KEY (usuario_id)
);
INSERT INTO usuarios (email, nombre)
VALUES ('a1@b1.com', 'Jose');
INSERT INTO usuarios (email, nombre)
VALUES ('a2@b2.com', 'Chiara');
INSERT INTO usuarios (email, nombre)
VALUES ('a3@b3.com', 'Francisco');
INSERT INTO usuarios (email, nombre)
VALUES ('a4@b4.com', 'Jose');
INSERT INTO usuarios (email, nombre)
VALUES ('a5@b5.com', 'Bibiana');
INSERT INTO usuarios (email, nombre)
VALUES ('a6@b6.com', 'Marcelo');
INSERT INTO usuarios (email, nombre)
VALUES ('a7@b7.com', 'Andrea');
INSERT INTO usuarios (email, nombre)
VALUES ('a8@b8.com', 'Silvina');
INSERT INTO usuarios (email, nombre)
VALUES ('a9@b9.com', 'Ema');
INSERT INTO usuarios (email, nombre)
VALUES ('a10@b10.com', 'Mario');

/* Creacion tabla Notas */

DROP TABLE IF EXISTS notas;
CREATE TABLE notas (
  nota_id INT NOT NULL AUTO_INCREMENT,
  usuario_id INT NOT NULL,
  titulo varchar(100) NOT NULL,
  fecha_creacion DATE NOT NULL,
  fecha_ultima_modificacion DATE NOT NULL,
  descripcion TEXT NOT NULL,
  protegido TINYINT DEFAULT 0,
  PRIMARY KEY (nota_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
);
INSERT INTO notas (usuario_id, titulo, fecha_creacion, fecha_ultima_modificacion, descripcion, protegido)
VALUES (1, 'Ferrari1', '2021-09-14', '2021-09-14', 'Muy veloz1', 0);
INSERT INTO notas (usuario_id, titulo, fecha_creacion, fecha_ultima_modificacion, descripcion, protegido)
VALUES (2, 'Ferrari2', '2021-09-15', '2021-09-16', 'Muy veloz2', 0);
INSERT INTO notas (usuario_id, titulo, fecha_creacion, fecha_ultima_modificacion, descripcion, protegido)
VALUES (3, 'Ferrari3', '2021-09-16', '2021-09-17', 'Muy veloz3', 0);
INSERT INTO notas (usuario_id, titulo, fecha_creacion, fecha_ultima_modificacion, descripcion, protegido)
VALUES (4, 'Ferrari4', '2021-09-17', '2021-09-18', 'Muy veloz4', 0);
INSERT INTO notas (usuario_id, titulo, fecha_creacion, fecha_ultima_modificacion, descripcion, protegido)
VALUES (5, 'Ferrari5', '2021-09-18', '2021-09-19', 'Muy veloz5', 1);
INSERT INTO notas (usuario_id, titulo, fecha_creacion, fecha_ultima_modificacion, descripcion, protegido)
VALUES (6, 'Ferrari6', '2021-09-19', '2021-09-20', 'Muy veloz6', 0);
INSERT INTO notas (usuario_id, titulo, fecha_creacion, fecha_ultima_modificacion, descripcion, protegido)
VALUES (7, 'Ferrari7', '2021-09-20', '2021-09-21', 'Muy veloz7', 0);
INSERT INTO notas (usuario_id, titulo, fecha_creacion, fecha_ultima_modificacion, descripcion, protegido)
VALUES (8, 'Ferrari8', '2021-09-21', '2021-09-22', 'Muy veloz8', 1);
INSERT INTO notas (usuario_id, titulo, fecha_creacion, fecha_ultima_modificacion, descripcion, protegido)
VALUES (9, 'Ferrari9', '2021-09-22', '2021-09-25', 'Muy veloz9', 0);
INSERT INTO notas (usuario_id, titulo, fecha_creacion, fecha_ultima_modificacion, descripcion, protegido)
VALUES (10, 'Ferrari10', '2021-09-23', '2021-09-27', 'Muy veloz10', 1);

/* Creacion tabla Categorias */

DROP TABLE IF EXISTS categorias;
CREATE TABLE categorias (
  categoria_id INT NOT NULL AUTO_INCREMENT,
  descripcion VARCHAR(50) NOT NULL,
  PRIMARY KEY (categoria_id)
);
INSERT INTO categorias (descripcion)
VALUES ('Deportes');
INSERT INTO categorias (descripcion)
VALUES ('Politica');
INSERT INTO categorias (descripcion)
VALUES ('Moda');
INSERT INTO categorias (descripcion)
VALUES ('Tecnologia');
INSERT INTO categorias (descripcion)
VALUES ('Noticias');
INSERT INTO categorias (descripcion)
VALUES ('Espectaculos');
INSERT INTO categorias (descripcion)
VALUES ('Turismo');
INSERT INTO categorias (descripcion)
VALUES ('Fin de Semana');
INSERT INTO categorias (descripcion)
VALUES ('Ofertas');
INSERT INTO categorias (descripcion)
VALUES ('Clasificados');

/* Creacion tabla Notas-Categorias */

DROP TABLE IF EXISTS notas_categorias;
CREATE TABLE notas_categorias (
  nota_categoria_id INT NOT NULL AUTO_INCREMENT,
  nota_id INT NOT NULL,
  categoria_id INT NOT NULL,
  PRIMARY KEY (nota_categoria_id),
  FOREIGN KEY (nota_id) REFERENCES notas(nota_id),
  FOREIGN KEY (categoria_id) REFERENCES categorias(categoria_id)
);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (1, 2);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (1, 4);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (2, 3);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (2, 4);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (3, 1);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (3, 8);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (4, 6);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (4, 7);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (5, 1);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (6, 3);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (6, 4);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (6, 5);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (7, 10);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (7, 9);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (7, 8);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (8, 2);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (9, 2);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (9, 7);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (10, 3);
INSERT INTO notas_categorias (nota_id, categoria_id)
VALUES (10, 4);


/* Creacion tabla Log */

DROP TABLE IF EXISTS log;
CREATE TABLE log (
  log_id INT NOT NULL AUTO_INCREMENT,
  nota_id INT NOT NULL,
  fecha_ultima_modificacion DATE NOT NULL,
  iud CHAR(1) NOT NULL,
  PRIMARY KEY (log_id),
  FOREIGN KEY (nota_id) REFERENCES notas(nota_id)
);
INSERT INTO log (nota_id, fecha_ultima_modificacion, iud)
VALUES (1, '2021-09-14', 'I');
INSERT INTO log (nota_id, fecha_ultima_modificacion, iud)
VALUES (2, '2021-09-15', 'I');
INSERT INTO log (nota_id, fecha_ultima_modificacion, iud)
VALUES (2, '2021-09-16', 'U');
INSERT INTO log (nota_id, fecha_ultima_modificacion, iud)
VALUES (3, '2021-09-16', 'I');
INSERT INTO log (nota_id, fecha_ultima_modificacion, iud)
VALUES (3, '2021-09-17', 'U');
INSERT INTO log (nota_id, fecha_ultima_modificacion, iud)
VALUES (4, '2021-09-17', 'I');
INSERT INTO log (nota_id, fecha_ultima_modificacion, iud)
VALUES (4, '2021-09-18', 'U');
INSERT INTO log (nota_id, fecha_ultima_modificacion, iud)
VALUES (5, '2021-09-18', 'I');
INSERT INTO log (nota_id, fecha_ultima_modificacion, iud)
VALUES (6, '2021-09-19', 'I');
INSERT INTO log (nota_id, fecha_ultima_modificacion, iud)
VALUES (6, '2021-09-20', 'U');
INSERT INTO log (nota_id, fecha_ultima_modificacion, iud)
VALUES (7, '2021-09-20', 'I');
INSERT INTO log (nota_id, fecha_ultima_modificacion, iud)
VALUES (7, '2021-09-21', 'U');
INSERT INTO log (nota_id, fecha_ultima_modificacion, iud)
VALUES (7, '2021-09-21', 'U');
INSERT INTO log (nota_id, fecha_ultima_modificacion, iud)
VALUES (8, '2021-09-21', 'I');
INSERT INTO log (nota_id, fecha_ultima_modificacion, iud)
VALUES (9, '2021-09-22', 'I');
INSERT INTO log (nota_id, fecha_ultima_modificacion, iud)
VALUES (9, '2021-09-25', 'U');
INSERT INTO log (nota_id, fecha_ultima_modificacion, iud)
VALUES (10, '2021-09-23', 'I');