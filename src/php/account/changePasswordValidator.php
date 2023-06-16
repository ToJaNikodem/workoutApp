<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";
require $rootDirectory . "/src/php/session/sessionFunciotns.php";
require $rootDirectory . "/src/php/session/codes.php";

if (!isset($_POST['password']) && !isset($_POST['token'])) {
    signInHeader($invalidToken);
    exit;
}

$password = $_POST['password'];
$token = $_POST['token'];

if (!(strlen($password) >= 8 && strlen($password) <= 64)) {
    changePasswordHeader($invalidData, $token);
    exit;
}

$hashedPassword = password_hash($password, PASSWORD_ARGON2ID);
$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);

if ($conn->connect_errno) {
    changePasswordHeader($databaseError, $token);
    exit;
}

if (!$stmt = $conn->prepare($validateToken)) {
    changePasswordHeader($databaseError, $token);
    exit;
}

$stmt->bind_param('s', $token);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($userId, $expiryDate);

if (!$stmt->num_rows() > 0) {
    signInHeader($invalidToken);
    exit;
}

$stmt->fetch();
$stmt->close();

$expiryDate = DateTime::createFromFormat('Y-m-d H:i:s', $expiryDate);

$currentTime = new DateTime();
$valid = $currentTime->diff($expiryDate);

if (!$valid) {
    signInHeader($invalidToken);
    exit;
}

if (!$stmt2 = $conn->prepare($changePassword)) {
    changePasswordHeader($databaseError, $token);
    exit;
}

$stmt2->bind_param('ss', $hashedPassword, $userId);
$stmt2->execute();
$stmt2->close();
$conn->close();

signInHeader($passwordChangedSuccessfully);
