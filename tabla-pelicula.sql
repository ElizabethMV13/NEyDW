CREATE TABLE IF NOT EXISTS `pelicula` (
  `peli_id` int(100) NOT NULL AUTO_INCREMENT,
  `peli_titulo` varchar(255) NOT NULL,
  `peli_anio` int(11) NOT NULL,
  `peli_pais` varchar(100) NOT NULL,
  `peli_director` varchar(255) NOT NULL,
  `peli_imagenes` longblob NOT NULL,
  `peli_genero` varchar(100) NOT NULL,
  `peli_duracion` varchar(100) NOT NULL,
  `peli_sinopsis` text NOT NULL,
  `peli_thriller` text NOT NULL,
  `peli_clasificacion` varchar(255) NOT NULL,
   PRIMARY KEY (`peli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;