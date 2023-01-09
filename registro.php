<?php
include_once('conexion.php');
session_start();

$user_name = $_POST['user_name'];
$user_mail = $_POST['user_mail'];
$user = $_POST['user'];
$genero = $_POST['genero'];
$tarjeta_credito = $_POST['tarjeta_credito'];
$edades = $_POST['edades'];
$password = $_POST['password'];
$confirm_password = $_POST['confirm_password'];

if($password !== $confirm_password){
    echo '<p class="error">Las contraseñas no coinciden</p>';
    exit;
}

$query = $conexion->prepare("select * from usuarios where email=:email");
$query->bindParam("email", $email, PDO::PARAM_STR);
$query->execute();

if ($query->rowCount() > 0){
    echo '<p class="error">La dirección de correo electrónico ya ha sido registrada</p>';
}

if($query->rowCount() == 0){
    $query = $conexion->prepare("INSERT INTO usuarios (username, usermail, user, genero, tarjeta, edad, password) values (:user_name, :user_mail, :user, :genero, :tarjeta_credito, :edad, :password)");
    $query->bindParam("user_name", $user_name, PDO::PARAM_STR);
    $query->bindParam("user_mail", $user_mail, PDO::PARAM_STR);
    $query->bindParam("user", $user, PDO::PARAM_STR);
    $query->bindParam("genero", $genero, PDO::PARAM_STR);
    $query->bindParam("tarjeta_credito", $tarjeta_credito, PDO::PARAM_STR);
    $query->bindParam("edades", $edades, PDO::PARAM_STR);
    $query->bindParam("password", $password, PDO::PARAM_STR);
    $result = $query->execute();

    if($result){
        echo '<p class="success">Tu registro ha sido exitoso</p>';
    }else{
        echo '<p class="error">Ha ocurrido un error y el usuario no pudo registrarse</p>';
    }
}

?>