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
    <title>Ejercicio2</title>
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
                    <li class="nav-item active">
                        <a class="nav-link" href="ejercicio2.php">Ejercicio 2<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ejercicio3.php">Ejercicio 3</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ejercicio4.php">Ejercicio 4</a>
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
        <h1>Ejercicio 2</h1>
    </header>
    <main>
        <p>
            El gimnasio Bodytech, lo contrata para desarrollar una aplicación web que permita a sus usuarios calcular el índice de
            masa corporal.
        </p>
        <?php
            session_start();
        ?>
        <center>
            <form method="POST">
                <div class="form-group row">
                    <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg lab1">Peso:</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control form-control-lg" name="kg" placeholder=85>
                    </div>
                    <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg lab1">Altura:</label>
                    <div class="col-sm-10">
                        <input type="number" step="0.01" class="form-control form-control-lg" name="h" placeholder=1.78 > 
                    </div>
                </div>
                <input class="btn btn-secondary" type="submit" value="Submit" name="submit">
            </form>

            <?php
                echo "<br> ";
                $w=85;
                $h=1.78;
                if(isset($_POST['submit'])) {
                    $w=$_POST['kg'];
                    $h=$_POST['h'];
                }
                if($w==0 || $h==0){
                    echo "No ha ingresado un valor.";
                }
                else{
                    $imc= $w / ($h*$h);
                    if($imc <= 18.4){
                        echo "Su IMC es de: ".round($imc,2).". Insuficiencia de peso.";
                    }
                    else if($imc <= 24.9){
                        echo "Su IMC es de: ".round($imc,2).". Peso normal.";
                    }
                    else if($imc <= 29.9){
                        echo "Su IMC es de: ".round($imc,2).". Sobrepeso.";
                    }
                    else if($imc <= 34.9){
                        echo "Su IMC es de: ".round($imc,2).". Obesidad 1.";
                    }
                    else if($imc <= 39.9){
                        echo "Su IMC es de: ".round($imc,2).". Obesidad 2.";
                    }
                    else{
                        echo "Su IMC es de: ".round($imc,2).". Obesidad 3.";
                    }
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