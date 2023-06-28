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

if (!$stmt = $conn->prepare($variantNameDataQuery)) {
    mainPageHeader($databaseError);
    exit;
}

$stmt->bind_param("s", $workoutVariantId);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($defaultWorkoutVariantNameEN, $defaultWorkoutVariantNamePL, $userWorkoutVariantName);
$stmt->fetch();

$variantName = '-';

if (!empty($userWorkoutVariantName)) {
    $variantName = $userWorkoutVariantName;
} else if ($_SESSION['language'] == 'pl') {
    $variantName = $defaultWorkoutVariantNamePL;
} else {
    $variantName = $defaultWorkoutVariantNameEN;
}

$strengthExercises = fetchExercises($workoutVariantId);
$cardioExercises = fetchCardioExercises($workoutVariantId);
$otherExercises = fetchOtherExercises($workoutVariantId);

$exercises = array_merge($strengthExercises, $cardioExercises, $otherExercises);

usort($exercises, function ($a, $b) {
    $orderA = $a["exerciseOrder"] ?? PHP_INT_MAX;
    $orderB = $b["exerciseOrder"] ?? PHP_INT_MAX;

    return $orderA - $orderB;
});


$content = response($exercises);
$response = array('variantName' => $variantName, 'content' => $content);
echo json_encode($response);

function response($exercises) {
    $content = '<div class="exercises">';
    foreach ($exercises as $exercise) {
        $content .= '<div class="exercise" data-exercise-id="' . $exercise['exerciseId'] . '" data-exercise-type="' . $exercise['exerciseType'] . '">';
        if ($exercise['exerciseType'] == 1) {
            $content .= '<img src="/src/img/dumbbell.svg" alt="dumbbell">';
        }
        if ($exercise['exerciseType'] == 2) {
            $content .= '<img src="/src/img/treadmill.svg" alt="treadmill">';
        }
        if ($exercise['exerciseType'] == 3) {
            $content .= '<img src="/src/img/stretching.svg" alt="stretching">';
        }
        $content .= '<h3>';
        if (!empty($exercise["userExerciseName"])) {
            $content .= $exercise["userExerciseName"];
        } else if ($_SESSION['language'] = 'pl') {
            $content .= $exercise['exerciseNamePL'];
        } else {
            $content .= $exercise['exerciseNameEN'];
        }
        $content .= '</h3>';
        if ($exercise['exerciseType'] == 1) {
            $sets = fetchSets($exercise['exerciseId']);
            $content .= addSets($sets);
        }
        if ($exercise['exerciseType'] == 2) {
            if (!empty($exercise["duration"])) {
                $content .= "<p>";
                $content .= convertSecondsToHoursMinutesSeconds($exercise['duration']);
                $content .= '&nbsp min</p><hr>';
            } else {
                $content .= '<p> - </p>&nbsp<hr>';
            }

            if (!empty($exercise["distance"])) {
                $content .= "<p>";
                $content .= convertMetersToKilometers($exercise['distance']);
                $content .= '&nbsp km </p><hr>';
            } else {
                $content .= '<p> - </p>&nbsp <hr>';
            }

            if (!empty($exercise["speed"])) {
                $content .= "<p>";
                $content .= $exercise["speed"];
                $content .= '&nbsp km/h</p>';
            } else {
                $content .= '<p> - </p>&nbsp';
            }
        }
        $content .= '<div class="arrow showExerciseArrow"></div></div>';
    }
    $content .= '</div>';
    return $content;
}

function fetchExercises($workoutVariantId) {
    $strengthExercises = array();
    global $conn;
    global $databaseError;
    global $strengthExerciseDataQueryWithoutNotes;
    if (!$stmt = $conn->prepare($strengthExerciseDataQueryWithoutNotes)) {
        mainPageHeader($databaseError);
        exit;
    }

    $strengthExerciseId = 0;
    $strengthExerciseNameEN = '';
    $strengthExerciseNamePL = '';
    $userStrengthExerciseName = '';
    $strengthExerciseOrder = 0;

    $stmt->bind_param("s", $workoutVariantId);
    $stmt->execute();
    $stmt->store_result();
    $stmt->bind_result($strengthExerciseId, $strengthExerciseNameEN, $strengthExerciseNamePL, $userStrengthExerciseName, $strengthExerciseOrder);

    while ($stmt->fetch()) {
        $strengthExercise = array(
            "exerciseId" => $strengthExerciseId,
            "exerciseNameEN" => $strengthExerciseNameEN,
            "exerciseNamePL" => $strengthExerciseNamePL,
            "userExerciseName" => $userStrengthExerciseName,
            "exerciseOrder" => $strengthExerciseOrder,
            "exerciseType" => 1,
        );

        $strengthExercises[] = $strengthExercise;
    }
    return $strengthExercises;
}

function fetchCardioExercises($workoutVariantId) {
    $cardioExercises = array();
    global $databaseError;
    global $cardioExerciseDataQueryWithoutNotes;
    global $conn;
    if (!$stmt2 = $conn->prepare($cardioExerciseDataQueryWithoutNotes)) {
        mainPageHeader($databaseError);
        exit;
    }

    $cardioExerciseId = 0;
    $cardioExerciseNameEN = '';
    $cardioExerciseNamePL = '';
    $userCardioExerciseName = '';
    $duration = 0;
    $distance = 0;
    $speed = 0;
    $cardioExerciseOrder = 0;

    $stmt2->bind_param("s", $workoutVariantId);
    $stmt2->execute();
    $stmt2->store_result();
    $stmt2->bind_result($cardioExerciseId, $cardioExerciseNameEN, $cardioExerciseNamePL, $userCardioExerciseName, $duration, $distance, $speed, $cardioExerciseOrder);

    while ($stmt2->fetch()) {
        $cardioExercise = array(
            "exerciseId" => $cardioExerciseId,
            "exerciseNameEN" => $cardioExerciseNameEN,
            "exerciseNamePL" => $cardioExerciseNamePL,
            "userExerciseName" => $userCardioExerciseName,
            "duration" => $duration,
            "distance" => $distance,
            "speed" => $speed,
            "exerciseOrder" => $cardioExerciseOrder,
            "exerciseType" => 2,
        );
        $cardioExercises[] = $cardioExercise;
    }
    return $cardioExercises;
}

function fetchOtherExercises($workoutVariantId) {
    $otherExercises = array();
    global $databaseError;
    global $otherExerciseDataQueryWithoutNotes;
    global $conn;
    if (!$stmt3 = $conn->prepare($otherExerciseDataQueryWithoutNotes)) {
        mainPageHeader($databaseError);
    }

    $otherExerciseId = 0;
    $otherExerciseNameEN = '';
    $otherExerciseNamePL = '';
    $userOtherExerciseName = '';
    $otherExerciseOrder = 0;

    $stmt3->bind_param("s", $workoutVariantId);
    $stmt3->execute();
    $stmt3->store_result();
    $stmt3->bind_result($otherExerciseId, $otherExerciseNameEN, $otherExerciseNamePL, $userOtherExerciseName, $otherExerciseOrder);

    while ($stmt3->fetch()) {
        $otherExercise = array(
            "exerciseId" => $otherExerciseId,
            "exerciseNameEN" => $otherExerciseNameEN,
            "exerciseNamePL" => $otherExerciseNamePL,
            "userExerciseName" => $userOtherExerciseName,
            "exerciseOrder" => $otherExerciseOrder,
            "exerciseType" => 3,
        );
        $otherExercises[] = $otherExercise;
    }
    return $otherExercises;
}

function convertSecondsToHoursMinutesSeconds($durationInSeconds) {
    $hours = floor($durationInSeconds / 3600);
    $minutes = floor(($durationInSeconds % 3600) / 60);
    $seconds = $durationInSeconds % 60;
    $formattedDuration = '';
    if ($hours > 0) {
        $formattedDuration .= sprintf("%02d:", $hours);
    }
    $formattedDuration .= sprintf("%02d:%02d", $minutes, $seconds);
    return $formattedDuration;
}

function convertMetersToKilometers($meters) {
    $kilometers = $meters * 0.001;
    return $kilometers;
}

function fetchSets($exerciseId) {
    $sets = array();
    global $databaseError;
    global $setsDataQueryShort;
    global $conn;
    if (!$stmt4 = $conn->prepare($setsDataQueryShort)) {
        mainPageHeader($databaseError);
        exit;
    }

    $stmt4->bind_param("s", $exerciseId);
    $stmt4->execute();
    $stmt4->store_result();
    $stmt4->bind_result($repCount, $weight, $dropset);

    while ($stmt4->fetch()) {
        $set = array(
            'repCount' => $repCount,
            'weight' => $weight,
            'dropset' => $dropset,
        );
        $sets[] = $set;
    }

    return $sets;
}

function addSets($sets) {
    $content = '';
    $count = count($sets);

    for ($i = 0; $i < $count; $i++) {
        $row = $sets[$i];

        if ($i > 0 && $row['repCount'] === $sets[$i - 1]['repCount'] && $row['weight'] === $sets[$i - 1]['weight']) {
            continue;
        }

        $repetitionCount = 1;
        $nextIndex = $i + 1;
        while ($nextIndex < $count && $row['repCount'] === $sets[$nextIndex]['repCount'] && $row['weight'] === $sets[$nextIndex]['weight']) {
            $repetitionCount++;
            $nextIndex++;
        }

        if ($repetitionCount > 1) {
            $content .= '<p class="set">' . $repetitionCount . 'x' . $row['repCount'] . '</p><p class="setWeight">' . $row['weight'] . ' kg' . dropset($row['dropset']) . '</p>';
        } else {
            $content .= '<p class="set">1x' . $sets[$i]['repCount'] . '</p><p class="setWeight">' . $sets[$i]['weight'] . ' kg ' . dropset($sets[$i]['dropset']) . '</p>';
        }

        $i = $nextIndex - 1;
    }
    $content .= '<hr class="weight">';
    return $content;
}

function dropset($dropset) {
    if ($dropset == 1) {
        return '<img src="/src/img/down-arrow.svg" alt="dropset">';
    }
    return '';
}
