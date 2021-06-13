<?php

    include 'connect.php';
    session_start();
    setlocale(LC_ALL,'croatian'); 
    $datum = ucwords (iconv('ISO-8859-2', 'UTF-8',strftime('%A, %d %B')));

if (isset($_GET['kategorija']))
{
    $kategorija = $_GET['kategorija'];
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
    <main>
        <div id="center">
            <h2 id="welcome">Dobro došli na BMK stranicu !</h2>
            <h2 id="datum">
                <?php
                    echo $datum;
                ?>
            </h2>
            <section class="section_kategorija">
                <h2>
                    <?php
                        if ($kategorija == 'GAMING') echo '<img class="blue-bar" src="img/blue-bar.png">';
                        else if ($kategorija == 'E-SPORTS') echo '<img class="green-bar" src="img/green-bar.png">';
                        else if ($kategorija == 'TEHNOLOGIJA') echo '<img class="yellow-bar" src="img/yellow-bar.png">';
                        else echo '<img class="red-bar" src="img/red-bar.png">';
                        echo $kategorija;
                    ?>
                </h2>
                    <?php

                        // UPIT ZA BAZU //

                        $query = "SELECT * FROM `vijesti` WHERE arhiva='Y' AND kategorija=? ORDER BY `vijesti`.`vrijeme` DESC";
                        $stmt = mysqli_stmt_init($veza);
                        if (mysqli_stmt_prepare($stmt,$query))
                        {
                            mysqli_stmt_bind_param($stmt,'s',$kategorija);
                            mysqli_stmt_execute($stmt);
                            mysqli_stmt_store_result($stmt);
                        }
                        mysqli_stmt_bind_result($stmt,$autor_id,$autor_username,$autor_kategorija,$autor_naslov,$autor_kratkisad,$autor_sadrzaj,$autor_slika,$autor_arhiva,$autor_vrijeme);
                        while (mysqli_stmt_fetch($stmt))
                        {
                            echo '<article>';
                            echo '<a href="clanak.php?id=' .$autor_id. '">';
                            echo '<img src="img/' .$autor_slika.   '">';
                            echo '<h3>' .$autor_naslov. '</h3></a>';
                            echo '<p>' .$autor_kratkisad. '</p>';
                            echo '</article>';
                        }
                    ?>
            </section>
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

<?php

    // ODSPAJANJE SA BAZOM //

    mysqli_close ($veza);

?>