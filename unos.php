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
    <main>
        <div id="center">
            <form enctype="multipart/form-data" method="POST" action="skripta.php">
                <label for="naslov">Naslov vijesti</label><br>
                <input type="text" name="naslov_vijesti" autofocus required><br><br>
                <label for="kratki_sadrzaj">Kratki sadržaj vijesti (do 190 znakova)</label><br>
                <textarea cols="50" rows="12" name="kratki_sadrzaj" maxlength="190" required></textarea><br><br>
                <label for="sadrzaj_vijesti">Sadržaj vijesti</label><br>
                <textarea cols="50" rows="12" name="sadrzaj_vijesti" required></textarea><br><br>
                <label for="slika" class="slika">Slika:</label><br>
                <input type="file" accept="image/*" name="slika" required><br><br>
                <label for="kategorija">Kategorija vijesti:</label><br>
                <select name="kategorija" class="kategorija">
                    <option value="E-SPORTS">E-sports</option>
                    <option value="GAMING">Gaming</option>
                    <option value="TEHNOLOGIJA">Tehnologija</option>
                    <option value="YOUTUBE">YouTube</option>
                </select><br><br>
                <label for="spremiti">Spremiti u arhivu:</label><br>
                <input type="checkbox" name="arhiva" id="arhiva"><br><br>
                <input type="submit" value="Pošalji" name="reset" id="reset_submit">
                <input type="reset" value="Poništi" name="submit" id="reset_submit">
            </form>
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