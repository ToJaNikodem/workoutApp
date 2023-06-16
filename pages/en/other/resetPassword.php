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
    <title>Reset Password</title>
</head>

<body>
    <div class="dimmer"></div>
    <div class="container">
        <main class="authorizationBox whiteWindow resetPassword">
            <a href="/pages/en/authorization/signIn">
                <div class="closeButton">
                    <span></span>
                    <span></span>
                </div>
            </a>
            <form action="/src/php/authorization/resetPasswordValidator" method="post" class="authorizationForm">
                <h2>Reset password</h2>
                <div class="inputBox">
                    <p class="textLabel">Email</p>
                    <input type="email" name="email" class="standardInput" maxlength="256" minlength="6" required>
                </div>
                <div class="errorMessage"></div>
                <div class="codeMessage"></div>
                <input type="submit" value="Continue" class="submitButton">
            </form>
        </main>
    </div>
    <script src="/src/js/style.js"></script>
    <script src="/src/js/errorCodeHandlers/resetPasswordErrors.js"></script>
</body>

</html>