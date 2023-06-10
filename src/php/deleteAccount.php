<?php
require "database.php";

session_start();

$language = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);
if ($conn->connect_errno) {
    echo "Failed to connect to the database: " . $conn->connect_error;
    exit();
}
if ($stmt = $conn->prepare('DELETE FROM users WHERE user_id = ?')) {
    $stmt->bind_param('s', $_SESSION['user_id']);
    $stmt->execute();
    session_destroy();
    if ($language == 'pl') {
        header('Location: /pages/pl/signIn.php?co=12');
        exit();
    } else {
        header('Location: /pages/en/signIn.php?co=02');
        exit();
    }
}