<?php
function signedIn() {
    if (isset($_SESSION['signedIn']) && $_SESSION['signedIn'] == true) {
        mainPageHeader(NULL);
    }
}

function notSignedIn() {
    if ($_SESSION['signedIn'] == false) {
        signInHeader(NULL);
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

function mainPageHeader($code) {
    $lang = userLanguage();
    if ($lang == 'pl') {
        header('Location: /pages/pl/home/mainPage?co=' . $code);
        exit();
    } else {
        header('Location: /pages/en/home/mainPage?co=' . $code);
        exit();
    }
}

function signInHeader($code) {
    $lang = userLanguage();
    if ($lang == 'pl') {
        header('Location: /pages/pl/authorization/signIn?co=' . $code);
        exit();
    } else {
        header('Location: /pages/en/authorization/signIn?co=' . $code);
        exit();
    }
}

function signUpHeader($code) {
    $lang = userLanguage();
    if ($lang == 'pl') {
        header('Location: /pages/pl/authorization/signUp?co=' . $code);
        exit();
    } else {
        header('Location: /pages/en/authorization/signUp?co=' . $code);
        exit();
    }
}

function resetPasswordHeader($code) {
    $lang = userLanguage();
    if ($lang == 'pl') {
        header('Location: /pages/pl/other/resetPassword?co=' . $code);
        exit();
    } else {
        header('Location: /pages/en/other/resetPassword?co=' . $code);
        exit();
    }
}

function changePasswordHeader($code, $token) {
    $lang = userLanguage();
    if ($lang == 'pl') {
        header('Location: /pages/pl/other/changePassword?co=' . $code . '&token=' . $token);
        exit();
    } else {
        header('Location: /pages/en/other/changePassword?co=' . $code . '&token=' . $token);
        exit();
    }
}
