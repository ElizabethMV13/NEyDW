<?php
//Iniciamos sesión para usar $_SESSION
session_start();

//Comprueba que el usuario se haya logeado
//Si no es así lo redirige a inicio-sesion.html
if (empty($_SESSION["user"])){
    echo "<script>alert('Lo sentimos ha ocurrido un error. Intentalo de nuevo más tarde')
        document.location='inicio-sesion.html';
        exit();
    </script>";
}

//Comrpobamos el rol del usuario
//Si es administrador lo redirige a registra-pelicula.html
//Si es usuario lo refirige a cartelera.html
//En caso contrario muestra un error y redirige a inicio-sesion.html
if($_SESSION["rol"] === 'administrador'){
    header("Location: registra-pelicula.html");
}elseif($_SESSION["rol"] === 'usuario'){
    header("Location: cartelera.html");
}else{
    echo "<script>alert('Lo sentimos ha ocurrido un error. Intentalo de nuevo más tarde. ESTE ES EL ERROR')
        document.location='inicio-sesion.html';
        exit();
    </script>";
}

?>