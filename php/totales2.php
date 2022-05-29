<?php
  require 'conexion.php';
  $id_in_en=$_POST['in_en'];
  $id_year=$_POST['year'];
  $id_mes=$_POST['mes'];
  $id_dia=$_POST['dia'];
  $query="SELECT * FROM principal WHERE id_in_en like '%$id_in_en' and id_year LIKE '%$id_year' and id_mes LIKE '%$id_mes' and id_dia LIKE '%$id_dia'";
  $result=$conexion->query($query);
  $rows = $result->num_rows;

  $querrry="SELECT id_in_en, nombre_in_en FROM in_en";
  $resultd=$conexion->query($querrry);
  
  $que="SELECT id_year, nombre_year FROM year";
  $resul=$conexion->query($que);

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
  <link rel="stylesheet" type="text/css" href="../css/totales2.css">
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
      <h1 class="text-white text-center">Todos sus ingresos y egresos</h1>

      <!-- Botones -->
      <FORM ACTION="totales2.php" method="POST">
        <header>
          <nav>
            <div class="container text-white">
              <h5>Buscar por año y mes</h5>
              <select REQUIRED id="in_en" name="in_en">
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

              <select REQUIRED id= "year" name="year">
              <option value="">Año</option> 
                <?php 
                  while($dato = mysqli_fetch_array($resul))
                  {
                ?>
                  <option value="<?php echo $dato['nombre_year']?>"> <?php echo $dato['nombre_year']?> </option>
                <?php
                  }
                ?>  
              </select>

              <select id= "mes" name="mes">
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

              <select id= "dia" name="dia">
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

      <!-- Tabla -->
      <div class="container">
        <div class="row">
          <div class="col-md-8 text-center">
            <?php if($rows > 0) { ?>
              <table bgcolor="white" border="3"><br>
                <thead>
                  <tr>
                <th class="" colspan="7">Lista de tus registros</th>
              </tr>
                </thead>
                <tbody>
                  <tr>
                    <th><b>Ingreso o engreso</b></th>
                    <th><b>Año</b></th>
                    <th><b>Mes</b></th>
                    <th><b>Dia</b></th>
                    <th><b>Producto</b></th>
                    <th><b>Descripcion</b></th>
                    <th><b>Precio</b></th>
                  </tr>
                  <?php
                    while($resultado = $result->fetch_array())  {
                  ?>
                  <tr>
                    <td><b>
                      <?php echo $resultado['id_in_en'];?></b>
                    </td>
                    <td><b>
                      <?php echo $resultado['id_year'];?></b>
                    </td>
                    <td><b>
                      <?php echo $resultado['id_mes'];?></b>
                    </td>
                    <td><b>
                      <?php echo $resultado['id_dia'];?></b>
                    </td>
                    <td><b>
                      <?php echo $resultado['producto'];?></b>
                    </td>
                    <td><b>
                      <?php echo $resultado['descripcion'];?></b>
                    </td>                           
                    <td><b>
                      <?php echo $resultado['precio'];?></b>
                    </td>
                  </tr>
                  <?php } ?>
                </tbody>
              </table>
              <?php } else { ?>
              <center>
                <h1 class="text-white">No hay datos guardados</h1></center>
              <?php } ?>
          </div>

          <!-- Suma -->
          <div class="col-md-4 py-4">
            <table class="text-center" bgcolor="white" border="3">
              <thead>
                <tr>
                  <th>Total  del precio ganado</th>
              </tr>
            </thead>
            <tbody>
              <?php
                $query = "SELECT SUM(precio) AS sum FROM principal WHERE id_in_en like '%$id_in_en' and id_year LIKE '%$id_year' and id_mes LIKE '%$id_mes' and id_dia LIKE '%$id_dia'";

                $query_result = mysqli_query($conexion , $query);
                while($row = mysqli_fetch_assoc($query_result)){
                  $output = $row['sum'];
                }

              ?>
                <tr>
                  <td><?php
                    echo $output;
                  ?></td>
                </tr>
            </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>