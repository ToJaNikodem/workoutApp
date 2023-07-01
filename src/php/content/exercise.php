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

$content .= '<div class="logExercise"><form method="post" action="/TODO.TODO"><p>Weight (kg)</p><div class="exerciseLogInputWrapper"><div class="subtractWeight"></div><input class="standardInput weight" name="weight" type="number" min="0" max="9999" step="0.01" value="0.0"><div class="addWeight"></div></div><p>Reps</p><div class="exerciseLogInputWrapper"><div class="subtractReps"></div><input class="standardInput reps" name="reps" type="number" min="0" max="65535" value="0" step="1"><div class="addReps"></div></div><button class="submitButton" type="submit">Save</button><div class="dropset"><img src="/src/img/down-arrow-white.svg" alt="dropset"></div><input class="dropsetInput" name="dropset" type="hidden" value="0"></form><div class="addSuperset submitButton">Superset</div></div>';

$content .= '<div class="exerciseTabs"><h4>Sets</h4><div class="tabs"><img class="exerciseSetsTabButton" src="/src/img/planning.svg" alt="plan"><img class="exerciseHistoryTabButton" src="/src/img/book.svg" alt="history"><img class="exerciseGraphTabButton" src="/src/img/diagram.svg" alt="graph"><img class="exercisePRsTabButton" src="/src/img/trophy.svg" alt="PRs"><img class="exerciseMusclesTabButton" src="/src/img/muscle.svg" alt="muscles"><img class="exerciseNotesTabButton" src="/src/img/file2.svg" alt="notes"><div class="activeTab"></div></div><hr>';

$content .= innerTabs();

$content .= '</div>';

$content .= '<div class="arrow closeExercise"></div></div>';
echo $content;

function dropset($dropset) {
    if ($dropset == 1) {
        return '<img src="/src/img/down-arrow.svg" alt="dropset">';
    }
}

function innerTabs() {
    global $exerciseId; 
    global $exerciseType;
    global $conn;
    global $setsDataQueryShortPlus;
    global $databaseError;
    $content = '<div class="innerTabs">';
    if ($exerciseType == 1) {
        if (!$stmt2 = $conn->prepare($setsDataQueryShortPlus)) {
            mainPageHeader($databaseError);
            exit;
        }

        $repCount = 0;
        $weight = 0;
        $dropset = 0;
        $setNumber = 0;

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
    $content .= '</div>';
    return $content;
}
