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

if (!isset($_POST['workoutVariantId'])) {
    mainPageHeader($invalidData);
    exit;
}

$workoutVariantId = $_POST['workoutVariantId'];

$header = '-';
$content = '';

if ($_SESSION['language'] == 'pl') {
    $header = 'Notatki trenignu';
} else {
    $header = 'Workout notes';
}

if (!$stmt = $conn->prepare($workoutVariantNotes)) {
    mainPageHeader($databaseError);
    exit;
}

$stmt->bind_param("s", $workoutVariantId);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($variantNotes);
$stmt->fetch();

$content .= '<div class="innerNotes">';
$content .= '<div class="workoutVariantNotes"><h4>' . $header . '</h4><p>' . $variantNotes . '</p><img class="editVariantNotes" src="/src/img/edit.svg" alt="edit"></div>';

if (!$stmt2 = $conn->prepare($strengthExerciseNotesDataQuery)) {
    mainPageHeader($databaseError);
    exit;
}

$stmt2->bind_param("s", $workoutVariantId);
$stmt2->execute();
$stmt2->store_result();
$stmt2->bind_result($exerciseNote, $exerciseNameEN, $exerciseNamePL, $userExerciseName);

$strengthExerciseNotes = array();

while($stmt2->fetch()) {
    $strengthExerciseNote = array(
        'exerciseNote' => $exerciseNote,
        'exerciseNameEN' => $exerciseNameEN,
        'exerciseNamePL' => $exerciseNamePL,
        'userExerciseName' => $userExerciseName,
    );
    $strengthExerciseNotes[] = $strengthExerciseNote;
}

if (!$stmt3 = $conn->prepare($cardioExerciseNotesDataQuery)) {
    mainPageHeader($databaseError);
    exit;
}

$stmt3->bind_param("s", $workoutVariantId);
$stmt3->execute();
$stmt3->store_result();
$stmt3->bind_result($exerciseNote, $exerciseNameEN, $exerciseNamePL, $userExerciseName);

$cardioExerciseNotes = array();

while($stmt3->fetch()) {
    $cardioExerciseNote = array(
        'exerciseNote' => $exerciseNote,
        'exerciseNameEN' => $exerciseNameEN,
        'exerciseNamePL' => $exerciseNamePL,
        'userExerciseName' => $userExerciseName,
    );
    $cardioExerciseNotes[] = $cardioExerciseNote;
}

if (!$stmt4 = $conn->prepare($otherExerciseNotesDataQuery)) {
    mainPageHeader($databaseError);
    exit;
}

$stmt4->bind_param("s", $workoutVariantId);
$stmt4->execute();
$stmt4->store_result();
$stmt4->bind_result($exerciseNote, $exerciseNameEN, $exerciseNamePL, $userExerciseName);

$otherExerciseNotes = array();

while($stmt4->fetch()) {
    $otherExerciseNote = array(
        'exerciseNote' => $exerciseNote,
        'exerciseNameEN' => $exerciseNameEN,
        'exerciseNamePL' => $exerciseNamePL,
        'userExerciseName' => $userExerciseName,
    );
    $otherExerciseNotes[] = $otherExerciseNote;
}

$exercises = array_merge($strengthExerciseNotes, $cardioExerciseNotes, $otherExerciseNotes);

usort($exercises, function ($a, $b) {
    $orderA = $a["exerciseOrder"] ?? PHP_INT_MAX;
    $orderB = $b["exerciseOrder"] ?? PHP_INT_MAX;

    return $orderA - $orderB;
});

$content .= '<div class="exerciseNotes">';
foreach ($exercises as $exercise) {
    if (!empty($exercise['exerciseNote'])) {
        $content .= '<div class="exerciseNote"><h4>' . exerciseName($exercise) . '</h4><p>' . $exercise['exerciseNote'] . '</p><img class="editExerciseNotes" src="/src/img/edit.svg" alt="edit"></div>';
    }
}
$content .= '</div><div class="arrow variantNotesBack"></div></div>';

$response = array(
    'header' => $header,
    'content' => $content,
);

echo json_encode($response);

function exerciseName($exercise) {
    if (!empty($exercise['userExerciseName'])) {
        return $exercise['userExerciseName'];
    } else if ($_SESSION['language'] == 'pl') {
        return $exercise['exerciseNamePL'];
    } else {
        return $exercise['exerciseNameEN'];
    }
}