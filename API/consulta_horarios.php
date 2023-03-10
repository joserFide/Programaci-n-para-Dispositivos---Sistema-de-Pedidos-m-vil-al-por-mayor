<?php 
include "config.php";
include "utils.php";

$dbConn =  connect($db);

if ($_SERVER['REQUEST_METHOD'] == 'GET')
{
    if (isset($_GET['P_FECHA']))
    {
      //Mostrar un post
      $sql = $dbConn->prepare("CALL CONSULTA_HORARIOS (:P_FECHA)");
      $sql->bindValue(':P_FECHA', $_GET['P_FECHA']);
      $sql->execute();
      header("HTTP/1.1 200 OK");
      echo json_encode( $sql->fetchAll(PDO::FETCH_ASSOC)  );
      exit();
	}
}
?>