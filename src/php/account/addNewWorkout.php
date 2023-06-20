<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";
require $rootDirectory . "/src/php/session/sessionFunciotns.php";
require $rootDirectory . "/src/php/session/codes.php";

session_start();

if (!isset($_POST['workoutName'])) {
    mainPageHeader($invalidData);
    exit;
}

$workoutName = $_POST['workoutName'];
$userId = $_SESSION['user_id'];

if (!(strlen($workoutName) >= 2 && strlen($workoutName) <= 64)) {
    mainPageHeader($invalidData);
    exit;
}

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);

if ($conn->connect_errno) {
    mainPageHeader($databaseError);
    exit;
}

$conn->begin_transaction();

if (!$stmt = $conn->prepare($addWorkoutName)) {
    $conn->rollback();
    mainPageHeader($databaseError);
    exit;
}

$stmt->bind_param('s', $workoutName);
$stmtResult = $stmt->execute();

if (!$stmt3 = $conn->prepare('SELECT LAST_INSERT_ID()')) {
    $conn->rollback();
    mainPageHeader($databaseError);
    exit;
}

$stmt3->execute();
$stmt3->store_result();
$stmt3->bind_result($workoutNameId);
$stmt3->fetch();

if (!$stmt2 = $conn->prepare($addWorkoutQuery)) {
    $conn->rollback();
    mainPageHeader($databaseError);
    exit;
}

echo $userId . ' : ' . $workoutNameId;

$stmt2->bind_param('ss', $userId, $workoutNameId);
$stmt2Result = $stmt2->execute();

if ($stmtResult && $stmt2Result) {
    $conn->commit();
    mainPageHeader($workoutAddedSuccessfully);
    exit;
}

$conn->rollback();
mainPageHeader($databaseError);
exit;

$stmt->close();
$stm2->close();
$conn->close();