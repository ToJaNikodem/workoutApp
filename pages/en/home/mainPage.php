<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . '/src/php/session/sessionFunciotns.php';

session_start();
notSignedIn();
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
    <title>Simple Workout</title>
</head>

<body>
    <div class="dimmer"></div>
    <div class="container">

    </div>
    <aside class="menu">
        <div class="menuInside">
            <h3>Menu</h3>
            <hr>
            <div class="signState">
                <p>Logged in as</p>
                <p class="username"><?= $_SESSION['username'] ?>
                    <img src="/src/img/edit.svg" alt="edit icon" class="editNameIcon">
                </p>
            </div>
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
            <a href="/src/php/account/export">
                <div class="insideMenuButton exportButton">
                    <p>Export workouts
                        <img src="/src/img/file.svg" alt="file icon" class="exportIcon">
                    </p>
                </div>
            </a>
            <div class="insideMenuButton deleteAccountButton">
                <p>Delete account
                    <img src="/src/img/bin.svg" alt="bin icon" class="binIcon">
                </p>
            </div>
            <p class="sendFeedback">
                Send feedback
            </p>
            <a href="/src/php/account/signOut">
                <p class="signOut">Sign out
                    <img src="/src/img/exit.svg" alt="exit icon" class="signOutIcon">
                </p>
            </a>
        </div>
    </aside>
    <div class="warningMessage whiteWindow">
        <div class="closeButton">
            <span></span>
            <span></span>
        </div>
        <p class="mainText">Are you sure?</p>
        <p>You can't reverse that</p>
        <p class="information">Delete your account</p>
        <a href="/src/php/account/deleteAccount">
            <div class="submitButton deleteAccountSubmitButton">
                Confirm
            </div>
        </a>
    </div>
    <div class="changeNameBox whiteWindow">
        <div class="closeButton">
            <span></span>
            <span></span>
        </div>
        <form action="/src/php/account/changeUsername" method="post">
            <p class="mainText">Change username</p>
            <input type="text" class="standardInput" name="username" maxlength="32" minlength="4">
            <input type="submit" value="Confirm" class="submitButton deleteAccountSubmitButton">
        </form>
    </div>
    <div class="sendFeedbackBox whiteWindow">
        <div class="closeButton">
            <span></span>
            <span></span>
        </div>
        <form action="/src/php/account/feedback" method="post">
            <p class="mainText">Send feedback</p>
            <div class="inputBox">
                <p class="textLabel">Subject</p>
                <input type="text" class="standardInput subject" name="subject" maxlength="128" minlength="4" required>
            </div>
            <div class="inputBox">
                <p class="textLabel">Content</p>
                <textarea class="standardInput" name="body" cols="30" rows="10" maxlength="10240" minlength="4" required></textarea>
            </div>
            <input type="submit" value="Send" class="submitButton">
        </form>
    </div>
    <div class="whiteWindow messages">
        <div class="closeButton">
            <span></span>
            <span></span>
        </div>
        <p class="mainText">Alert</p>
        <div class="errorMessage"></div>
        <div class="codeMessage"></div>
    </div>
    <div class="menuButton">
        <span></span>
        <span></span>
        <span></span>
    </div>
    <script src="/src/js/style.js"></script>
    <script src="/src/js/deleteAccountHandler.js"></script>
    <script src="/src/js/changeUsernameHandler.js"></script>
    <script src="/src/js/errorAndCodeHandler.js"></script>
    <script src="/src/js/sendFeedbackHandler.js"></script>
</body>

</html>