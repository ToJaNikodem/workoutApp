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

if ($exerciseType == 1) {
    if (!$stmt2 = $conn->prepare($strengthExerciseNoteDataQuery)) {
        mainPageHeader($databaseError);
        exit;
    }

    $stmt2->bind_param("s", $exerciseId);
    $stmt2->execute();
    $stmt2->store_result();
    $stmt2->bind_result($strengthExerciseNote, $strengthExerciseId);
    $stmt2->fetch();

    if (!empty($strengthExerciseNote)) {
        $content .= '<div class="exerciseNote"><p class="mainNote">' . $strengthExerciseNote . '<img class="editExerciseNotes" src="/src/img/edit.svg" alt="edit"></p>';
        $content .= fetchSets($strengthExerciseId);
        $content .= '</div>';
    }
}

if ($exerciseType == 2) {
    if (!$stmt3 = $conn->prepare($cardioExerciseNoteDataQuery)) {
        mainPageHeader($databaseError);
        exit;
    }

    $stmt3->bind_param("s", $exerciseId);
    $stmt3->execute();
    $stmt3->store_result();
    $stmt3->bind_result($cardioExerciseNote);
    $stmt3->fetch();

    if (!empty($cardioExerciseNote)) {
        $content .= '<div class="exerciseNote"><p class="mainNote">' . $cardioExerciseNote . '<img class="editExerciseNotes" src="/src/img/edit.svg" alt="edit"></p>';
        $content .= '</div>';
    }
}

if ($exerciseType == 3) {
    if (!$stmt4 = $conn->prepare($otherExerciseNoteDataQuery)) {
        mainPageHeader($databaseError);
        exit;
    }

    $stmt4->bind_param("s", $workoutVariantId);
    $stmt4->execute();
    $stmt4->store_result();
    $stmt4->bind_result($otherExerciseNote);
    $stmt4->fetch();

    if (!empty($otherExerciseNote)) {
        $content .= '<div class="exerciseNote"><p class="mainNote">' . $otherExerciseNote . '<img class="editExerciseNotes" src="/src/img/edit.svg" alt="edit"></p>';
        $content .= '</div>';
    }
}

echo $content;

function fetchSets($exerciseId) {
    $sets = array();
    $content = '';
    global $databaseError;
    global $setNotesDataQuery;
    global $conn;
    if (!$stmt7 = $conn->prepare($setNotesDataQuery)) {
        mainPageHeader($databaseError);
        exit;
    }

    $setNumber = 0;
    $setNotes = '';

    $stmt7->bind_param("s", $exerciseId);
    $stmt7->execute();
    $stmt7->store_result();
    $stmt7->bind_result($setNumber, $setNotes);

    while ($stmt7->fetch()) {
        $set = array(
            "setNumber" => $setNumber,
            "setNotes" => $setNotes,
        );
        $sets[] = $set;
    }
    if (isColumnEmpty($sets, 'setNotes')) {
        return $content;
    }
    $content .= '<hr>';
    foreach ($sets as $set) {
        if (!empty($set['setNotes'])) {
            $content .= '<div class="setNote"><p><span> Set ' . $set['setNumber'] . '. </span>' . $set['setNotes'] . '</p><div class="arrow setNoteArrow"></div></div>';
        }
    }
    return $content;
}


function isColumnEmpty($array, $columnName) {
    foreach ($array as $row) {
        if (!empty($row[$columnName])) {
            return false;
        }
    }
    return true;
}