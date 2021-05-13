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
            <?php
                if (isset($_SESSION['i']))
                {
                    echo '<b>Uneseni e-mail se već koristi !';
                    echo '<br><br>';
                    unset($_SESSION['i']);
                }
                if (isset($_SESSION['registracija']))
                {
                    echo "Uspješna registracija !";
                    echo "<br>Dobro došli <b>" .$_SESSION['ime']. "</b> !";
                    unset($_SESSION['registracija']);
                    unset($_SESSION['ime']);
                }
                else
                {
                    echo '
                        <form method="POST">
                            <label for="ime">Ime</label><br>
                            <input type="text" name="ime" autofocus required><br><br>
                            <label for="prezime">Prezime</label><br>
                            <input type="text" name="prezime" required><br><br>
                            <label for="username">Username</label><br>
                            <input type="text" name="username" required><br><br>
                            <label for="e-mail">E-mail</label><br>
                            <input type="email" name="e-mail" required><br><br>
                            <label for="sifra">Lozinka</label><br>
                            <input type="password" name="sifra" required><br><br>
                            <input type="submit" value="Registracija" id="reset_submit">
                            <input type="reset" value="Poništi" id="reset_submit">
                        </form>
                    ';
                }
            ?>
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

if (isset($_POST['ime']))
{
    $ime = $_POST['ime'];
    $prezime = $_POST['prezime'];
    $username = $_POST['username'];
    $e_mail = $_POST['e-mail'];
    $sifra = $_POST['sifra'];

    // PROVJERA DA LI POSTOJI ISTI E-MAIL U BAZI //

    $query = "SELECT * FROM `korisnici`";
    $result = mysqli_query ($veza,$query);
    $red = mysqli_fetch_array ($result);

    if ($red['email_korisnika'] == $e_mail)
    {
        $_SESSION['i'] = 1;
        header("Location:register.php");
    }
    else 
    {
        // UPIT ZA BAZU //

        $query = "INSERT INTO `korisnici`(`ime_korisnika`, `prezime_korisnika`, `email_korisnika`, `username_korisnika`, `sifra_korisnika`) VALUES ('$ime','$prezime','$e_mail','$username','$sifra')";
        $result = mysqli_query ($veza,$query);
        unset($_SESSION['i']);

        if ($result)
        {
            $_SESSION['registracija'] = 1;
            $_SESSION['ime'] = $ime;
            header("Location:register.php");
        }
        else 
        {
            echo "Registracija neuspješna :(";
        }
    }

    
}

    // ODSPAJANJE SA BAZOM //

    mysqli_close ($veza);

?>