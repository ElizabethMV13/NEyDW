<?php 
//Iniciamos sesión
session_start();

//Destruimos la sesión, es decir eliminamos lo que haya en $_SESSION
session_destroy();

// Redireccionamos a inicio-sesion.html
header("Location: inicio-sesion.html");

?>