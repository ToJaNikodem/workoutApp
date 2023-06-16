<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";
require $rootDirectory . "/src/php/session/sessionFunciotns.php";
require $rootDirectory . "/src/php/session/codes.php";

session_start();

if (!isset($_POST['username'])) {
    mainPageHeader($changeUsernameInvalidData);
    exit;
}

$username = $_POST['username'];

if (!(strlen($username) >= 4 && strlen($username) <= 32)) {
    mainPageHeader($changeUsernameInvalidData);
    exit;
}

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);

if ($conn->connect_errno) {
    mainPageHeader($databaseError);
    exit;
}

if (!$stmt = $conn->prepare($usernameAvailabilityQuery)) {
    mainPageHeader($databaseError);
    exit;
}

$stmt->bind_param('s', $username);
$stmt->execute();
$stmt->store_result();

if ($stmt->num_rows > 0) {
    mainPageHeader($usernameAlreadyExists);
    exit;
}

$stmt->close();
if (!$stmt2 = $conn->prepare($changeUsernameQuery)) {
    mainPageHeader($databaseError);
    exit;
}

$stmt2->bind_param('ss', $username, $_SESSION['user_id']);
$stmt2->execute();
$stmt2->close();
$conn->close();
$_SESSION['username'] = $username;

mainPageHeader($usernameChangedSuccessfully);
