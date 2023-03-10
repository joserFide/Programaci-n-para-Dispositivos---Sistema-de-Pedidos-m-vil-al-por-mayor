<?php 
include "config.php";
include "utils.php";

$dbConn =  connect($db);

if ($_SERVER['REQUEST_METHOD'] == 'GET')
{
    if (isset($_GET['P_CORREO']))
    {
      //Mostrar un post
      $sql = $dbConn->prepare("CALL DATOS_CLIENTE (:P_CORREO)");
      $sql->bindValue(':P_CORREO', $_GET['P_CORREO']);
      $sql->execute();
      header("HTTP/1.1 200 OK");
      echo json_encode( $sql->fetchAll(PDO::FETCH_ASSOC)  );
      exit();
	}
}
?>