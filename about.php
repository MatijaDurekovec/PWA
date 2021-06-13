<?php

    session_start();
    include 'connect.php';
    setlocale(LC_ALL,'croatian'); 
    $datum = ucwords (iconv('ISO-8859-2', 'UTF-8',strftime('%A, %d %B')));
    
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
            <section>
                <p>
                    <b>BMK</b> stranica je napravljena sa ciljem kako bi se objavljivao najnoviji te najzanimljiviji sadržaj iz područja Gaming-a,E-Sports-a,Tehnologije te YouTube-a.
                    Na <b>BMK</b> stranici bilo tko može objavljivati novi sadržaj iz ovih 4 kategorija te na taj način omogućiti da stranica bude 24/7 ažurirana novim vijestima iz svijeta.
                    <br><br>
                    <b>BMK</b> originalni logo se sastoji od 3 vuka koji predstavljaju upravo ta 3 kreatora <b>BMK-a</b>.
                    <br>
                    <img src="img/bmk-logo2.png">
                    <br><br>

                    <b>BMK</b> je naziv za tim koji se sastoji od 3 člana te svaki član čini jedno slovo imena <b>BMK</b>.
                    U budućnosti nisu isključena daljna proširenja članova tima <b>BMK</b>.
                </p>
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
