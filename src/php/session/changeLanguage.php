<?php
session_start();

if (isset($_SESSION['language'])) {
    if ($_SESSION['language'] == 'pl') {
        $_SESSION['language'] = 'en';
        header('Location: /index.php');
        exit;
    } else {
        $_SESSION['language'] = 'pl';
        header('Location: /index.php');
        exit;
    }
}
header('Location: /index.php');
