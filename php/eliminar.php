<?php

	include("conexion.php");

	$id=$_REQUEST['id'];

	$query="DELETE FROM principal WHERE id='$id'";
	$resultado= $conexion->query($query);

	if($resultado){
		header("Location: ../index_eliminar.html");
	}
	else{
		echo "Eliminación no exitosa";
	}
?>