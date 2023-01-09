<?php 
//Datos para la onexión a la base de datos
define('USER', 'root');
define('PASSWORD', '12345678');
define('HOST', 'localhost');
define('DATABASE', 'newdbname');

try{
    $connection = new PDO("mysql:host=" . HOST . ";dbname=" . DATABASE, USER, PASSWORD);
}catch(PDOException $e){
    exit("Error: " . $e->getMessage());
}
?>