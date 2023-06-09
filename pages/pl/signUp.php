<?php
session_start();
if (isset($_SESSION['signedIn'])) {
	header('Location: /pages/'. $_SESSION['lang'] . '/mainPage.php');
	exit;
}
?>
<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/src/css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <title>Zajerestruj się</title>
</head>

<body>
    <div class="dimmer"></div>
    <div class="container">
        <main class="authorizationBox whiteWindow">
            <form action="/src/php/signUpValidator.php" method="post" class="authorizationForm">
                <h2>Zajerestruj się</h2>
                <div class="inputBox">
                    <p class="textLabel">Nazwa użytkownika
                        <span class="informationBox username">
                            <img src="/src/img/information.svg" alt="information icon" class="informationIcon">
                        </span>
                    </p>
                    <input type="text" name="username" class="standardInput" maxlength="32" minlength="4">
                </div>
                <div class="inputBox">
                    <p class="textLabel">Email</p>
                    <input type="email" name="email" class="standardInput">
                </div>
                <div class="inputBox">
                    <p class="textLabel">Hasło
                        <span class="informationBox password">
                            <img src="/src/img/information.svg" alt="information icon" class="informationIcon">
                        </span> 
                    </p>
                    <input type="password" name="password" class="standardInput" maxlength="64" minlength="8">
                </div>

                <input type="submit" value="Kontynuuj" class="submitButton">
            </form>
            <p class="textLabel authorizationFooter">Posiadasz już konto? &nbsp;<a href="signIn.php">Zaloguj się</a></p>
        </main>
    </div>
    <aside class="menu">
        <div class="menuInside">
            <h3>Menu</h3>
            <hr>
            <div class="signState">
                <p>Zalogowany jako</p>
                <p class="username"><?php ?>Nikodem Buczkowski
                    <img src="/src/img/edit.svg" alt="edit icon" class="editNameIcon">
                </p>
            </div>
            <div class="languageButtons">
                <div id="pol" class="insideMenuButton language selectedLanguage">
                    <img src="/src/img/poland.png" alt="Poland flag" class="flagIcon">
                    <p>
                        PL
                    </p>
                </div>
                <a href="/pages/en/signUp.php">
                    <div id="eng" class="insideMenuButton language">
                        <img src="/src/img/united-kingdom.png" alt="United Kingdom flag" class="flagIcon">
                        <p>
                            ENG
                        </p>
                    </div>
                </a>
            </div>
            <div class="insideMenuButton exportButton">
                <p>Eksportuj treningi
                    <img src="/src/img/file.svg" alt="file icon" class="exportIcon">
                </p>
            </div>
            <div class="insideMenuButton deleteAccountButton">
                <p>Usuń konto
                    <img src="/src/img/bin.svg" alt="bin icon" class="binIcon">
                </p>
            </div>
            <p class="sendFeedback">Wyślij opinie</p>
            <p class="signOut">Zaloguj się
                <img src="/src/img/exit.svg" alt="exit icon" class="signOutIcon">
            </p>
        </div>
    </aside>
    <div class="menuButton">
        <span></span>
        <span></span>
        <span></span>
    </div>
    <script src="/src/js/style.js"></script>
</body>

</html>