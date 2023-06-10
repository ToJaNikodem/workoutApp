<?php
$language = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);

session_start();
session_destroy();

if ($language == 'pl') {
    header('Location: /pages/pl/signIn.php');
    exit();
} else {
    header('Location: /pages/en/signIn.php');
    exit();
}