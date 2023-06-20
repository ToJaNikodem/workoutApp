<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";
require $rootDirectory . "/src/php/session/codes.php";

session_start();

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);
if ($conn->connect_errno) {
    mainPageHeader($databaseError);
    exit();
}

$workoutId = $_POST['workoutId'];
$user_id = $_SESSION['user_id'];
if ($_POST['favorite'] == 1) {
    $favorite = 0;
} else {
    $favorite = 1;
}

if (!$stmt = $conn->prepare($checkWorkoutOwnership)) {
    mainPageHeader($databaseError);
    exit;
}

$stmt->bind_param("s", $workoutId);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($userId);
$stmt->fetch();
$stmt->close();

if ($user_id != $userId) {
    exit;
}

if (!$stmt2 = $conn->prepare($changeWorkoutFavorite)) {
    mainPageHeader($databaseError);
    exit;
}

$stmt2->bind_param("ss", $favorite, $workoutId);
$stmt2->execute();
$stmt2->close();
$conn->close();

exit;