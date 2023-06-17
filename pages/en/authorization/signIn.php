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
    <title>Sign in</title>
</head>

<body>
    <div class="dimmer"></div>
    <div class="container">
        <div class="alert">

        </div>
        <main class="authorizationBox whiteWindow">
            <form action="/src/php/authorization/signInValidator" method="post" class="authorizationForm">
                <h2>Sign in</h2>
                <input type="hidden" name="language" value="<?= substr($_SERVER['PHP_SELF'], 7, 2); ?>">
                <div class="inputBox">
                    <p class="textLabel">Username or email</p>
                    <input type="text" name="usernameOrEmail" class="standardInput" autocomplete="username" maxlength="32" minlength="4" required>
                </div>
                <div class="inputBox">
                    <p class="textLabel">Password <a tabindex="-1" href="/pages/en/other/resetPassword"><span>Reset password</span></a></p>
                    <input type="password" name="password" class="standardInput" autocomplete="current-password" maxlength="64" minlength="8" required>
                </div>
                <div class="errorMessage"></div>
                <div class="codeMessage"></div>
                <input type="submit" value="Continue" class="submitButton">
            </form>
            <p class="textLabel authorizationFooter">No account? &nbsp;<a href="signUp">Sign Up</a></p>
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
    <script src="/src/js/errorCodeHandlers/signInErrors.js"></script>
</body>

</html>