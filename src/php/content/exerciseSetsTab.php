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
    if (!$stmt2 = $conn->prepare($setsDataQueryShortPlus)) {
        mainPageHeader($databaseError);
        exit;
    }

    $stmt2->bind_param("s", $exerciseId);
    $stmt2->execute();
    $stmt2->store_result();
    $stmt2->bind_result($repCount, $weight, $dropset, $setNumber);

    $sets = array();

    while ($stmt2->fetch()) {
        $set = array(
            'repCount' => $repCount,
            'weight' => $weight,
            'dropset' => $dropset,
            'setNumber' => $setNumber,
        );
        $sets[] = $set;
    }

    foreach ($sets as $set) {
        $content .= '<div class="exerciseSet"><p><span>Set ' . $set['setNumber'] . '.</span> &nbsp&nbsp&nbsp&nbsp' . $set['repCount'] . '&nbsp reps &nbsp&nbsp&nbsp&nbsp' . $set['weight'] . ' kg' . dropset($set['dropset']) . '</p></div>';
    }
}

echo $content;

function dropset($dropset) {
    if ($dropset == 1) {
        return '<img src="/src/img/down-arrow.svg" alt="dropset">';
    }
}
