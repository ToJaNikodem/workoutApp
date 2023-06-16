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
    <link rel="stylesheet" href="/src/css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <title>Change Password</title>
</head>

<body>
    <div class="dimmer"></div>
    <div class="container">
        <main class="authorizationBox whiteWindow changePassword">
            <form action="/src/php/authorization/changePasswordValidator" method="post" class="authorizationForm">
                <h2>Set password</h2>
                <div class="inputBox">
                    <input type="hidden" name="token" value="<?= $_GET['token']; ?>">
                    <p class="textLabel">New password
                        <span class="informationBox password">
                            <img src="/src/img/information.svg" alt="information icon" class="informationIcon">
                        </span>
                    </p>
                    <input type="password" name="password" class="standardInput" maxlength="64" minlength="8" required>
                </div>
                <div class="errorMessage"></div>
                <div class="codeMessage"></div>
                <input type="submit" value="Continue" class="submitButton">
            </form>
        </main>
    </div>
    <script src="/src/js/style.js"></script>
    <script src="/src/js/errorAndCodeHandler.js"></script>
</body>

</html>