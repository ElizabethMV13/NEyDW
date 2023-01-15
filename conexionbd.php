 <?php 
//Datos para la onexión a la base de datos
function obtenerBaseDeDatos(){
    $databasename = "eq5dbpeliculas";
    $user = "root";
    $password = "12345678";
    
    try{
        $database = new PDO('mysql:host=localhost;dbname=' . $databasename, $user, $password);
        $database->query("set names utf8;");
        $database->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $database->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $database->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
        return $database;
    }catch(Exception $e){
        echo "Error al obtener la base de datos: " . $e->getMessage();
        return null;
    }
}
?>