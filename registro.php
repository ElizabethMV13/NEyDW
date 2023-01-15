<?php

$user_name = $_POST['user_name'];
$user_mail = $_POST['user_mail'];
$user = $_POST['user'];
$genero = $_POST['genero'];
$tarjeta_credito = $_POST['tarjeta_credito'];
$edades = $_POST['edades'];
$password = $_POST['password'];
$confirm_password = $_POST['confirm_password'];

//Verificamos que los compos requeridos no esten vacios
if($user_name === '' or $user_mail === '' or $user === '' or $tarjeta_credito === '' or $password === '' or $confirm_password === ''){
    echo "<script>alert('Ha ocurrido un error al realizar el registro. Es necesario que todos lo campos requeridos sean llenados. Por favor vuelve a intentarlo')
        document.location='registrate.html';
    </script>";
    exit;
}

//Verificamos que las contraseñas coincidan
if($password !== $confirm_password){
    echo "<script>alert('Las contraseñas no coinciden. Por favor intentalo de nuevo')
        document.location='registrate.html';
    </script>";
    exit;
}

//Incluimos el archivo de las funciones
include_once "funciones.php";

//Verificamos si el correo ya existe en la base de datos
$existeM = mailExiste($user_mail);
if($existeM){
    echo "<script>alert('Lo sentimos, el correo ya fue registrado, intenta registrate con otro correo')
        document.location='registrate.html';
    </script>";
    exit;
}

//Verificamos si el nombre de usuario ya existe en la base de datos
$existeU = userExiste($user);
if($existeU){
    echo "<script>alert('Lo sentimos, el nombre de usuario ya fue registrado, intenta registrate con otro nombre de usuario')
        document.location='registrate.html';
        exit();
    </script>";
    exit;
}

//Si el usuario no existe, lo registramos
$registradoCorrectamente = registrarUsuario($user_name, $user_mail, $user, $genero, $tarjeta_credito, $edades, $password);
if($registradoCorrectamente){
    echo "<script>alert('El registro ha sido exitoso, ahora ya puedes iniciar sesión :)')
        document.location='inicio-sesion.html';
    </script>";
}else{
    echo "<script>alert('Lo sentimos, ha ocurrido un error :( Intentalo de nuevo más tarde')
        document.location='registrate.html';
    </script>";
}
?>