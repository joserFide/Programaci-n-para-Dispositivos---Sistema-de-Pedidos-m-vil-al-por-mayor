<?php 
include "config.php";
include "utils.php";

$dbConn =  connect($db);

// Crear un nuevo post
if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
    $nombre= $_POST["P_NOMBRE"];
    $telefono= $_POST["P_TELEFONO"];
    $correo= $_POST["P_CORREO"];

    
      $sql = $dbConn->prepare("CALL CREAR_CLIENTE ('$nombre','$telefono','$correo')");
      $sql->execute();
      header("HTTP/1.1 200 OK");

      exit();
	
}
?>