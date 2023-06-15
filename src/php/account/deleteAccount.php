<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";

session_start();

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);
if ($conn->connect_errno) {
    echo "Failed to connect to the database: " . $conn->connect_error;
    exit;
}

if (!$stmt = $conn->prepare($deleteAccountQuery)) {
    echo "stmt error";
    exit;
}

$stmt->bind_param('s', $_SESSION['user_id']);
$stmt->execute();
$stmt->close();
$conn->close();
session_destroy();

if ($_SESSION['language'] == 'pl') {
    header('Location: /pages/pl/signIn.php?co=12');
    exit;
} else {
    header('Location: /pages/en/signIn.php?co=02');
    exit;
}
