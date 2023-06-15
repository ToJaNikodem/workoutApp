<?php
function signedIn() {
    if (isset($_SESSION['signedIn']) && $_SESSION['signedIn'] == true) {
        mainPageHeader();
    }
}

function notSignedIn() {
    if ($_SESSION['signedIn'] == false) {
        signInHeader();
    }
}

function userLanguage() {
    if (!isset($_SESSION['language'])) {
        $_SESSION['language'] = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);
    }
    return $_SESSION['language'];
}

function universalHeader($lang, $link1, $link2) {
    $_SESSION['langauge'] = $lang;
    header('Location: ' . $link1 . $lang . $link2);
}

function mainPageHeader() {
    $lang = userLanguage();
    if ($lang == 'pl') {
        header('Location: /pages/pl/home/mainPage');
        exit();
    } else {
        header('Location: /pages/en/home/mainPage');
        exit();
    }
}

function signInHeader() {
    $lang = userLanguage();
    if ($lang == 'pl') {
        header('Location: /pages/pl/authorization/signIn');
        exit();
    } else {
        header('Location: /pages/en/authorization/signIn');
        exit();
    }
}
