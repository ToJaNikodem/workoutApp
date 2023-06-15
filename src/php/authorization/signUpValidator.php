<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";

session_start();

if (!isset($_POST['username']) && !isset($_POST['email']) && !isset($_POST['password'])) {
    echo "post error";
    exit;
}

$username = $_POST['username'];
$email = $_POST['email'];
$password = $_POST['password'];

if (!(strlen($username) >= 4 && strlen($username) <= 32 && strlen($password) >= 8 && strlen($password) <= 64 && filter_var($email, FILTER_VALIDATE_EMAIL))) {
    echo "validation error";
    exit;
}

$hashedPassword = password_hash($password, PASSWORD_ARGON2ID);

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);

if ($conn->connect_errno) {
    echo "Failed to connect to the database: " . $conn->connect_error;
    exit;
}

if (!$stmt = $conn->prepare($usernameAvailabilityQuery)) {
    echo "stmt error";
    exit;
}

$stmt->bind_param('s', $username);
$stmt->execute();
$stmt->store_result();

if ($stmt->num_rows > 0) {
    echo "username already taken";
    exit;
}

$stmt->close();

if (!$stmt2 = $conn->prepare($emailAvailabilityQuery)) {
    echo "stmt2 error";
    exit;
}

$stmt2->bind_param('s', $email);
$stmt2->execute();
$stmt2->store_result();

if ($stmt2->num_rows > 0) {
    echo "email already exist";
    exit;
}

$stmt2->close();

if (!$stmt3 = $conn->prepare($signUpQuery)) {
    echo "stmt3 error";
    exit;
}

$stmt3->bind_param('sss', $username, $hashedPassword, $email);
$stmt3->execute();
$stmt3->close();
$conn->close();

if ($_SESSION['language'] == 'pl') {
    header('Location: /pages/pl/signIn.php?co=11');
    exit;
} else {
    header('Location: /pages/en/signIn.php?co=01');
    exit;
}
