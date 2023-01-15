CREATE DATABASE IF NOT EXISTS eq5dbpeliculas;
USE eq5dbpeliculas;

CREATE TABLE IF NOT EXISTS `usuarios`(
  `id` bigint unsigned not null auto_increment,
  `nombre` varchar(255) not null,
  `correo` varchar(255) not null unique, 
  `user` varchar(255) not null unique,
  `genero` varchar(10),
  `tarjeta_c` varchar(255) not null,
  `edad` int not null,
  `password` varchar(255) not null,
  `rol` varchar(20) not null,
  primary key(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `pelicula` (
  `peli_id` int(100) NOT NULL AUTO_INCREMENT,
  `peli_titulo` varchar(255) NOT NULL,
  `peli_anio` int(11) NOT NULL,
  `peli_pais` varchar(100) NOT NULL,
  `peli_director` varchar(255) NOT NULL,
  `peli_imagenes` text NOT NULL,
  `peli_genero` varchar(100) NOT NULL,
  `peli_duracion` varchar(100) NOT NULL,
  `peli_sinopsis` text NOT NULL,
  `peli_thriller` text NOT NULL,
  `peli_clasificacion` varchar(255) NOT NULL,
   PRIMARY KEY (`peli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO usuarios (nombre, correo, user, genero, tarjeta_c, edad, password, rol) 
VALUES ('Dulce Elizabeth Mendoza de la Vega', 'elizabeth@admin.com', 'Elizabeth', 'femenino', '123456789', '23', 'e1234', 'administrador');
INSERT INTO usuarios (nombre, correo, user, genero, tarjeta_c, edad, password, rol) 
VALUES ('Jorge Luis Esparza Fuentes', 'jorge@admin.com', 'Jorge', 'masculino', '157964823', '23', 'j1234', 'administrador');
INSERT INTO usuarios (nombre, correo, user, genero, tarjeta_c, edad, password, rol) 
VALUES ('Adriana Ramirez Toxqui', 'adriana@admin.com', 'Adriana', 'femenino', '876142387', '23', 'ad1234', 'administrador');
INSERT INTO usuarios (nombre, correo, user, genero, tarjeta_c, edad, password, rol) 
VALUES ('Abigail Meztli Martinez Juarez', 'abigail@admin.com', 'Abigail', 'femenino', '561472498', '23', 'ab1234', 'administrador');
