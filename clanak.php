<?php

    include 'connect.php';
    session_start();

if (isset($_GET['id']))
{
    $id = $_GET['id'];
}

    // UPIT NA BAZU //

    $query = "SELECT * FROM `vijesti` WHERE id=?";
    $stmt = mysqli_stmt_init($veza);
    if (mysqli_stmt_prepare($stmt,$query))
    {
        mysqli_stmt_bind_param($stmt,'s',$id);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_store_result($stmt);
    }
    mysqli_stmt_bind_result($stmt,$autor_id,$autor_username,$autor_kategorija,$autor_naslov,$autor_kratkisad,$autor_sadrzaj,$autor_slika,$autor_arhiva,$autor_vrijeme);
    mysqli_stmt_fetch($stmt);

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
                    <li class="lista_polozaj"><a href="about.php">O nama</a></li>
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
                    if ($autor_kategorija == 'GAMING')
                    {
                        echo '
                        <h2><img class="blue-bar" src="img/blue-bar.png">GAMING</h2>
                        ';
                    }
                    else if ($autor_kategorija == 'E-SPORTS')
                    {
                        echo '
                        <h2><img class="green-bar" src="img/green-bar.png">E-SPORTS</h2>
                        ';
                    }
                    else if ($autor_kategorija == 'TEHNOLOGIJA')
                    {
                        echo '
                        <h2><img class="yellow-bar" src="img/yellow-bar.png">TEHNOLOGIJA</h2>
                        ';
                    }
                    else
                    {
                        echo '
                        <h2><img class="red-bar" src="img/red-bar.png">YOUTUBE</h2>
                        ';
                    }
                ?>
            </h2>
            <h3>
                <?php
                    echo $autor_naslov;
                ?>
            </h3>
            <p><b>AUTOR:</b>
                <?php
                    echo $autor_username;
                ?>
            </p>
            <p><b>OBJAVLJENO:</b>
                <?php
                    echo date('d-m-Y H:i:s',strtotime($autor_vrijeme));
                ?>
            </p>
            <?php
                echo '<img class="skripta-img" src="img/' .$autor_slika. '">';
            ?>
            <p><b>
                <?php
                    echo $autor_kratkisad;
                ?>
            </p></b>
            <p>
                <?php
                    echo $autor_sadrzaj;
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