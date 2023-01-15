<?php

$user = $_POST['user'];
$password = $_POST['password'];

//Incluimos el archivo de las funciones
include_once "funciones.php";


//Comprobamos que el inicio se sesión sea exitoso
//Si lo es, nos redirige a rol-usuario.php
//Si no lo es, nos indica que el usuario o la contraseña son incorrectos y nos redirige a inicio-sesion.html
$logueadoConExito = login($user, $password);
if ($logueadoConExito) {
    header("Location: rol-usuario.php");
    exit;
} else {
    echo "<script>alert('El usuario o la contraseña es incorrecta')
        document.location='inicio-sesion.html';
    </script>";
}
?>