CREATE DATABASE IF NOT EXISTS eq5dbpeliculas;
USE eq5dbpeliculas;

CREATE TABLE IF NOT EXISTS usuarios(
    id bigint unsigned not null auto_increment,
    nombre varchar(255) not null,
    correo varchar(255) not null unique, 
    user varchar(255) not null unique,
    genero varchar(10),
    tarjeta_c varchar(255) not null,
    edad int not null,
    password varchar(255) not null,
    rol varchar(15) not null,
    primary key(id)
);
