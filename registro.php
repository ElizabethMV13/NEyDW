<?php

$user_name = $_POST['user_name'];
$user_mail = $_POST['user_mail'];
$user = $_POST['user'];
$genero = $_POST['genero'];
$tarjeta_credito = $_POST['tarjeta_credito'];
$edades = $_POST['edades'];
$password = $_POST['password'];
$confirm_password = $_POST['confirm_password'];

//Verificamos que las contraseñas coincidan
if($password !== $confirm_password){
    echo 'Las contraseñas no coinciden, intentalo de nuevo';
    exit;
}

//Incluimos el archivo de las funciones
include_once "funciones.php";

//Verificamos si el usuario ya existe
$existe = usuarioExiste($correo);
if($existe){
    echo "Lo sentimos, el correo ya fue registrado";
    exit;
}

//Si el usuario no existe, lo registramos
$registradoCorrectamente = registrarUsuario($user_name, $user_mail, $user, $genero, $tarjeta_credito, $edades, $password);
if($registradoCorrectamente){
    echo "Registro correcto"
}else{
    echo "Ha ocurrido un error, intentalo de nuevo más tarde"
}
?>