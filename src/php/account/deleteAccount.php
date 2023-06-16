<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";
require $rootDirectory . "/src/php/session/sessionFunciotns.php";
require $rootDirectory . "/src/php/session/codes.php";

session_start();

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);
if ($conn->connect_errno) {
    echo "database error";
    exit;
}

if (!$stmt = $conn->prepare($deleteAccountQuery)) {
    echo "database error";
    exit;
}

$stmt->bind_param('s', $_SESSION['user_id']);
$stmt->execute();
$stmt->close();
$conn->close();
session_destroy();

signInHeader($accountDeletedSuccessfully);
