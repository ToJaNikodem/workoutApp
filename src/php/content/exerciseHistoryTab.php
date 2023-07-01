<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";
require $rootDirectory . "/src/php/session/codes.php";

session_start();

if (!isset($_POST['exerciseId']) && !isset($_POST['exerciseType'])) {
    mainPageHeader($invalidData);
    exit;
}

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);
if ($conn->connect_errno) {
    mainPageHeader($databaseError);
    exit();
}

$exerciseId = $_POST['exerciseId'];
$exerciseType = $_POST['exerciseType'];

$content = '';



echo $content;