<?php
    include 'conexion.php';
    $querrry="SELECT id_in_en, nombre_in_en FROM in_en";
    $resultd=$conexion->query($querrry);
    $query="SELECT id_year, nombre_year FROM year";
    $result=$conexion->query($query);
    $quer="SELECT id_mes, nombre_mes FROM mes";
    $resulta=$conexion->query($quer);
    $querry="SELECT id_dia, nombre_dia FROM dia";
    $resultad=$conexion->query($querry);
?>
<!DOCTYPE html>
<html>
<head>
	<link rel="icon" href="../img/CptN Logo.png">
	<title>Guardar</title>
	<!-- Bootstrap CSS -->
  	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  	<!-- CSS -->
  	<link rel="stylesheet" type="text/css" href="../css/modificar.css">
</head>
<body>
	<center>
		<?php

			$id=$_REQUEST['id'];

			include("conexion.php");

			$query="SELECT * FROM principal WHERE id='$id'";
			$resultado= $conexion->query($query);
			$row=$resultado->fetch_assoc();
		?>

		<h1 class="text-white py-5">¿Qué quiere modificar?</h1>
		<form action="modificar_proceso.php?id=<?php echo $row['id']; ?>" method="POST">

			<p class="text-black h6 d-inline">Agregue un registro</p>
			<select REQUIRED name="id_in_en" placeholder="Registro">
				<option value="<?php echo $row['id_in_en']; ?>"><?php echo $row['id_in_en']; ?></option> 
					<?php 
					    while($datos = mysqli_fetch_array($resultd))
					    {
					?>
					    <option value="<?php echo $datos['nombre_in_en']?>"> <?php echo $datos['nombre_in_en']?> </option>
					<?php
					    }
					?> 
			</select>
			<br><br>

			<p class="text-black h6 d-inline">Agregue un año</p>
			<select REQUIRED name="id_year">
				<option value="<?php echo $row['id_year']; ?>"><?php echo $row['id_year']; ?></option> 
					<?php 
					    while($datos = mysqli_fetch_array($result))
					    {
					?>
					    <option value="<?php echo $datos['nombre_year']?>"> <?php echo $datos['nombre_year']?> </option>
					<?php
					    }
					?> 
			</select>
			<br><br>

			<p class="text-black h6 d-inline">Agregue un mes</p>
			<select REQUIRED name="id_mes">
				<option value="<?php echo $row['id_mes']; ?>"><?php echo $row['id_mes']; ?></option> 
					<?php 
					    while($dato = mysqli_fetch_array($resulta))
					    {
					?>
					    <option value="<?php echo $dato['nombre_mes']?>"> <?php echo $dato['nombre_mes']?> </option>
					<?php
					    }
					?> 
			</select>
			<br><br>

			<p class="text-black h6 d-inline">Agregue un día</p>
			<select REQUIRED name="id_dia">
				<option value="<?php echo $row['id_dia']; ?>"><?php echo $row['id_dia']; ?></option> 
					<?php 
					    while($dato = mysqli_fetch_array($resultad))
					    {
					?>
					    <option value="<?php echo $dato['nombre_dia']?>"> <?php echo $dato['nombre_dia']?> </option>
					<?php
					    }
					?> 
			</select>
			<br><br>

			<p class="text-black h6 d-inline">Agregue el producto</p>
			<input type="text" REQUIRED name="producto" placeholder="Agregue el producto" value="<?php echo $row['producto']; ?>"/>
			<br><br>

			<p class="text-black h6 d-inline">Agregue una descripción</p>
			<input type="text" REQUIRED name="descripcion" placeholder="Agregue la descripcion" value="<?php echo $row['descripcion']; ?>"/>
			<br><br>

			<p class="text-black h6 d-inline">Agregue un precio</p>
			<input type="text" REQUIRED name="precio" placeholder="Agregue el precio" value="<?php echo $row['precio']; ?>"/>
			<br><br>

			<input type="submit" value="Aceptar"/>
		</form>	
	</center>
</body>
</html>