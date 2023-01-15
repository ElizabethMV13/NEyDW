<?php 
	//  <form name = "registra-peliculaPHP" action="registra-pelicula.php" method="dialog">
	$p_titulo = $_POST["titulo"];
	$p_anio = $_POST["anio"];
	$p_pais = $_POST["pais"];
	$p_director = $_POST["directores"];
	$p_poster = $_POST["img"];

	$p_genero_av = $_POST["check_aventura"];
	$p_genero_ter = $_POST["check_terror"];
	$p_genero_th = $_POST["check_thriller"];
	$p_genero_fam = $_POST["check_familiar"];
	$p_genero_acc = $_POST["check_accion"];
	$p_genero_dr = $_POST["check_drama"];
	$p_genero_co = $_POST["check_comedia"];

	$p_duracion = $_POST["duracion"];
	$p_sinopsis = $_POST["sinopsis"];
	$p_thrialler = $_POST["thrialler"];
	$p_clasificacion = $_POST["clasificacion"];

	//Incluimos el archivo de las funciones
	//include_once "conexionbd.php";


	function dispError()
	{ return mysql_error() . "(" . mysql_errno() . ")" ; }

	$db_cnx = mysqli_connect("localhost", "root","12345678", "eq5dbpeliculas");
	$cnx_rslt = mysqli_connect_errno();

	if ($cnx_rslt != 0)
	   { echo "Error de Conexion al DB Server: "  . $cnx_rslt . " " . mysqli_connect_error()
	       . "<br><br>" ; exit; }



	//obtenerBaseDeDatos();

	if(empty($p_genero_av)){ $p_genero_av = " ";}
	if(empty($p_genero_ter)){ $p_genero_ter = " ";}
	if(empty($p_genero_th)){ $p_genero_th = " ";}
	if(empty($p_genero_fam)){ $p_genero_fam = " ";}
	if(empty($p_genero_acc)){ $p_genero_acc = " ";}
	if(empty($p_genero_dr)){ $p_genero_dr = " ";}
	if(empty($p_genero_co)){ $p_genero_co = " ";}

	$p_genero = $p_genero_av . $p_genero_ter . $p_genero_th . $p_genero_fam . $p_genero_acc . $p_genero_dr . $p_genero_co ;

	$sql_cmd = 	"INSERT INTO `pelicula` (`peli_id`, `peli_titulo`, `peli_anio`, `peli_pais`, `peli_director`, `peli_genero`, `peli_duracion`, `peli_sinopsis`, `peli_thriller`, `peli_clasificacion`) VALUES (NULL, '". $p_titulo . "', '" . $p_anio . "', '" . $p_pais . "', '" . $p_director . "', '" . $p_genero . "', '" . $p_duracion . "', '" . $p_sinopsis . "', '" . $p_thrialler . "', '" . $p_clasificacion . "');";

	$rslt = mysqli_query($db_cnx, $sql_cmd);
	//echo "InsRslt = $rslt " . mysqli_error($db_cnx) ."<br>";
	
	echo '<script>alert("Tus datos han sido guardados correctamente");
		document.location="cartelera.html";
	</script>';

	//Consulta a película



?>