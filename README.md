# Películas
Página web de películas en cartelera.
Ingreso de nuevas películas para administraores.
Permite registro de nuevos usuarios.

Proyecto: 
```bash
https://github.com/ElizabethMV13/NEyDW/tree/Abigail#readme
```

## Uso
Usuario de la base de datos
```bash
root
```

La contraseña de la base de datos de mysql es:
```bash
12345678
```

Los clientes, tienen acceso a las pestañas:
 - Cartelera
 - Inicio de Sesión
 - Registro
 - Acerca de

 Los administradores tienen acceso a la pestaña:
  - Registro de Películas
  - Inicio de sesión


### Usuarios Clientes del sistema
Se registran en la opción "Registrate aquí" de:
```bash
localhost/Equipo5/inicio-sesion.html
```

### Usuarios administrador del sistema
Tienen acceso a la pestaña "Registrar Películas" para la actualización de nuevas películas al sistema

Usuario 0:
```bash
Salvador
```
Contraseña:
```bash
s1234
```

Usuario 1:
```bash
Elizabeth
```
Contraseña:
```bash
e1234
```

Usuario 2:
```bash
Jorge
```
Contraseña:
```bash
j1234
```

Usuario 3:
```bash
Adriana
```
Contraseña:
```bash
ad1234
```

Usuario 4:
```bash
Abigail
```
Contraseña:
```bash
ab1234
```
## Instalación

Descomprima la carpeta en un directorio similar al siguiente

```bash

...\AppServ\www\
```

El resultado debe ser:
```bash
...\AppServ\www\Equipo5
```

### Creación de la BD

Para creación limpia:
```bash
 DROP DATABASE IF EXISTS eq5dbpeliculas;
```

Si es la primera vez que se ejecuta el proyecto:
```bash
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

INSERT INTO `usuarios` VALUES (5,'Dulce Elizabeth Mendoza de la Vega','elizabeth@admin.com','Elizabeth','femenino','123456789',23,'$2y$10$SpgC2d7HZWM.UdExsSdWg.xNC9KL7gI8zXgtvcltS/HvTzw2JMAUu','administrador'),(6,'Jorge Luis Esparza Fuentes','jorge@admin.com','Jorge','masculino','157964823',23,'$2y$10$Vpevgi1BR6C4wHZFyxt1ZeHA5AxZJBOHI/xA9FaptUstldYPedt4O','administrador'),(7,'Adriana Ramirez Toxqui','adriana@admin.com','Adriana','femenino','876142387',23,'$2y$10$jDTiqlECXulZpcf5ZmrTveApes6Gi82Ch0Hs4LBQ/h/8rRqwdv9V.','administrador'),(8,'Abigail Meztli Martinez Juarez','abigail@admin.com','Abigail','femenino','561472498',23,'$2y$10$RB5hmNjfkCA5qPb4FZXceODvSGFqiX3z2w9qtip8SFPc5Ujl4cuZS','administrador'),(9,'Juan Perez','juan@user.com','Juan','masculino','547612478',28,'$2y$10$kqBGxhuO9fmHoXr.SgXlCuC/zHv7IUZELW2XIEifnQd3JRK9z99pa','usuario'),(10,'Maria Lopez','maria@user.com','Maria','','543187045',32,'$2y$10$OvxNDM6QI02JexbPI7g./ubfDejKD1O.517zbhgoeI09IZUhtO29O','usuario'),(11,'Salvador Perez Viramontes','salvador@admin.com','Salvador','masculino','568742316',44,'$2y$10$lRl4LLVuq7cSvzpxsYlTG.q6LWDJ/tf8Y//i4JPJotuWmbjPr/QdG','administrador');

INSERT INTO `pelicula` (`peli_id`, `peli_titulo`, `peli_anio`, `peli_pais`, `peli_director`, `peli_imagenes`, `peli_genero`, `peli_duracion`, `peli_sinopsis`, `peli_thriller`, `peli_clasificacion`) VALUES
(1, 'Beast', 2022, 'Estados Unidos', 'Baltasar Kormákur', 'static/img/bestia.jpg', 'aventura thriller    ', '93', 'Un padre y sus dos hijas adolescentes se ven perseguidos por un enorme león rebelde que intenta demostrar que la sabana solo tiene un depredador ápice.', 'https://www.youtube.com/watch?v=rM0aUSHSTf0', 'A'),
(2, 'Avatar 2', 2022, 'Estados Unidos', 'James Cameron',  'static/img/avatar2.jpeg', 'Aventura, Drama, acción', '190', 'Jake Sully y Neytiri han formado una familia y hacen todo lo posible por permanecer juntos. Sin embargo, deben abandonar su hogar y explorar las regiones de Pandora cuando una antigua amenaza reaparece.', 'https://www.youtube.com/watch?v=tlY7hL7Ti_4', 'B'),
(3, 'Gato con botas', 2022, 'Estados Unidos', 'Joel Crawford', 'static/img/gatoBotas2.jpeg', ' Aventura, Animada', '90', 'Gato con Botas: el último deseo es una película estadounidense de comedia de aventuras animada por computadora producida por DreamWorks Animation y distribuida por Universal Pictures.', 'https://www.youtube.com/watch?v=U5rGblIzIxc', 'A'),
(4, 'Megan', 2022, 'Estados Unidos', 'Gerard Johnstone', 'static/img/megan.jpg', 'Terror', '102', 'Gemma, diseñadora de una muñeca de inteligencia artificial extraordinaria, se convierte en la tutora legal de una niña. Abrumada por la responsabilidad, cede su educación y protección a la muñeca, sin saber que las consecuencias serán terribles.', 'https://www.youtube.com/watch?v=VWH9ZSAGb1U', 'B'),
(5, 'Terrifier 2', 2022, 'Estados Unidos', 'Damien Leone', 'static/img/terrifier.jpg', 'Terror, Thriller', '138', 'El payaso Art resucita en la morgue. Un año después, en la noche de Halloween, el siniestro psicópata vuelve al condado de Miles para atacar a unos hermanos adolescentes cuyo difunto padre les legó un libro con bocetos premonitorios sobre Art.', 'https://www.youtube.com/watch?v=6KkONLf_ZKU', 'B'),
(6, 'Beast', 2022, 'Estados Unidos', 'Baltasar Kormákur', 'static/img/bestia.jpg', 'aventura thriller    ', '93', 'Un padre y sus dos hijas adolescentes se ven perseguidos por un enorme león rebelde que intenta demostrar que la sabana solo tiene un depredador ápice.', 'https://www.youtube.com/watch?v=rM0aUSHSTf0', 'A'),
(7, 'Avatar 2', 2022, 'Estados Unidos', 'James Cameron',  'static/img/avatar2.jpeg', 'Aventura, Drama, acción', '190', 'Jake Sully y Neytiri han formado una familia y hacen todo lo posible por permanecer juntos. Sin embargo, deben abandonar su hogar y explorar las regiones de Pandora cuando una antigua amenaza reaparece.', 'https://www.youtube.com/watch?v=tlY7hL7Ti_4', 'B'),
(8, 'Gato con botas', 2022, 'Estados Unidos', 'Joel Crawford', 'static/img/gatoBotas2.jpeg', ' Aventura, Animada', '90', 'Gato con Botas: el último deseo es una película estadounidense de comedia de aventuras animada por computadora producida por DreamWorks Animation y distribuida por Universal Pictures.', 'https://www.youtube.com/watch?v=U5rGblIzIxc', 'A'),
(9, 'Megan', 2022, 'Estados Unidos', 'Gerard Johnstone', 'static/img/megan.jpg', 'Terror', '102', 'Gemma, diseñadora de una muñeca de inteligencia artificial extraordinaria, se convierte en la tutora legal de una niña. Abrumada por la responsabilidad, cede su educación y protección a la muñeca, sin saber que las consecuencias serán terribles.', 'https://www.youtube.com/watch?v=VWH9ZSAGb1U', 'B'),
(10, 'Terrifier 2', 2022, 'Estados Unidos', 'Damien Leone', 'static/img/terrifier.jpg', 'Terror, Thriller', '138', 'El payaso Art resucita en la morgue. Un año después, en la noche de Halloween, el siniestro psicópata vuelve al condado de Miles para atacar a unos hermanos adolescentes cuyo difunto padre les legó un libro con bocetos premonitorios sobre Art.', 'https://www.youtube.com/watch?v=6KkONLf_ZKU', 'B'),
(11, 'Beast', 2022, 'Estados Unidos', 'Baltasar Kormákur', 'static/img/bestia.jpg', 'aventura thriller    ', '93', 'Un padre y sus dos hijas adolescentes se ven perseguidos por un enorme león rebelde que intenta demostrar que la sabana solo tiene un depredador ápice.', 'https://www.youtube.com/watch?v=rM0aUSHSTf0', 'A'),
(12, 'Avatar 2', 2022, 'Estados Unidos', 'James Cameron',  'static/img/avatar2.jpeg', 'Aventura, Drama, acción', '190', 'Jake Sully y Neytiri han formado una familia y hacen todo lo posible por permanecer juntos. Sin embargo, deben abandonar su hogar y explorar las regiones de Pandora cuando una antigua amenaza reaparece.', 'https://www.youtube.com/watch?v=tlY7hL7Ti_4', 'B'),
(13, 'Gato con botas', 2022, 'Estados Unidos', 'Joel Crawford', 'static/img/gatoBotas2.jpeg', ' Aventura, Animada', '90', 'Gato con Botas: el último deseo es una película estadounidense de comedia de aventuras animada por computadora producida por DreamWorks Animation y distribuida por Universal Pictures.', 'https://www.youtube.com/watch?v=U5rGblIzIxc', 'A'),
(14, 'Megan', 2022, 'Estados Unidos', 'Gerard Johnstone', 'static/img/megan.jpg', 'Terror', '102', 'Gemma, diseñadora de una muñeca de inteligencia artificial extraordinaria, se convierte en la tutora legal de una niña. Abrumada por la responsabilidad, cede su educación y protección a la muñeca, sin saber que las consecuencias serán terribles.', 'https://www.youtube.com/watch?v=VWH9ZSAGb1U', 'B'),
(15, 'Terrifier 2', 2022, 'Estados Unidos', 'Damien Leone', 'static/img/terrifier.jpg', 'Terror, Thriller', '138', 'El payaso Art resucita en la morgue. Un año después, en la noche de Halloween, el siniestro psicópata vuelve al condado de Miles para atacar a unos hermanos adolescentes cuyo difunto padre les legó un libro con bocetos premonitorios sobre Art.', 'https://www.youtube.com/watch?v=6KkONLf_ZKU', 'B')
;


```

## Desarrolladores del proyecto

Esparza Fuentes, Jorge Luis
Martínez Juárez, Abigail Meztli
Mendoza de la Vega, Dulce Elizabeth
Ramírez Toxqui, Adriana
