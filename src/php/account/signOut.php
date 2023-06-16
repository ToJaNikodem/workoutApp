<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . '/src/php/session/sessionFunciotns.php';

session_start();
session_destroy();
signInHeader(0);