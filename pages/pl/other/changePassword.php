<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . '/src/php/session/sessionFunciotns.php';

session_start();
signedIn();
?>

<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/src/css/desktop/main.css">
    <link rel="stylesheet" href="/src/css/desktop/authorizationPages.css">
    <title>Zmień hasło</title>
</head>

<body>
    <div class="dimmer"></div>
    <div class="container">
        <main class="authorizationBox whiteWindow changePassword">
            <a href="/pages/pl/authorization/signIn">
                <div class="closeButton">
                    <span></span>
                    <span></span>
                </div>
            </a>
            <form action="/src/php/account/changePasswordValidator" method="post" class="authorizationForm">
                <h2>Ustaw nowe hasło</h2>
                <div class="inputBox">
                    <input type="hidden" name="token" value="<?= $_GET['token']; ?>">
                    <p class="textLabel">Nowe hasło
                        <span class="informationBox password">
                            <img src="/src/img/information.svg" alt="information icon" class="informationIcon">
                        </span>
                    </p>
                    <input type="password" name="password" class="standardInput" autocomplete="new-password" maxlength="64" minlength="6" required>
                </div>
                <input type="submit" value="Continue" class="submitButton">
            </form>
        </main>
    </div>
    <script src="/src/js/style.js"></script>
    <script src="/src/js/errorCodeHandlers/messageMap.js"></script>
    <script src="/src/js/errorCodeHandlers/alertsHandler.js"></script>
</body>

</html>