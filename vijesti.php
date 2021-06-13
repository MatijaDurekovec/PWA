<?php

    session_start();

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
            <section id="section_vijesti">
                <article class="sredina">
                    <a href="kategorija.php?kategorija=E-SPORTS"><img src="img/e-sports.jpg" title="E-Sports">
                    <h2 class="e-sp">E-SPORTS</h2>
                    </a>
                </article>
                <article class="sredina">
                    <a href="kategorija.php?kategorija=GAMING"><img src="img/gaming.jpg" title="Gaming">
                    <h2 class="gam">GAMING</h2>
                    </a>
                </article>
                <article class="sredina">
                    <a href="kategorija.php?kategorija=TEHNOLOGIJA"><img src="img/tehnologija.png" title="Tehnologija">
                    <h2 class="tehn">TEHNOLOGIJA</h2>
                    </a>
                </article>
                <article class="sredina">
                    <a href="kategorija.php?kategorija=YOUTUBE"><img src="img/youtube.jpg" title="YouTube">
                    <h2 class="yt">YOUTUBE</h2>
                    </a>
                </article>
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