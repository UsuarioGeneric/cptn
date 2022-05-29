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
  <link rel="stylesheet" type="text/css" href="../css/principal.css">
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
    <div class="background-overlay py-5">
      <h1 class="text-white text-center">Registros guardados</h1>

      <!-- Botones -->
      <FORM ACTION="principal2.php" method="POST">
        <header>
          <nav>
            <div class="container text-white text-center">
              <select  REQUIRED id="year" name="year">
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

              <select id= "nombre_mes" name="nombre_mes">
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

              <select id= "nombre_dia" name="nombre_dia">
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
              <input type="submit" value="Buscar">
            </div>
          </nav>  
        </header>
      </FORM>

      <!-- Bienvenida -->
      <div class="background-overlay text-white py-5">
      <div class="text-center">
        <img src="../img/CptN Logo.png" class="img-fluid" style="width: 200px">
        <h2>En registros podrá buscar toda la información que ha guardado y tendrá la posibilidad de modificarlo o eliminarlo</h2>
      </div>
      </div>

  <!-- Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>