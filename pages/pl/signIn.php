<?php
$language = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);

session_start();

if (isset($_SESSION['signedIn'])) {
    if ($language == 'pl') {
		header('Location: /pages/pl/mainPage.php');
		exit();
	} else {
		header('Location: /pages/en/mainPage.php');
		exit();
	}
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
                <div class="errorMessage"></div>
                <div class="codeMessage"></div>
                <input type="submit" value="Kontynuuj" class="submitButton">
            </form>
            <p class="textLabel authorizationFooter">Nie masz konta? &nbsp;<a href="signUp.php">Zarejestruj się</a></p>
        </main>
    </div>
    <aside class="menu">
        <div class="menuInside">
            <h3>Menu</h3>
            <hr>
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
        </div>
    </aside>
    <div class="menuButton">
        <span></span>
        <span></span>
        <span></span>
    </div>
    <script src="/src/js/style.js"></script>
    <script src="/src/js/errorAndCodeHandler.js"></script>
</body>

</html>