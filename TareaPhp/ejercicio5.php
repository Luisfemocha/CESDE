<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilos.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <title>Ejercicio5</title>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
            <a class="navbar-brand" href="#">GeneralidadesPHP1</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ejercicio1.php">Ejercicio 1</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ejercicio2.php">Ejercicio 2</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ejercicio3.php">Ejercicio 3</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ejercicio4.php">Ejercicio 4</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="ejercicio5.php">Ejercicio 5<span class="sr-only">(current)</span></a>
                    </li>
                </ul>
                <span class="navbar-text">
                    PROGRAMACIÓN PARA LA WEB I
                </span>
            </div>
        </nav>
        <h1>Ejercicio 5</h1>
    </header>
    <main>
        <p>
            Bancolombia contrata sus servicios de desarrollador para realizar un programa en PHP que permita almacenar
            información de nombre, teléfono, dirección y salario de 5 usuarios de una sucursal llamada sucursal A. Además, su
            programa debe estar en la capacidad de sumar todos los salarios de los usuarios de la sucursal A en una sola variable
            llamada $sumatoriaSalarios y así poder comparar dicho valor con las sucursales B cuyo valor de salarios mensual es de
            20.000.000 y la sucursal C cuyo valor de salarios mensuales es de 15.000.000. Permita que su código muestre cual sucursal
            tiene la mejor sumatoria de salarios y además muestre en pantalla la información completa de los 5 usuarios de la sucursal
            A
        </p>
        <?php
            session_start();
        ?>
        <center>
            <form method="POST">
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label>Nombre: </label>
                        <input type="text" class="form-control form-control-lg" name="name1" placeholder="Trabajador 1">
                    </div>
                    <div class="form-group col-md-2">
                        <label>Teléfono: </label>
                        <input type="number" class="form-control form-control-lg" name="tel1"> 
                    </div>
                    <div class="form-group col-md-4">
                        <label>Dirección:</label>
                        <input type="text" class="form-control form-control-lg" name="dir1"> 
                    </div>
                    <div class="form-group col-md-2">
                        <label>Salario: </label>
                        <input type="number" step="0.01" class="form-control form-control-lg" name="sal1"> 
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <input type="text" class="form-control form-control-lg" name="name2" placeholder="Trabajador 2">
                    </div>
                    <div class="form-group col-md-2">
                        <input type="number" class="form-control form-control-lg" name="tel2"> 
                    </div>
                    <div class="form-group col-md-4">
                        <input type="text" class="form-control form-control-lg" name="dir2"> 
                    </div>
                    <div class="form-group col-md-2">
                        <input type="number" step="0.01" class="form-control form-control-lg" name="sal2"> 
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <input type="text" class="form-control form-control-lg" name="name3" placeholder="Trabajador 3">
                    </div>
                    <div class="form-group col-md-2">
                        <input type="number" class="form-control form-control-lg" name="tel3"> 
                    </div>
                    <div class="form-group col-md-4">
                        <input type="text" class="form-control form-control-lg" name="dir3"> 
                    </div>
                    <div class="form-group col-md-2">
                        <input type="number" step="0.01" class="form-control form-control-lg" name="sal3"> 
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <input type="text" class="form-control form-control-lg" name="name4" placeholder="Trabajador 4">
                    </div>
                    <div class="form-group col-md-2">
                        <input type="number" class="form-control form-control-lg" name="tel4"> 
                    </div>
                    <div class="form-group col-md-4">
                        <input type="text" class="form-control form-control-lg" name="dir4"> 
                    </div>
                    <div class="form-group col-md-2">
                        <input type="number" step="0.01" class="form-control form-control-lg" name="sal4"> 
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <input type="text" class="form-control form-control-lg" name="name5" placeholder="Trabajador 5">
                    </div>
                    <div class="form-group col-md-2">
                        <input type="number" class="form-control form-control-lg" name="tel5"> 
                    </div>
                    <div class="form-group col-md-4">
                        <input type="text" class="form-control form-control-lg" name="dir5"> 
                    </div>
                    <div class="form-group col-md-2">
                        <input type="number" step="0.01" class="form-control form-control-lg" name="sal5"> 
                    </div>
                </div>
                <input class="btn btn-secondary" type="submit" value="Submit" name="submit">
            </form>

            <?php
                echo "<br>";
                if(isset($_POST['submit']) && $_POST['name1']!="" && $_POST['tel1']!="" && $_POST['dir1']!="" && $_POST['sal1']!="" && $_POST['name2']!="" && $_POST['tel2']!="" && $_POST['dir2']!="" && $_POST['sal2']!="" && $_POST['name3']!="" && $_POST['tel3']!="" && $_POST['dir3']!="" && $_POST['sal3']!="" && $_POST['name4']!="" && $_POST['tel4']!="" && $_POST['dir4']!="" && $_POST['sal4']!="" && $_POST['name5']!="" && $_POST['tel5']!="" && $_POST['dir5']!="" && $_POST['sal5']!="") {
                    
                    $n1=$_POST['name1'];
                    $t1=$_POST['tel1'];
                    $d1=$_POST['dir1'];
                    $s1=$_POST['sal1'];

                    $n2=$_POST['name2'];
                    $t2=$_POST['tel2'];
                    $d2=$_POST['dir2'];
                    $s2=$_POST['sal2'];

                    $n3=$_POST['name3'];
                    $t3=$_POST['tel3'];
                    $d3=$_POST['dir3'];
                    $s3=$_POST['sal3'];

                    $n4=$_POST['name4'];
                    $t4=$_POST['tel4'];
                    $d4=$_POST['dir4'];
                    $s4=$_POST['sal4'];

                    $n5=$_POST['name5'];
                    $t5=$_POST['tel5'];
                    $d5=$_POST['dir5'];
                    $s5=$_POST['sal5'];
                    
                    $sumatoriaSalarios= $s1 + $s2 + $s3 + $s4 + $s5;
                    echo "La sumatoria de los salarios de la sucursal A es de $".$sumatoriaSalarios.".";
                    if($sumatoriaSalarios > 20000000){
                        echo "<br> La sucursal A tiene el mayor valor de salarios mensuales, después la sucursal B y por última la sucursal C.";
                    }
                    else if($sumatoriaSalarios > 15000000){
                        echo "<br> La sucursal B tiene el mayor valor de salarios mensuales, después la sucursal A y por última la sucursal C.";
                    }
                    else{
                        echo "<br> La sucursal B tiene el mayor valor de salarios mensuales, después la sucursal C y por última la sucursal A.";
                    }
                    echo "<br>";
                    echo "<br> El trabajador 1 se llama ".$n1.", su teléfono es ".$t1.", vive en ".$d1." y tiene un salario de $".$s1.".";
                    echo "<br> El trabajador 2 se llama ".$n2.", su teléfono es ".$t2.", vive en ".$d2." y tiene un salario de $".$s2.".";
                    echo "<br> El trabajador 3 se llama ".$n3.", su teléfono es ".$t3.", vive en ".$d3." y tiene un salario de $".$s3.".";
                    echo "<br> El trabajador 4 se llama ".$n4.", su teléfono es ".$t4.", vive en ".$d4." y tiene un salario de $".$s4.".";
                    echo "<br> El trabajador 5 se llama ".$n5.", su teléfono es ".$t5.", vive en ".$d5." y tiene un salario de $".$s5.".";
                }
                else{
                    echo"Por favor rellene los campos.";
                }
            ?>
        </center>
    </main>
    <footer>
        <hr>
        <p>
            Luis Felipe Moreno Chamorro <br>
            luisfemocha@gmail.com ✉ <br>
            3044056879 ✆ <br>
        </p>
        <div class="bandera"></div>&nbsp;Medellín <br>
        &nbsp;Colombia
    </footer>
</body>
</html>