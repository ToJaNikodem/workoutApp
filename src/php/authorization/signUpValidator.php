<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";
require $rootDirectory . "/src/php/session/sessionFunciotns.php";
require $rootDirectory . "/src/php/session/codes.php";

session_start();

if (!isset($_POST['username']) && !isset($_POST['email']) && !isset($_POST['password'])) {
    signUpHeader($invalidData);
    exit;
}

$username = $_POST['username'];
$email = $_POST['email'];
$password = $_POST['password'];

if (!(strlen($username) >= 4 && strlen($username) <= 32 && strlen($password) >= 8 && strlen($password) <= 64 && filter_var($email, FILTER_VALIDATE_EMAIL))) {
    signUpHeader($invalidData);
    exit;
}

$hashedPassword = password_hash($password, PASSWORD_ARGON2ID);

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);

if ($conn->connect_errno) {
    signUpHeader($databaseError);
    exit;
}

if (!$stmt = $conn->prepare($usernameAvailabilityQuery)) {
    signUpHeader($databaseError);
    exit;
}

$stmt->bind_param('s', $username);
$stmt->execute();
$stmt->store_result();

if ($stmt->num_rows > 0) {
    signUpHeader($usernameAlreadyExists);
    exit;
}

$stmt->close();

if (!$stmt2 = $conn->prepare($emailAvailabilityQuery)) {
    signUpHeader($databaseError);
    exit;
}

$stmt2->bind_param('s', $email);
$stmt2->execute();
$stmt2->store_result();

if ($stmt2->num_rows > 0) {
    signUpHeader($emailAlreadyExists);
    exit;
}

$stmt2->close();

if (!$stmt3 = $conn->prepare($signUpQuery)) {
    signUpHeader($databaseError);
    exit;
}

$stmt3->bind_param('sss', $username, $hashedPassword, $email);
$stmt3->execute();
$stmt3->close();
$conn->close();

signInHeader($accountCreatedSuccessfully);