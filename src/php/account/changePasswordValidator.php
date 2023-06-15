<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";

if (!isset($_POST['password']) && !isset($_POST['token'])) {
    echo "post error";
    exit;
}

$password = $_POST['password'];
$token = $_POST['token'];

if (!(strlen($password) >= 8 && strlen($password) <= 64)) {
    echo "validation error";
    exit;
}

$hashedPassword = password_hash($password, PASSWORD_ARGON2ID);
$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);

if ($conn->connect_errno) {
    echo "Failed to connect to the database: " . $conn->connect_error;
    exit;
}

if (!$stmt = $conn->prepare($validateToken)) {
    echo "stmt error";
    exit;
}

$stmt->bind_param('s', $token);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($userId, $expiryDate);

if (!$stmt->num_rows() > 0) {
    echo "invalid token";
    exit;
}

$stmt->fetch();
$stmt->close();

$expiryDate = DateTime::createFromFormat('Y-m-d H:i:s', $expiryDate);

$currentTime = new DateTime();
$valid = $currentTime->diff($expiryDate);

if (!$valid) {
    echo "token expired";
    exit;
}

if (!$stmt2 = $conn->prepare($changePassword)) {
    echo "stmt2 error";
    exit;
}

$stmt2->bind_param('ss', $hashedPassword, $userId);
$stmt2->execute();
$stmt2->close();
$conn->close();

header("Location: /index.php");
