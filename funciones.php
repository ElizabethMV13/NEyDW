<?php
//Incluimos el archivo de conexión a la base de datos
include_once "conexionbd.php";

//Función para comprobar si el correo electrónico ya ha sido registrado
function mailExiste($user_mail){
    $base_de_datos = obtenerBaseDeDatos();
    $sentencia = $base_de_datos->prepare("SELECT correo FROM usuarios WHERE correo = ? LIMIT 1;");
    $sentencia->execute([$user_mail]);
    return $sentencia->rowCount() > 0;
}

//Función para comprobar si el nombre de usuario ya ha sido registrado
function userExiste($user){
    $base_de_datos = obtenerBaseDeDatos();
    $sentencia = $base_de_datos->prepare("SELECT user FROM usuarios WHERE user = ? LIMIT 1;");
    $sentencia->execute([$user]);
    return $sentencia->rowCount() > 0;
}

//Función para registrar el usuario
function registrarUsuario($user_name, $user_mail, $user, $genero, $tarjeta_credito, $edades, $password){
    $password = hashPassword($password);
    $base_de_datos = obtenerBaseDeDatos();
    $sentencia = $base_de_datos->prepare("INSERT INTO usuarios(nombre, correo, user, genero, tarjeta_c, edad, password, rol) values(?, ?, ?, ?, ?, ?, ?, 'usuario')");
    return $sentencia->execute([$user_name, $user_mail, $user, $genero, $tarjeta_credito, $edades, $password]);
}

//Función para hashear la contraseña
function hashPassword($password){
    return password_hash($password, PASSWORD_BCRYPT);
}

//Función login, si el usuario existe y la contrasela es correcta inicia sesión y devuleve True
function login($user, $password){
    $posibleUsuarioRegistrado = obtenerUsuario($user);
    if ($posibleUsuarioRegistrado === false) {
        return false;
    }
    $passwordDeBaseDeDatos = $posibleUsuarioRegistrado->password;
    $coincide = coincidePassword($password, $passwordDeBaseDeDatos);
    if (!$coincide) {
        return false;
    }
    iniciarSesion($posibleUsuarioRegistrado);
    return true;
}

//Función para obtener el usuario
function obtenerUsuario($user){
    $base_de_datos = obtenerBaseDeDatos();
    $sentencia = $base_de_datos->prepare("SELECT user, password, rol FROM usuarios WHERE user = ? LIMIT 1;");
    $sentencia->execute([$user]);
    return $sentencia->fetchObject();
}

//Función para comprobar si la contraseña es correcta
function coincidePassword($password, $passwordDeBaseDeDatos){
    return password_verify($password, $passwordDeBaseDeDatos);
}

//Función para iniciar sesión, pone los datos del usuario dentro de la sesión
function iniciarSesion($usuario){
    session_start();
    $_SESSION["user"] = $usuario->user;
    $_SESSION["rol"] = $usuario->rol;
}

?>