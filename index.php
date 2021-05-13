<?php

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
                    <li class="lista_polozaj"><a href="vijesti.html">Vijesti</a></li>
                    <li class="lista_polozaj"><a href="unos.html">Unos vijesti</a></li>
                    <li class="lista_polozaj"><a href="administracija.php">Administracija</a></li>
                    <li class="lista_polozaj"><a href="">O nama</a></li>
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
            <section class="section_index">
                <h2>GAMING</h2>
                    <?php

                        // UPIT ZA BAZU //

                        $query = "SELECT * FROM `vijesti` WHERE arhiva='N' AND kategorija='GAMING' LIMIT 3";
                        $result = mysqli_query ($veza,$query);

                        while ($red = mysqli_fetch_array ($result))
                        {
                            echo '<article>';
                            echo '<img src="img/' .$red['slika'].   '">';
                            echo '<a href="clanak.php?id=' .$red['id']. '">';
                            echo '<h3>' .$red['naslov']. '</h3></a>';
                            echo '<p>' .$red['kratki_sadrzaj']. '</p>';
                            echo '</article>';
                        }
                    ?>
            </section>
            <section class="section_index">
                <h2>E-SPORTS</h2>
                    <?php

                        // UPIT ZA BAZU //

                        $query = "SELECT * FROM `vijesti` WHERE arhiva='N' AND kategorija='E-SPORTS' LIMIT 3";
                        $result = mysqli_query ($veza,$query);

                        while ($red = mysqli_fetch_array ($result))
                        {
                            echo '<article>';
                            echo '<img src="img/' .$red['slika'].   '">';
                            echo '<a href="clanak.php?id=' .$red['id']. '">';
                            echo '<h3>' .$red['naslov']. '</h3></a>';
                            echo '<p>' .$red['kratki_sadrzaj']. '</p>';
                            echo '</article>';
                        }
                    ?>
            </section>
            <section class="section_index">
                <h2>TEHNOLOGIJA</h2>
                    <?php

                        // UPIT ZA BAZU //

                        $query = "SELECT * FROM `vijesti` WHERE arhiva='N' AND kategorija='TEHNOLOGIJA' LIMIT 3";
                        $result = mysqli_query ($veza,$query);

                        while ($red = mysqli_fetch_array ($result))
                        {
                            echo '<article>';
                            echo '<img src="img/' .$red['slika'].   '">';
                            echo '<a href="clanak.php?id=' .$red['id']. '">';
                            echo '<h3>' .$red['naslov']. '</h3></a>';
                            echo '<p>' .$red['kratki_sadrzaj']. '</p>';
                            echo '</article>';
                        }
                    ?>
            </section>
            <section class="section_index">
                <h2>YOUTUBE</h2>
                    <?php

                        // UPIT ZA BAZU //

                        $query = "SELECT * FROM `vijesti` WHERE arhiva='N' AND kategorija='YOUTUBE' LIMIT 3";
                        $result = mysqli_query ($veza,$query);

                        while ($red = mysqli_fetch_array ($result))
                        {
                            echo '<article>';
                            echo '<img src="img/' .$red['slika'].   '">';
                            echo '<a href="clanak.php?id=' .$red['id']. '">';
                            echo '<h3>' .$red['naslov']. '</h3></a>';
                            echo '<p>' .$red['kratki_sadrzaj']. '</p>';
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