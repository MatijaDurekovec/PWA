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
            <?php
                if (isset($_SESSION['username']))
                {
                    echo '
                        <form enctype="multipart/form-data" method="POST" action="skripta.php">
                            <label for="naslov">Naslov vijesti</label><br>
                            <input type="text" name="naslov_vijesti" id="naslov_vijesti" autofocus>
                            <span id="porukaNaslov" class="error"></span><br><br>
                            <label for="kratki_sadrzaj">Kratki sadržaj vijesti</label><br>
                            <textarea cols="50" rows="12" id="kratki_sadrzaj" name="kratki_sadrzaj" maxlength="400"></textarea>
                            <span id="porukaKratki" class="error"></span><br><br>
                            <label for="sadrzaj_vijesti">Sadržaj vijesti</label><br>
                            <textarea cols="50" rows="12" id="sadrzaj_vijesti" name="sadrzaj_vijesti"></textarea>
                            <span id="porukaSadrzaj" class="error"></span><br><br>
                            <label for="slika" class="slika">Slika:</label><br>
                            <input type="file" accept="image/*" name="slika" id="slika">
                            <span id="porukaSlika" class="error"></span><br><br>
                            <label for="kategorija">Kategorija vijesti:</label><br>
                            <select name="kategorija" class="kategorija">
                                <option value="E-SPORTS">E-sports</option>
                                <option value="GAMING">Gaming</option>
                                <option value="TEHNOLOGIJA">Tehnologija</option>
                                <option value="YOUTUBE">YouTube</option>
                            </select><br><br>
                            <label for="spremiti">Spremiti u arhivu:</label><br>
                            <input type="checkbox" name="arhiva" id="arhiva"><br><br>
                            <input type="submit" value="Pošalji" id="unos" name="submit" class="reset_submit">
                            <input type="reset" value="Poništi" name="reset" class="reset_submit">
                        </form>
                    ';
                }
                else
                {
                    echo '<p class="obavijest">
                    Morate biti prijavljeni da bi mogli unijeti neku vijest !</p>';
                }
            ?>
            <script type="text/javascript">
                document.getElementById("unos").onclick = function (event)
                {
                    var forma = true

                    // NASLOV //

                    var poljeNaslov = document.getElementById("naslov_vijesti")
                    var naslov = document.getElementById("naslov_vijesti").value

                    if (naslov.length < 1)
                    {
                        var forma = false
                        poljeNaslov.style.border = "1px dashed red"
                        document.getElementById("porukaNaslov").innerHTML = "<br>Polje Naslov vijesti je obavezno !"
                    }
                    else if (naslov.length > 100)
                    {
                        var forma = false
                        poljeNaslov.style.border = "1px dashed red"
                        document.getElementById("porukaNaslov").innerHTML = "<br>Naslov vijesti mora biti do 100 znakova !"
                    }

                    // KRATKI SADRŽAJ //
                    
                    var poljeKratki = document.getElementById("kratki_sadrzaj")
                    var kratki = document.getElementById("kratki_sadrzaj").value

                    if (kratki.length < 1)
                    {
                        var forma = false
                        poljeKratki.style.border = "1px dashed red"
                        document.getElementById("porukaKratki").innerHTML = "<br>Polje Kratki sadržaj je obavezno !"
                    }
                    else if (kratki.length > 190)
                    {
                        var forma = false
                        poljeKratki.style.border = "1px dashed red"
                        document.getElementById("porukaKratki").innerHTML = "<br>Kratki sadržaj mora biti do 190 znakova !"
                    }

                    // SADRŽAJ VIJESTI //

                    var poljeSadrzaj = document.getElementById("sadrzaj_vijesti")
                    var sadrzaj = document.getElementById("sadrzaj_vijesti").value

                    if (sadrzaj.length < 1)
                    {
                        var forma = false
                        poljeSadrzaj.style.border = "1px dashed red"
                        document.getElementById("porukaSadrzaj").innerHTML = "<br>Polje Sadržaj vijesti je obavezno !"
                    }
                    if (forma != true)
                    {
                        event.preventDefault()
                    }

                    // SLIKA //

                    var poljeSlika = document.getElementById("slika")
                    var slika = document.getElementById("slika").value

                    if (slika.length < 1)
                    {
                        var forma = false
                        poljeSlika.style.border = "1px dashed red"
                        document.getElementById("porukaSlika").innerHTML = "<br>Polje Slika je obavezno !"
                    }
                    if (forma != true)
                    {
                        event.preventDefault()
                    }
                }
            </script>
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