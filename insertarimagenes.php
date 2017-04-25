<?php
require('conexion.php');
$query ="SELECT * FROM pueblos";
$resultado=$mysqli->query($query);
?>
<html>
<head>
    <title>Administrador Pueblos Magicos</title>
    <style>
        #menu {
            width: 200px;
            float: right;
        }
    </style>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="static/css/bootstrap.css" rel="stylesheet">
    <link href="static/css/bootstrap.min.css" rel="stylesheet" media="screen"> 
    <link href="static/css/carrusel.css" rel="stylesheet">
</head>
<body>
    
    <nav role="navigation" class="navbar navbar-default">
        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="admin.php" class="navbar-brand">Le Tournée Admin</a>
        </div>
 
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="bienvenido.php">Acerca de</a></li>
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">Nuevo <b class="caret"></b></a>
                        <ul role="menu" class="dropdown-menu">
                                <li><a href="nuevopueblo.php">Nuevo Pueblo Magico</a></li>
                                <li><a href="nuevolugar.php">Nuevo lugar de interes</a></li>
                                <li><a href="nuevaguia.php">Nueva Guia</a></li>
                            <li><a href="insertarimagenes.php">Subir imagenes</a></li>
                        </ul>
                </li>
                <li><a href="pueblos.php">Pueblos magicos</a></li>
                <li><a href="lugares.php">Lugares de interes</a></li>
                <li><a href="guias.php">Guias</a></li>
            </ul>
        </div>
</nav>
        
		<div class="container">
    <div class="row">
        <div class="col-md-5 col-md-offset-3">
            <div class="page-header text center">
                <h1>Nuevo Lugar de Interes</h1>       
            </div>
            <form class="form-signin" method="post" action="insert_img.php" enctype="multipart/form-data">
                <label for="imagen">Subir imagen del pueblo magico</label>
                <input type="file" name="imagen_lugar">
                <label for="nombrepueblo" class="sr-only">Nombre lugar de interes</label>
                <!-- <input type="number" name="id_pueblo" class="form-control" placeholder="id del pueblo que pertenece" required autofocus> -->
                <select name ="pueblos" class="form-control" required autofocus>
                    <?php while($row=$resultado->fetch_assoc()){?>
                    
                    <option value="<?php echo $row['id_pueblo'];?>"><?php echo $row['nom_pueblo'];?></option>
                    <?php } ?>
                </select>
                <input type="submit" class="btn btn-lg btn-primary btn-block" value = "Registrar">
            </form>
        </div>
    </div>
</div>
</body>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="static/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery.js"></script>
 
</html>	
