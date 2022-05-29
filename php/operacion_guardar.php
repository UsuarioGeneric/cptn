<?php

	include("conexion.php");

	$id_in_en= $_POST['id_in_en'];
	$id_year= $_POST['id_year'];
	$id_mes= $_POST['id_mes'];
	$id_dia= $_POST['id_dia'];
	$producto= $_POST['producto'];
	$descripcion= $_POST['descripcion'];
	$precio= $_POST['precio'];

	$query="INSERT INTO principal(id_in_en,id_year,id_mes,id_dia,producto,descripcion,precio) VALUES('$id_in_en','$id_year','$id_mes','$id_dia','$producto','$descripcion','$precio')";
	$resultado= $conexion->query($query);

	if($resultado){
		header("Location: ../index_agregar.html");
	}
	else{
		echo "Error al intentar guardar los datos";
	}
?>