<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilo.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <title>Taller2</title>
</head>
<body>
    <header></header>
    <main>
        <div class="div1">
            <div class="div2">
                <center><h1>Regístrate en <br> nuestra web</h1></center>
                <form action="index.php" method="POST">
                    <div class="form-group col-xl-auto">
                        <label class="sub">Crear registro: </label><br>
                        <label for="name">Nombre Usuario</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <i class="fa fa-user icon"></i>
                            </div>
                            <input type="text" class="form-control" name="name" id="name">
                        </div>
                    </div>
                    <div class="form-group col-xl-auto">
                        <label for="email">Correo electrónico</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <i class="fa fa-envelope icon"></i>
                            </div>
                            <input type="text" class="form-control" name="email" id="email" placeholder="example@mail.com">
                        </div>
                    </div>                    

                    <div class="form-group col-xl-auto">
                        <label for="psw">Contraseña</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <i class="fas fa-key icon"></i>
                            </div>
                            <input type="password" class="form-control" name="psw" id="psw">
                        </div>
                        
                    </div>
                    <div class="form-group col-xl-auto">
                        <input type="submit" class="btn btn-primary btn-lg btn-block" value="Agregar" name="agregar" id="agregar">
                    </div>
                </form>
                <hr>
                <form action="index.php" method="POST">
                    <div class="form-group col-xl-auto">
                        <label class="sub">Consultar registro: </label><br>
                        <label for="search">Buscar Usuario</label>
                        <input type="text" class="form-control" name="search" id="search">
                    </div>
                    <div class="form-group col-xl-auto">
                        <input type="submit" class="btn btn-success btn-lg btn-block" value="Buscar" name="buscar" id="buscar">
                    </div>
                </form>
                </form>
                <hr>
                <form action="index.php" method="POST">
                    <div class="form-group col-xl-auto">
                        <label class="sub">Eliminar registro: </label><br>
                        <label for="delete">Eliminar Usuario</label>
                        <input type="text" class="form-control" name="delete" id="delete">
                    </div>
                    <div class="form-group col-xl-auto">
                        <input type="submit" class="btn btn-danger btn-lg btn-block" value="Eliminar" name="eliminar" id="eliminar">
                    </div>
                </form>
            </div>
            <div>
                <h1>Resultados:</h1>
                <h2>
                    <?php
                        include("database.php");

                        if(isset($_POST["agregar"])){
                            //recibir
                            $n= $_POST["name"];
                            $m= $_POST["email"];
                            $p= $_POST["psw"];
                        
                            //conectar
                            $ops= new database();
                            $ops->conectarConBaseDatos();
                        
                            //devolver
                            $resultado= $ops->alterarBaseDatos('Insert into usuarios(usn, mail, psw) values("'.$n.'", "'.$m.'", "'.$p.'")');
                            if ($resultado){
                                echo("Se ha creado el usuario");
                            }
                            else{
                                echo"Error.";
                            }
                        }
                        elseif(isset($_POST["buscar"])){
                            //recibir
                            $n= $_POST["search"];
                        
                            //conectar
                            $ops= new database();
                            $ops->conectarConBaseDatos();
                        
                            //devolver
                            $resultado= $ops->consultarEnBaseDatos('SELECT * FROM usuarios WHERE usn="'.$n.'"');
                            echo("Nombre: $n. <br>ID: ".$resultado[0]['id']."<br>Correo: ".$resultado[0]['mail'].". <br>Su clave es de ".strlen($resultado[0]['psw'])." caracteres.");
                        }
                        elseif(isset($_POST["eliminar"])){
                            //recibir
                            $n= $_POST["delete"];
                        
                            //conectar
                            $ops= new database();
                            $ops->conectarConBaseDatos();
                            
                            //devolver
                            $resultado= $ops->alterarBaseDatos('Delete from usuarios where usn="'.$n.'"');
                            if ($resultado){
                                echo("<br>Se ha borrado el usuario.");
                            }
                            else{
                                echo("Error.");
                            }
                        }
                        else{
                            echo("Bienvenido.");
                        }

                    ?>
                </h2>                
            </div>
        </div>
        
    </main>
    <footer>
        <hr>
        <p>
            Luis Felipe Moreno Chamorro <br>
            luisfemocha@gmail.com ✉ <br>
            3044056879 ✆ <br>
        </p><div class="bandera"></div>&nbsp;Medellín <br>
        &nbsp;Colombia
        <p></p>
    </footer>
</body>
</html>