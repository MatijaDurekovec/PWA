<?php

    include 'connect.php';
    session_start ();
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
    <main id="login">
        <div id="center">
            <?php
                if (isset($_SESSION['id']))
                {
                    echo '
                        <p class="prijava_tekst">
                        Prijavljeni ste kao: <b>' .$_SESSION['username']. '</b>
                        </p>
                        <form method="POST" action="logout.php">
                            <br>
                            <input type="submit" value="Odjava" class="reset_submit">
                        </form>';
                }
                else
                {
                    if (isset($_SESSION['krivi_unos']))
                    {
                        echo '<p class="prijava_error">';
                        echo '<b>Krivi e-mail ili lozinka !';
                        echo '<br>Pokušajte ponovo</b><br><br></p>';
                        unset($_SESSION['krivi_unos']);
                    }
                    echo '
                        <form method="POST">
                            <label for="email">E-mail</label><br>
                            <input type="email" name="email" required><br><br>
                            <label for="sifra">Lozinka</label><br>
                            <input type="password" name="sifra" required><br><br>
                            <input type="submit" value="Prijava" class="reset_submit">
                            <input type="reset" value="Poništi" class="reset_submit">
                        </form>';
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

if (isset($_POST['sifra']))
{
    $e_mail = $_POST['email'];
    $sifra = $_POST['sifra'];

    // UPIT ZA BAZU //

    $query = "SELECT * FROM `korisnici`";
    $result = mysqli_query ($veza,$query);


    while ($red = mysqli_fetch_array ($result))
    {
        if ($red['email_korisnika'] == $e_mail)
        {
            $_SESSION['email_dobar'] = 1;
            if (password_verify($sifra,$red['sifra_korisnika']))
            {
                $_SESSION['id'] = $red['id'];
                $_SESSION['username'] = $red['username_korisnika']; 
                unset($_SESSION['krivi_unos']);
                header("Location:login.php");
            }
            else 
            {
                $_SESSION['krivi_unos'] = 1;
            }
        }
       
    }
    if (isset($_SESSION['email_dobar']))
    {
        unset($_SESSION['email_dobar']);
        header("Location:login.php");
    }
    else
    {
        $_SESSION['krivi_unos'] = 1;
        header("Location:login.php");
    }
   
}


    // ODSPAJANJE SA BAZOM //

    mysqli_close ($veza);

?>