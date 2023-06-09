<?php
session_start();
if (isset($_SESSION['signedIn'])) {
    header('Location: /pages/' . $_SESSION['lang'] . '/mainPage.php');
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
    <title>Zaloguj się</title>
</head>

<body>
    <div class="dimmer"></div>
    <div class="container">
        <main class="authorizationBox whiteWindow">
            <form action="/src/php/signInValidator.php" method="post" class="authorizationForm">
                <h2>Zaloguj się</h2>
                <div class="inputBox">
                    <p class="textLabel">Nazwa użytkownika lub email</p>
                    <input type="text" name="usernameOrEmail" class="standardInput" maxlength="32" minlength="4">
                </div>
                <div class="inputBox">
                    <p class="textLabel">Hasło</p>
                    <input type="password" name="password" class="standardInput" maxlength="64" minlength="8">
                </div>

                <input type="submit" value="Kontynuuj" class="submitButton">
            </form>
            <p class="textLabel authorizationFooter">Nie masz konta? &nbsp;<a href="signUp.php">Zajerestruj się</a></p>
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
                <a href="/pages/en/signIn.php">
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
            <p class="sendFeedback">Wyślij opinię</p>
            <a href="/src/php/signOut.php">
                <p class="signOut">Wyloguj się
                    <img src="/src/img/exit.svg" alt="exit icon" class="signOutIcon">
                </p>
            </a>
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