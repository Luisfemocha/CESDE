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
    <title>Ejercicio4</title>
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
                    <li class="nav-item active">
                        <a class="nav-link" href="ejercicio4.php">Ejercicio 4<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ejercicio5.php">Ejercicio 5</a>
                    </li>
                </ul>
                <span class="navbar-text">
                    PROGRAMACIÓN PARA LA WEB I
                </span>
            </div>
        </nav>
        <h1>Ejercicio 4</h1>
    </header>
    <main>
        <p>
            Hacer un programa en PHP para ayudar a un trabajador de Postobón a saber cuál será su sueldo semanal, se sabe que si
            trabaja 40 horas o menos, se le pagará $20000 por hora, pero si trabaja más de 40 horas entonces las horas extras se le
            pagarán a $25k por hora. Ejecute su código para calcular el salario con 36 horas trabajadas.
        </p>
        <?php
            session_start();
        ?>
        <center>
            <form method="POST">
                <div class="form-group row">
                    <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg lab1">Horas trabajadas:</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control form-control-lg" name="h" placeholder=36>
                    </div>
                </div>
                <input class="btn btn-secondary" type="submit" value="Submit" name="submit">
            </form>
        
        <?php
            echo "<br> ";
            $h=36;
            if(isset($_POST['submit'])) {
	            $h=$_POST['h'];
            }
            if ($h==0){
                echo "No ha ingresado un valor.";
            }
            else{
                if($h <= 40){
                    $t=20000*$h;
                }
                else{
                    $t= 20000*40 + 25000*($h-40);
                }
                echo "Por trabajar ".$h." horas, se le pagará al trabajador $".round($t,2).".";
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