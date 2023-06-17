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
    <title>Zresetuj hasło</title>
</head>

<body>
    <div class="dimmer"></div>
    <div class="container">
        <main class="authorizationBox whiteWindow resetPassword">
            <a href="/pages/pl/authorization/signIn">
                <div class="closeButton">
                    <span></span>
                    <span></span>
                </div>
            </a>
            <form action="/src/php/account/resetPasswordValidator" method="post" class="authorizationForm">
                <h2>Zresetuj hasło</h2>
                <div class="inputBox">
                    <p class="textLabel">Email</p>
                    <input type="text" name="email" class="standardInput" maxlength="256" minlength="6" required>
                </div>
                <input type="submit" value="Kontynuuj" class="submitButton">
            </form>
        </main>
    </div>
    <script src="/src/js/style.js"></script>
    <script src="/src/js/errorCodeHandlers/messageMap.js"></script>
    <script src="/src/js/errorCodeHandlers/alertsHandler.js"></script>
</body>

</html>