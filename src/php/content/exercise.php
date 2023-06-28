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

if (!isset($_POST['exerciseId']) && !isset($_POST['exerciseType'])) {
    mainPageHeader($invalidData);
    exit;
}

$exerciseId = $_POST['exerciseId'];

$exerciseType = $_POST['exerciseType'];

$content = '<div class="exerciseBox">';

if ($exerciseType == 1) {
    $exerciseNameQuery = $strengthExerciseNames;
    $content .= '<img src="/src/img/dumbbell.svg" alt="dumbbell">';
}
if ($exerciseType == 2) {
    $exerciseNameQuery = $cardioExerciseNames;
    $content .= '<img src="/src/img/treadmill.svg" alt="treadmill">';
}
if ($exerciseType == 3) {
    $exerciseNameQuery = $otherExerciseNames;
    $content .= '<img src="/src/img/stretching.svg" alt="stretching">';
}

if (!$stmt = $conn->prepare($exerciseNameQuery)) {
    mainPageHeader($databaseError);
    exit;
}

$stmt->bind_param("s", $exerciseId);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($exerciseNameEN, $exerciseNamePL, $userExerciseName);
$stmt->fetch();


$content .= '<h3 class="notesHeader">';
if (!empty($userExerciseName)) {
    $content .= $userExerciseName;
} else if ($_SESSION['language'] == 'pl') {
    $content .= $exerciseNamePL;
} else {
    $content .= $exerciseNameEN;
}
$content .= '</h3><div class="innerExercise">';

$content .= '<div class="logExercise"><form method="post" action="/TODO.TODO"><p>Weight (kg)</p><div class="exerciseLogInputWrapper"><div class="subtractWeight"></div><input class="standardInput" name="weight" type="number" max="9999" step="0.01"><div class="addWeight"></div></div><p>Reps</p><div class="exerciseLogInputWrapper"><div class="subtractReps"></div><input class="standardInput" name="reps" type="number" max="65535"><div class="addReps"></div></div><button class="submitButton" type="submit">Save</button><input class="dropset" name="dropset" type="checkbox"></form><div class="addSuperset submitButton">Superset</div></div>';
$content .= '<div class="exerciseTabs"></div></div>';

$content .= '<div class="arrow closeExercise"></div></div>';
echo $content;