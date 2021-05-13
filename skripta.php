<?php

    session_start();
if(isset($_POST['naslov_vijesti']))
{
    $kategorija = $_POST ['kategorija'];
    $naslov_vijesti = $_POST['naslov_vijesti'];
    $slika = $_FILES['slika']['name'];
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
                    <li><a href="index.php"><img src="img/bmk-logo.png"></a></li>
                    <li class="lista_polozaj"><a href="index.php">Početna</a></li>
                    <li class="lista_polozaj"><a href="vijesti.php">Vijesti</a></li>
                    <li class="lista_polozaj"><a href="unos.php">Unos vijesti</a></li>
                    <li class="lista_polozaj"><a href="administracija.php">Administracija</a></li>
                    <li class="lista_polozaj"><a href="">O nama</a></li>
                </ul>
                <ul id="prijava_registracija">
                    <?php
                        if (isset($_SESSION['username']))
                        {
                            echo '
                                <li><a href="">' .$_SESSION['username']. '</a></li>
                                <li><a href="logout.php">Odjava</a></li>
                            ';
                        }
                        else
                        {
                            echo '
                                <li><a href="login.php">Prijava</a></li>
                                <li><a href="register.php">Registracija</a></li>
                            ';
                        }
                    ?>
                </ul>
            </nav>
        </div>
    </header>
    <main id="skripta">
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
            <p>OBJAVLJENO:
                <?php
                    echo date('d-m-Y H:i:s');
                ?>
            </p>
            <?php
                echo '<img src="img/' .$slika. '">';
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

include 'connect.php';

if(isset($_POST['naslov_vijesti']))
{
    if (isset($_POST['arhiva']))
    {
        $arhiva = 'Y';
    }
    else {
        $arhiva = 'N';
    }

    $target = 'img/' .$slika;

    // UBACIVANJE U BAZU //

    $query = "INSERT INTO `vijesti`(`kategorija`, `naslov`, `kratki_sadrzaj`, `sadrzaj`, `slika`, `arhiva`) VALUES ('$kategorija','$naslov_vijesti','$kratki_sadrzaj','$sadrzaj','$slika','$arhiva')";
    $result = mysqli_query ($veza,$query);

    move_uploaded_file($_FILES['slika']['tmp_name'],'$target');

    // ODSPAJANJE SA BAZOM //

    mysqli_close ($veza);
}


?>