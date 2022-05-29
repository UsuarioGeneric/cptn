<?php

	include("conexion.php");

	$id=$_REQUEST['id'];
	$id_in_en= $_POST['id_in_en'];
	$id_year= $_POST['id_year'];
	$id_mes= $_POST['id_mes'];
	$id_dia= $_POST['id_dia'];
	$producto= $_POST['producto'];
	$descripcion= $_POST['descripcion'];
	$precio= $_POST['precio'];

	$query="UPDATE principal SET id_in_en='$id_in_en', id_year='$id_year', id_mes='$id_mes', id_dia='$id_dia', producto='$producto', descripcion='$descripcion', precio='$precio' WHERE id='$id'";
	$resultado= $conexion->query($query);

	if($resultado){
		header("Location: ../index_modificar.html");
	}
	else{
		echo "insercion no exitosa";
	}
?>