<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Práctica 7</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        .casilla {
            height: 60px;
            font-weight: bold;
        }
        .escalera{
            background-image: url('escalera.jpeg');
            background-size: cover;
        }
        .serpiente{
            background-image: url('serpiente.png');
            background-size: contain;
            background-repeat: no-repeat;
            background-position: center;
        }
        .ficha{
            background-image: url('ficha.png');
            background-size: contain;
            background-repeat: no-repeat;
            background-position: center;
        }
    </style>
</head>
<body>
    
    <div class="container">
        <h1>Serpientes y escaleras</h1><hr>
        
   
        <form action="practica7.php" method="POST">
        <center><input type="submit" value="Jugar" class="btn btn-primary"></center>
            <div class="row">
                    <?php
                    $colores = ["#FFDCB2", "#B3DD8F", "#9AE5D4", "#FF9E29", "#FFC1F5", "#35A020", "#FF3838"];
                    if(isset($_POST["casilla"])){
                        $dado = rand(1, 12);
                        echo "<h2>Resultado del dado: ".$dado."</h2>";
                        $casilla = $dado + intval($_POST["casilla"]);
                        echo "<h3> El jugador estaba en la casilla ".intval($_POST["casilla"])." y pasó por la casilla ".$casilla."</h3>";

                        /*Valiadr que ganó elñ jugador */
                        if($casilla >= 100){
                            echo "<h1> El jugador ganó </h1>";
                            $casilla = 100;
                        }

                        /*Validar escaleras */
                        if($casilla == 4 ){
                            $casilla = 12;
                            echo "<h3> El jugador cayó en una <img src = 'escalera.jpeg' width='50px'> y subió a la casilla 12 </h3>";
                        }
                        if($casilla == 9 ){
                            $casilla = 21;
                            echo "<h3> El jugador cayó en una <img src = 'escalera.jpeg' width='50px'> y subió a la casilla 21 </h3>";
                        }
                        if($casilla == 28 ){
                            $casilla = 37;
                            echo "<h3> El jugador cayó en una <img src = 'escalera.jpeg' width='50px'> y subió a la casilla 37 </h3>";
                        }
                        if($casilla == 33 ){
                            $casilla = 42;
                            echo "<h3> El jugador cayó en una <img src = 'escalera.jpeg' width='50px'> y subió a la casilla 42 </h3>";
                        }
                        if($casilla == 40 ){
                            $casilla = 53;
                            echo "<h3> El jugador cayó en una <img src = 'escalera.jpeg' width='50px'> y subió a la casilla 53 </h3>";
                        }
                        if($casilla == 71 ){
                            $casilla = 81;
                            echo "<h3> El jugador cayó en una <img src = 'escalera.jpeg' width='50px'> y subió a la casilla 81 </h3>";
                        }
                        if($casilla == 77 ){
                            $casilla = 83;
                            echo "<h3> El jugador cayó en una <img src = 'escalera.jpeg' width='50px'> y subió a la casilla 83 </h3>";
                        }
                        if($casilla == 80 ){
                            $casilla = 92;
                            echo "<h3> El jugador cayó en una <img src = 'escalera.jpeg' width='50px'> y subió a la casilla 92 </h3>";
                        }

                        /*Validar serpientes */

                        if($casilla == 17 ){
                            $casilla = 6;
                            echo "<h3> El jugador cayó en una <img src = 'serpiente.png' width='50px'> y bajó a la casilla 6 </h3>";
                        }
                        if($casilla == 36 ){
                            $casilla = 21;
                            echo "<h3> El jugador cayó en una <img src = 'serpiente.png' width='50px'> y bajó a la casilla 21 </h3>";
                        }
                        if($casilla == 54 ){
                            $casilla = 34;
                            echo "<h3> El jugador cayó en una <img src = 'serpiente.png' width='50px'> y bajó a la casilla 34 </h3>";
                        }
                        if($casilla == 58 ){
                            $casilla = 49;
                            echo "<h3> El jugador cayó en una <img src = 'serpiente.png' width='50px'> y bajó a la casilla 49 </h3>";
                        }
                        if($casilla == 64 ){
                            $casilla = 56;
                            echo "<h3> El jugador cayó en una <img src = 'serpiente.png' width='50px'> y bajó a la casilla 56 </h3>";
                        }
                        if($casilla == 87 ){
                            $casilla = 81;
                            echo "<h3> El jugador cayó en una <img src = 'serpiente.png' width='50px'> y bajó a la casilla 81 </h3>";
                        }
                        if($casilla == 93 ){
                            $casilla = 83;
                            echo "<h3> El jugador cayó en una <img src = 'serpiente.png' width='50px'> y bajó a la casilla 83 </h3>";
                        }
                        if($casilla == 95 ){
                            $casilla = 86;
                            echo "<h3> El jugador cayó en una <img src = 'serpiente.png' width='50px'> y bajó a la casilla 86 </h3>";
                        }
                        
                        if($casilla == 99 ){
                            $casilla = 1;
                            echo "<h3> El jugador cayó en una <img src = 'serpiente.png' width='50px'> y bajó a la casilla 1 </h3>";
                        }

                    } else{
                        $casilla = 0;
                    }
                        for($i=100; $i>0; $i--){
                            if($casilla==$i){
                                echo "<div class='col-1 card m-1 casilla ficha' style='background-color:".$colores[rand(0,6)].";'>".$i."</div>";
                            }else if($i == 4 || $i == 9 || $i == 33 || $i == 28 || $i == 40 || $i == 80 ||$i == 71 ||$i == 77){
                                echo "<div class='col-1 card m-1 casilla escalera' style='background-color:".$colores[rand(0,6)].";'>".$i."</div>";
                            } else if($i == 17 || $i == 54 || $i == 58 || $i == 64 || $i == 87 || $i == 93 ||$i == 95 ||$i == 99 ||$i == 36){
                                echo "<div class='col-1 card m-1 casilla serpiente' style='background-color:".$colores[rand(0,6)].";'>".$i."</div>";
                            } else {
                                echo "<div class='col-1 card m-1 casilla' style='background-color:".$colores[rand(0,6)].";'>".$i."</div>";
                            }
                        }
                    ?>
            </div>
            <input type="hidden" name="casilla" value="<?php echo $casilla; ?>">
        </form>
    </div>

</body>
</html>