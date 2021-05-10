<?php

if(isset($_POST['kategorija']))
{
    $kategorija = $_POST ['kategorija'];
    $naslov_vijesti = $_POST['naslov_vijesti'];
    $slika = $_POST ['slika_input'];
    $kratki_sadrzaj = $_POST['kratki_sadrzaj'];
    $sadrzaj = $_POST['sadrzaj_vijesti'];
}

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
                    <li><a href="index.html"><img src="img/bmk-logo.png"></a></li>
                    <li id="lista_polozaj"><a href="index.html">Početna</a></li>
                    <li id="lista_polozaj"><a href="">Vijesti</a></li>
                    <li id="lista_polozaj"><a href="unos.html">Unos vijesti</a></li>
                    <li id="lista_polozaj"><a href="">Administracija</a></li>
                    <li id="lista_polozaj"><a href="">O nama</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <main id="skripta">
        <div id="center">
            <h2>
                <?php
                    echo $kategorija;
                ?>
            </h2>
            <h3>
                <?php
                    echo $naslov_vijesti;
                ?>
            </h3>
            <p>AUTOR:</p>
            <p>OBJAVLJENO:</p>
            <?php
                echo "<img src=\"img/$slika\">";
            ?>
            <p>
                <?php
                    echo $kratki_sadrzaj;
                ?>
            </p>
            <p>
                <?php
                    echo $sadrzaj;
                ?>
            </p>
        </div>
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