<?php

    include 'connect.php';

if (isset($_GET['id']))
{
    $id = $_GET['id'];
}

    // UPIT NA BAZU //

    $query = "SELECT * FROM `vijesti` WHERE id=$id";
    $result = mysqli_query ($veza,$query);

    $red = mysqli_fetch_array($result);

?>

<!DOCTYPE html>
<html>
<head>
    <title>BMK</title>
    <meta charset="UTF-8"/>
    <meta name="author" content="Matija Đurekovec"/>
    <meta http-equiv="content-language" content="hr"/>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <link rel="icon" href="img/bmk-logo-fav.png" type="image/x-icon">
</head>
<body>
<header>
        <div id="center">
            <nav>
                <ul>
                    <li><a href="index.php"><img src="img/bmk-logo.png"></a></li>
                    <li class="lista_polozaj"><a href="index.php">Početna</a></li>
                    <li class="lista_polozaj"><a href="vijesti.html">Vijesti</a></li>
                    <li class="lista_polozaj"><a href="unos.html">Unos vijesti</a></li>
                    <li class="lista_polozaj"><a href="administracija.php">Administracija</a></li>
                    <li class="lista_polozaj"><a href="">O nama</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <main id="skripta">
            <h2>
                <?php
                    echo $red['kategorija'];
                ?>
            </h2>
            <h3>
                <?php
                    echo $red['naslov'];
                ?>
            </h3>
            <p>AUTOR:</p>
            <p>OBJAVLJENO:
                <?php
                    echo date('d-m-Y H:i:s',strtotime($red['vrijeme']));
                ?>
            </p>
            <?php
                echo '<img src="img/' .$red['slika']. '">';
            ?>
            <p>
                <?php
                    echo $red['kratki_sadrzaj'];
                ?>
            </p>
            <p>
                <?php
                    echo $red['sadrzaj'];
                ?>
            </p>
    </main>
    <footer>
        <div id="center">
            <p>Stranicu napravio: Matija Đurekovec</p>
            <p>E-mail: mdurekove@tvz.hr</p>
            <b><p>Copyright © 2021 BMK.</p></b>
        </div>
    </footer>
</body>
</html>

<?php

    // ODSPAJANJE SA BAZE //

    mysqli_close ($veza);

?>