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
  <title>Control para tu Negocio</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <!-- CSS -->
  <link rel="stylesheet" type="text/css" href="../css/agregar.css">
</head>
<body class="container">
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-info">
    <div class="container">
      <a class="navbar-brand" href="../index.html">
          <img src="../img/CptN Logo.png" style="width: 13%">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a class="nav-link" href="principal.php">Registros</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="totales.php">Totales</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="agregar.php">Agregar</a>
              </li>
          </ul>
      </div>
    </div>
  </nav>

  <!-- Encabezamiento -->
  <header class="main-header">
    <div class="background-overlay">
     	<h1 class="text-black text-center">Agregue un registro</h1>
     	
     	<!-- Agregar -->
		<div class="container py-3">
			<form action="operacion_guardar.php" method="POST">

				<p class="h6 d-inline">Agregue un registro</p>
				<select REQUIRED name="id_in_en">
					<option value="">Registro</option> 
					    <?php 
					        while($datos = mysqli_fetch_array($resultd))
					        {
					    ?>
					        <option value="<?php echo $datos['nombre_in_en']?>"> <?php echo $datos['nombre_in_en']?> </option>
					    <?php
					        }
					    ?> 
				</select>
				

				<p class="h6 d-inline">Agregue un año</p>
				<select REQUIRED name="id_year">
					<option value="">Año</option> 
					    <?php 
					        while($datos = mysqli_fetch_array($result))
					        {
					    ?>
					        <option value="<?php echo $datos['nombre_year']?>"> <?php echo $datos['nombre_year']?> </option>
					    <?php
					        }
					    ?> 
				</select>
				

				<p class="h6 d-inline">Agregue un mes</p>
				<select REQUIRED name="id_mes">
					<option value="">Mes</option> 
					    <?php 
					        while($dato = mysqli_fetch_array($resulta))
					        {
					    ?>
					        <option value="<?php echo $dato['nombre_mes']?>"> <?php echo $dato['nombre_mes']?> </option>
					    <?php
					        }
					    ?> 
				</select>
				

				<p class="h6 d-inline">Agregue un día</p>
				<select REQUIRED name="id_dia">
					<option value="">Día</option>
					    <?php 
					        while($dato = mysqli_fetch_array($resultad))
					        {
					    ?>
					        <option value="<?php echo $dato['nombre_dia']?>"> <?php echo $dato['nombre_dia']?> </option>
					    <?php
					        }
					    ?> 
				</select>
				<br>

				<p class="h6 d-inline">Agregue un producto/concepto</p>
				<input type="text" REQUIRED name="producto" placeholder="Ingrese el producto" value=""/>
				

				<p class="h6 d-inline">Agregue una descripción</p>
				<input type="text" REQUIRED name="descripcion" placeholder="Ingrese la descripción" value=""/>
				

				<p class="h6 d-inline">Agregue un precio</p>
				<input type="text" REQUIRED name="precio" placeholder="Ingrese el precio" value=""/>
				<br><br>

				<input type="submit" value="Aceptar"/>
			</form>	
		</div>
    </div>
  </header>

  <!-- Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>