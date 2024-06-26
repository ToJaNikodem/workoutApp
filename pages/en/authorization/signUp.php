<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . '/src/php/session/sessionFunciotns.php';

session_start();
signedIn();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/src/css/desktop/main.css">
    <link rel="stylesheet" href="/src/css/desktop/authorizationPages.css">
    <title>Sign Un</title>
</head>

<body>
    <div class="dimmer"></div>
    <div class="container">
        <main class="authorizationBox whiteWindow">
            <form action="/src/php/authorization/signUpValidator" method="post" class="authorizationForm">
                <h2>Sign Up</h2>
                <div class="inputBox">
                    <p class="textLabel">Username
                        <span class="informationBox username">
                            <img src="/src/img/information.svg" alt="information icon" class="informationIcon">
                        </span>
                    </p>
                    <input type="text" name="username" class="standardInput" maxlength="32" minlength="4" required>
                </div>
                <div class="inputBox">
                    <p class="textLabel">Email</p>
                    <input type="email" name="email" class="standardInput" maxlength="256" minlength="6" required>
                </div>
                <div class="inputBox">
                    <p class="textLabel">Password
                        <span class="informationBox password">
                            <img src="/src/img/information.svg" alt="information icon" class="informationIcon">
                        </span>
                    </p>
                    <input type="password" name="password" class="standardInput" autocomplete="new-password" maxlength="64" minlength="8" required>
                </div>
                <input type="submit" value="Continue" class="submitButton">
            </form>
            <p class="textLabel authorizationFooter">Have an account? &nbsp;<a href="signIn">Sign in</a></p>
        </main>
    </div>
    <aside class="menu">
        <div class="menuInside">
            <h3>Menu</h3>
            <hr>
            <div class="languageButtons">
                <a href="/src/php/session/changeLanguage">
                    <div id="pol" class="insideMenuButton language">
                        <img src="/src/img/poland.png" alt="Poland flag" class="flagIcon">
                        <p>
                            PL
                        </p>
                    </div>
                </a>
                <div id="eng" class="insideMenuButton language selectedLanguage">
                    <img src="/src/img/united-kingdom.png" alt="United Kingdom flag" class="flagIcon">
                    <p>
                        ENG
                    </p>
                </div>
            </div>
        </div>
    </aside>
    <div class="menuButton">
        <span></span>
        <span></span>
        <span></span>
    </div>
    <script src="/src/js/style.js"></script>
    <script src="/src/js/errorCodeHandlers/messageMap.js"></script>
    <script src="/src/js/errorCodeHandlers/alertsHandler.js"></script>
</body>

</html>