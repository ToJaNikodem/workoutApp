<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";
require $rootDirectory . "/src/php/session/sessionFunciotns.php";
require $rootDirectory . "/src/php/session/codes.php";

session_start();

if (!isset($_POST['usernameOrEmail']) && !isset($_POST['password']) && !isset($_POST['language'])) {
    signInHeader($invalidData);
    exit;
}

$usernameOrEmail = $_POST['usernameOrEmail'];
$password = $_POST['password'];
$language = $_POST['language'];

if (!(strlen($usernameOrEmail) >= 4 && strlen($usernameOrEmail) <= 256 && strlen($password) >= 8 && strlen($password) <= 64)) {
    signInHeader($invalidData);
    exit;
}

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);

if ($conn->connect_errno) {
    signInHeader($databaseError);
    exit;
}

if (!$stmt = $conn->prepare($signInQuery)) {
    signInHeader($databaseError);
    exit;
}

$stmt->bind_param('ss', $usernameOrEmail, $usernameOrEmail);
$stmt->execute();
$stmt->store_result();

if (!$stmt->num_rows > 0) {
    signInHeader($invalidData);
    exit;
}

$stmt->bind_result($user_id, $username, $hashedPassword);
$stmt->fetch();
$stmt->close();
$conn->close();

if (!password_verify($password, $hashedPassword)) {
    signInHeader($invalidData);
    exit;
}

session_regenerate_id();
$_SESSION['signedIn'] = TRUE;
$_SESSION['user_id'] = $user_id;
$_SESSION['username'] = $username;
$_SESSION['language'] = $language;

mainPageHeader(NULL);