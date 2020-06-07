
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
    <title>Ejercicio3</title>
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
                    <li class="nav-item active">
                        <a class="nav-link" href="ejercicio3.php">Ejercicio 3<span class="sr-only">(current)</span></a>
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
        <h1>Ejercicio 3</h1>
    </header>
    <main>
        <p>
            Hacer un programa en PHP para la tienda Spring Step que tiene una promoción de descuento para vender al mayor, esta
            dependerá del número de zapatos que se compren. Si son 3 pares se les dará un 10% de descuento sobre el total de la
            compra; si el número de zapatos es mayor 3 pares pero menor o igual de 5 pares, se le otorga un 20% de descuento; y si son
            más 5 pares de zapatos se otorgará un 40% de descuento. Defina la cantidad de variables que necesite, el precio de cada
            pare de zapatos =$150.000 y establezca el valor total de una compra de 5 pares de zapatos
        </p>
        <?php
            session_start();
        ?>
        <center>
            <form method="POST">
                <div class="form-group row">
                    <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg lab1">Cantidad de zapatos:</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control form-control-lg" name="q" placeholder=5>
                    </div>
                    <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg lab1">Precio:</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control form-control-lg" name="v" placeholder=150000>
                    </div>
                </div>
                <input class="btn btn-secondary" type="submit" value="Submit" name="submit">
            </form>
        
        <?php
            echo "<br> ";
            $q=5;
            $v=150000;
            if(isset($_POST['submit'])) {
	            $q=$_POST['q'];
                $v=$_POST['v'];
            }
            if ($q==0 || $v==0){
                echo "No ha ingresado un valor.";
            }
            else{
                $t= $q * $v;
                if($q == 3){
                    $t*=0.9;
                }
                else if($q > 5){
                    $t*=0.6;
                }
                else if($q > 3){
                    $t*=0.8;
                }
                echo "El precio para comprar ".$q." pares de zapatos por $".$v." cada uno, es de: $".round($t,2);
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