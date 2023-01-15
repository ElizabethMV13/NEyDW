-- MySQL dump 10.13  Distrib 5.7.15, for Win32 (AMD64)
--
-- Host: localhost    Database: eq5dbpeliculas
-- ------------------------------------------------------
-- Server version	5.7.15-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelicula` (
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula`
--

LOCK TABLES `pelicula` WRITE;
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
INSERT INTO `pelicula` VALUES (1,'Beast',2022,'Estados Unidos','Baltasar Kormákur','static/img/bestia.jpg','aventura thriller    ','93','Un padre y sus dos hijas adolescentes se ven perseguidos por un enorme león rebelde que intenta demostrar que la sabana solo tiene un depredador ápice.','https://www.youtube.com/watch?v=rM0aUSHSTf0','A'),(2,'Avatar 2',2022,'Estados Unidos','James Cameron','static/img/avatar2.jpeg','Aventura, Drama, acción','190','Jake Sully y Neytiri han formado una familia y hacen todo lo posible por permanecer juntos. Sin embargo, deben abandonar su hogar y explorar las regiones de Pandora cuando una antigua amenaza reaparece.','https://www.youtube.com/watch?v=tlY7hL7Ti_4','B'),(3,'Gato con botas',2022,'Estados Unidos','Joel Crawford','static/img/gatoBotas2.jpeg',' Aventura, Animada','90','Gato con Botas: el último deseo es una película estadounidense de comedia de aventuras animada por computadora producida por DreamWorks Animation y distribuida por Universal Pictures.','https://www.youtube.com/watch?v=U5rGblIzIxc','A'),(4,'Megan',2022,'Estados Unidos','Gerard Johnstone','static/img/megan.jpg','Terror','102','Gemma, diseñadora de una muñeca de inteligencia artificial extraordinaria, se convierte en la tutora legal de una niña. Abrumada por la responsabilidad, cede su educación y protección a la muñeca, sin saber que las consecuencias serán terribles.','https://www.youtube.com/watch?v=VWH9ZSAGb1U','B'),(5,'Terrifier 2',2022,'Estados Unidos','Damien Leone','static/img/terrifier.jpg','Terror, Thriller','138','El payaso Art resucita en la morgue. Un año después, en la noche de Halloween, el siniestro psicópata vuelve al condado de Miles para atacar a unos hermanos adolescentes cuyo difunto padre les legó un libro con bocetos premonitorios sobre Art.','https://www.youtube.com/watch?v=6KkONLf_ZKU','B'),(6,'Beast',2022,'Estados Unidos','Baltasar Kormákur','static/img/bestia.jpg','aventura thriller    ','93','Un padre y sus dos hijas adolescentes se ven perseguidos por un enorme león rebelde que intenta demostrar que la sabana solo tiene un depredador ápice.','https://www.youtube.com/watch?v=rM0aUSHSTf0','A'),(7,'Avatar 2',2022,'Estados Unidos','James Cameron','static/img/avatar2.jpeg','Aventura, Drama, acción','190','Jake Sully y Neytiri han formado una familia y hacen todo lo posible por permanecer juntos. Sin embargo, deben abandonar su hogar y explorar las regiones de Pandora cuando una antigua amenaza reaparece.','https://www.youtube.com/watch?v=tlY7hL7Ti_4','B'),(8,'Gato con botas',2022,'Estados Unidos','Joel Crawford','static/img/gatoBotas2.jpeg',' Aventura, Animada','90','Gato con Botas: el último deseo es una película estadounidense de comedia de aventuras animada por computadora producida por DreamWorks Animation y distribuida por Universal Pictures.','https://www.youtube.com/watch?v=U5rGblIzIxc','A'),(9,'Megan',2022,'Estados Unidos','Gerard Johnstone','static/img/megan.jpg','Terror','102','Gemma, diseñadora de una muñeca de inteligencia artificial extraordinaria, se convierte en la tutora legal de una niña. Abrumada por la responsabilidad, cede su educación y protección a la muñeca, sin saber que las consecuencias serán terribles.','https://www.youtube.com/watch?v=VWH9ZSAGb1U','B'),(10,'Terrifier 2',2022,'Estados Unidos','Damien Leone','static/img/terrifier.jpg','Terror, Thriller','138','El payaso Art resucita en la morgue. Un año después, en la noche de Halloween, el siniestro psicópata vuelve al condado de Miles para atacar a unos hermanos adolescentes cuyo difunto padre les legó un libro con bocetos premonitorios sobre Art.','https://www.youtube.com/watch?v=6KkONLf_ZKU','B'),(11,'Beast',2022,'Estados Unidos','Baltasar Kormákur','static/img/bestia.jpg','aventura thriller    ','93','Un padre y sus dos hijas adolescentes se ven perseguidos por un enorme león rebelde que intenta demostrar que la sabana solo tiene un depredador ápice.','https://www.youtube.com/watch?v=rM0aUSHSTf0','A'),(12,'Avatar 2',2022,'Estados Unidos','James Cameron','static/img/avatar2.jpeg','Aventura, Drama, acción','190','Jake Sully y Neytiri han formado una familia y hacen todo lo posible por permanecer juntos. Sin embargo, deben abandonar su hogar y explorar las regiones de Pandora cuando una antigua amenaza reaparece.','https://www.youtube.com/watch?v=tlY7hL7Ti_4','B'),(13,'Gato con botas',2022,'Estados Unidos','Joel Crawford','static/img/gatoBotas2.jpeg',' Aventura, Animada','90','Gato con Botas: el último deseo es una película estadounidense de comedia de aventuras animada por computadora producida por DreamWorks Animation y distribuida por Universal Pictures.','https://www.youtube.com/watch?v=U5rGblIzIxc','A'),(14,'Megan',2022,'Estados Unidos','Gerard Johnstone','static/img/megan.jpg','Terror','102','Gemma, diseñadora de una muñeca de inteligencia artificial extraordinaria, se convierte en la tutora legal de una niña. Abrumada por la responsabilidad, cede su educación y protección a la muñeca, sin saber que las consecuencias serán terribles.','https://www.youtube.com/watch?v=VWH9ZSAGb1U','B'),(15,'Terrifier 2',2022,'Estados Unidos','Damien Leone','static/img/terrifier.jpg','Terror, Thriller','138','El payaso Art resucita en la morgue. Un año después, en la noche de Halloween, el siniestro psicópata vuelve al condado de Miles para atacar a unos hermanos adolescentes cuyo difunto padre les legó un libro con bocetos premonitorios sobre Art.','https://www.youtube.com/watch?v=6KkONLf_ZKU','B');
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `genero` varchar(10) DEFAULT NULL,
  `tarjeta_c` varchar(255) NOT NULL,
  `edad` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo` (`correo`),
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (5,'Dulce Elizabeth Mendoza de la Vega','elizabeth@admin.com','Elizabeth','femenino','123456789',23,'$2y$10$SpgC2d7HZWM.UdExsSdWg.xNC9KL7gI8zXgtvcltS/HvTzw2JMAUu','administrador'),(6,'Jorge Luis Esparza Fuentes','jorge@admin.com','Jorge','masculino','157964823',23,'$2y$10$Vpevgi1BR6C4wHZFyxt1ZeHA5AxZJBOHI/xA9FaptUstldYPedt4O','administrador'),(7,'Adriana Ramirez Toxqui','adriana@admin.com','Adriana','femenino','876142387',23,'$2y$10$jDTiqlECXulZpcf5ZmrTveApes6Gi82Ch0Hs4LBQ/h/8rRqwdv9V.','administrador'),(8,'Abigail Meztli Martinez Juarez','abigail@admin.com','Abigail','femenino','561472498',23,'$2y$10$RB5hmNjfkCA5qPb4FZXceODvSGFqiX3z2w9qtip8SFPc5Ujl4cuZS','administrador'),(9,'Juan Perez','juan@user.com','Juan','masculino','547612478',28,'$2y$10$kqBGxhuO9fmHoXr.SgXlCuC/zHv7IUZELW2XIEifnQd3JRK9z99pa','usuario'),(10,'Maria Lopez','maria@user.com','Maria','','543187045',32,'$2y$10$OvxNDM6QI02JexbPI7g./ubfDejKD1O.517zbhgoeI09IZUhtO29O','usuario'),(11,'Salvador Perez Viramontes','salvador@admin.com','Salvador','masculino','568742316',44,'$2y$10$lRl4LLVuq7cSvzpxsYlTG.q6LWDJ/tf8Y//i4JPJotuWmbjPr/QdG','administrador');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-15 11:58:27
