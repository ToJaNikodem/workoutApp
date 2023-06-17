<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";
require $rootDirectory . "/src/php/session/sessionFunciotns.php";
require $rootDirectory . "/src/php/session/codes.php";

session_start();

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);
if ($conn->connect_errno) {
    mainPageHeader($databaseError);
    exit();
}

$currentTime = new DateTime();
$currentTime = $currentTime->format('Y-m-d_H-i-s');

$user_id = $_SESSION['user_id'];

$file = $user_id . '_' . $currentTime . "_export.txt";
$fileHandle = fopen($file, "w");

$data = '';

if (!$stmt = $conn->prepare($workoutIdQuery)) {
    mainPageHeader($databaseError);
    exit;
}

$stmt->bind_param("s", $user_id);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($workoutId);

while ($stmt->fetch()) {
    $data .= fetchWorkouts($conn, $workoutId);
}

function addWorkouts($workouts) {
    $data = '';
    foreach ($workouts as $workout) {
        if (!empty($workout["defaultWorkoutNameEN"])) {
            $data .= $workout["defaultWorkoutNameEN"];
        }
        if (!empty($workout["defaultWorkoutNamePL"])) {
            $data .= "; " . $workout["defaultWorkoutNamePL"];
        }
        if (!empty($workout["userWorkoutName"])) {
            $data .= "; " . $workout["userWorkoutName"];
        }
        $data .= "\n";
    }
    return $data;
}

function addWorkoutVariants($workoutVariants) {
    $data = '';
    foreach ($workoutVariants as $workoutVariant) {
        if (!empty($workoutVariant["defaultWorkoutVariantNameEN"])) {
            $data .= "   - " . $workoutVariant["defaultWorkoutVariantNameEN"];
        }
        if (!empty($workoutVariant["defaultWorkoutVariantNamePL"])) {
            $data .= "; " . $workoutVariant["defaultWorkoutVariantNamePL"];
        }
        if (!empty($workoutVariant["userWorkoutVariantName"])) {
            $data .= "; " . $workoutVariant["userWorkoutVariantName"];
        }
        if (!empty($workoutVariant["workoutVariantNotes"])) {
            $data .= "   Notes: " . $workoutVariant["workoutVariantNotes"];
        }
        $data .= "\n";
    }
    return $data;
}

function addExercises($exercises, $sets) {
    $data = '';
    foreach ($exercises as $exercise) {
        if (!empty($exercise["exerciseOrder"])) {
            $data .= "      " . $exercise["exerciseOrder"] . ". ";
        }
        if (!empty($exercise["exerciseNameEN"])) {
            $data .= $exercise["exerciseNameEN"];
        }
        if (!empty($exercise["exerciseNamePL"])) {
            $data .= "; " . $exercise["exerciseNamePL"];
        }
        if (!empty($exercise["userExerciseName"])) {
            $data .= "; " . $exercise["userExerciseName"];
        }
        $data .= "   ";
        if (!empty($exercise["distance"])) {
            $data .= "distance: " . $exercise["distance"];
        }
        if (!empty($exercise["duration"])) {
            $data .= "; duration: " . $exercise["duration"];
        }
        if (!empty($exercise["speed"])) {
            $data .= "; speed: " . $exercise["speed"];
        }
        if (!empty($exercise["exerciseNotes"])) {
            $data .= "  Notes: " . $exercise["exerciseNotes"];
        }
        $data .= "\n";
        $data .= addSets($sets, $exercise);
    }
    return $data;
}

function addSets($sets, $exercise) {
    $data = '';
    foreach ($sets as $set) {
        if (empty($exercise["strengthExerciseId"])) {
            continue;
        }
        
        if ($set["exerciseId"] != $exercise["strengthExerciseId"] || $exercise["isStrengthExercise"] != 1) {
            continue;
        }
        
        $data .= "         ";
        $data .= "set " . $set["setNumber"] . ". reps: " . $set["repCount"] . "; weight: " . $set["weight"] . "; ";
        
        if ($set["dropset"] == 1) {
            $data .= "   dropset ";
        }
        
        if (!empty($set['setNotes'])) {
            $data .= "   Notes: " . $set["setNotes"];
        }
        
        $data .= "\n";
    }
    return $data;
}

function fetchWorkouts($conn, $workoutId) {
    $data = '';
    global $workoutDataQuery;
    global $databaseError;
    if (!$stmt2 = $conn->prepare($workoutDataQuery)) {
        mainPageHeader($databaseError);
        exit;
    }

    $workoutId2 = 0; $defaultWorkoutNameEN = ''; $defaultWorkoutNamePL = ''; $userWorkoutName = '';

    $stmt2->bind_param("s", $workoutId);
    $stmt2->execute();
    $stmt2->store_result();
    $stmt2->bind_result($workoutId2, $defaultWorkoutNameEN, $defaultWorkoutNamePL, $userWorkoutName);

    while ($stmt2->fetch()) {
        $workout = array(
            "workoutId" => $workoutId2,
            "defaultWorkoutNameEN" => $defaultWorkoutNameEN,
            "defaultWorkoutNamePL" => $defaultWorkoutNamePL,
            "userWorkoutName" => $userWorkoutName
        );
        $workouts[] = $workout;

        $data .= addWorkouts($workouts);
        unset($workouts);

        $data .= fetchWorkoutVariants($conn, $workoutId);
    }
    return $data;
}

function fetchWorkoutVariants($conn, $workoutId) {
    $data = '';
    global $workoutVariantDataQuery;
    global $databaseError;
    if (!$stmt3 = $conn->prepare($workoutVariantDataQuery)) {
        mainPageHeader($databaseError);
        exit;
    }

    $workoutVariantId = 0; $defaultWorkoutVariantNameEN = ''; $defaultWorkoutVariantNamePL = ''; $userWorkoutVariantName = ''; $workoutVariantNotes = '';

    $stmt3->bind_param("s", $workoutId);
    $stmt3->execute();
    $stmt3->store_result();
    $stmt3->bind_result($workoutVariantId, $defaultWorkoutVariantNameEN, $defaultWorkoutVariantNamePL, $userWorkoutVariantName, $workoutVariantNotes);

    while ($stmt3->fetch()) {
        $workoutVariant = array(
            "workoutVariantId" => $workoutVariantId,
            "defaultWorkoutVariantNameEN" => $defaultWorkoutVariantNameEN,
            "defaultWorkoutVariantNamePL" => $defaultWorkoutVariantNamePL,
            "userWorkoutVariantName" => $userWorkoutVariantName,
            "workoutVariantNotes" => $workoutVariantNotes
        );

        $workoutVariants[] = $workoutVariant;
        
        $data .= addWorkoutVariants($workoutVariants);
        unset($workoutVariants);

        [$strengthExercises, $sets] = fetchStrengthExercises($conn, $workoutVariantId);
        $cardioExercises = fetchCardioExercises($conn, $workoutVariantId);
        $otherExercises = fetchOtherExercises($conn, $workoutVariantId);

        $exercises = array_merge($strengthExercises, $cardioExercises, $otherExercises);

        unset($strengthExercises);
        unset($cardioExercises);
        unset($otherExercises);

        usort($exercises, function ($a, $b) {
            $orderA = $a["exerciseOrder"] ?? PHP_INT_MAX;
            $orderB = $b["exerciseOrder"] ?? PHP_INT_MAX;

            return $orderA - $orderB;
        });

        $data .= addExercises($exercises, $sets);
        unset($sets);
        unset($exercises);
        $data .= "\n\n";
    }
    return $data;
}

function fetchStrengthExercises($conn, $workoutVariantId) {
    $sets = array();
    $strengthExercises = array();
    global $databaseError;
    global $strengthExerciseDataQuery;
    if (!$stmt4 = $conn->prepare($strengthExerciseDataQuery)) {
        mainPageHeader($databaseError);
        exit;
    }

    $strengthExerciseId = 0; $strengthExerciseNameEN = ''; $strengthExerciseNamePL = ''; $userStrengthExerciseName = ''; $strengthExerciseNotes = ''; $strengthExerciseOrder = 0;

    $stmt4->bind_param("s", $workoutVariantId);
    $stmt4->execute();
    $stmt4->store_result();
    $stmt4->bind_result($strengthExerciseId, $strengthExerciseNameEN, $strengthExerciseNamePL, $userStrengthExerciseName, $strengthExerciseNotes, $strengthExerciseOrder);

    while ($stmt4->fetch()) {
        $strengthExercise = array(
            "strengthExerciseId" => $strengthExerciseId,
            "exerciseNameEN" => $strengthExerciseNameEN,
            "exerciseNamePL" => $strengthExerciseNamePL,
            "userExerciseName" => $userStrengthExerciseName,
            "exerciseNotes" => $strengthExerciseNotes,
            "isStrengthExercise" => 1,
            "exerciseOrder" => $strengthExerciseOrder
        );

        $strengthExercises[] = $strengthExercise;

        $exerciseSets = fetchSets($conn, $strengthExerciseId);
        $sets = array_merge($sets, $exerciseSets);
    }
    return [$strengthExercises, $sets];
}

function fetchSets($conn, $strengthExerciseId) {
    $sets = array();
    global $databaseError;
    global $setsDataQuery;
    if (!$stmt7 = $conn->prepare($setsDataQuery)) {
        mainPageHeader($databaseError);
        exit;
    }

    $setStrengthExerciseId = 0; $setNumber = 0; $repCount = 0; $weight = 0; $setNotes = ''; $dropset = 0;

    $stmt7->bind_param("s", $strengthExerciseId);
    $stmt7->execute();
    $stmt7->store_result();
    $stmt7->bind_result($setStrengthExerciseId, $setNumber, $repCount, $weight, $setNotes, $dropset);

    while ($stmt7->fetch()) {
        $set = array(
            "exerciseId" => $strengthExerciseId,
            "setNumber" => $setNumber,
            "repCount" => $repCount,
            "weight" => $weight,
            "setNotes" => $setNotes,
            "dropset" => $dropset,
        );
        $sets[] = $set;

        usort($sets, function ($a, $b) {
            $orderA = $a["setNumber"] ?? PHP_INT_MAX;
            $orderB = $b["setNumber"] ?? PHP_INT_MAX;

            return $orderA - $orderB;
        });
    }
    return $sets;
}

function fetchCardioExercises($conn, $workoutVariantId) {
    $cardioExercises = array();
    global $databaseError;
    global $cardioExerciseDataQuery;
    if (!$stmt5 = $conn->prepare($cardioExerciseDataQuery)) {
        mainPageHeader($databaseError);
        exit;
    }

    $cardioExerciseId = 0; $cardioExerciseNameEN = ''; $cardioExerciseNamePL = ''; $userCardioExerciseName = ''; 
    $duration = 0; $distance = 0; $speed = 0; $cardioExerciseNotes = ''; $cardioExerciseOrder = 0;

    $stmt5->bind_param("s", $workoutVariantId);
    $stmt5->execute();
    $stmt5->store_result();
    $stmt5->bind_result($cardioExerciseId, $cardioExerciseNameEN, $cardioExerciseNamePL, $userCardioExerciseName, $duration, $distance, $speed, $cardioExerciseNotes, $cardioExerciseOrder);

    while ($stmt5->fetch()) {
        $cardioExercise = array(
            "exerciseId" => $cardioExerciseId,
            "exerciseNameEN" => $cardioExerciseNameEN,
            "exerciseNamePL" => $cardioExerciseNamePL,
            "userExerciseName" => $userCardioExerciseName,
            "duration" => $duration,
            "distance" => $distance,
            "speed" => $speed,
            "exerciseNotes" => $cardioExerciseNotes,
            "exerciseOrder" => $cardioExerciseOrder
        );
        $cardioExercises[] = $cardioExercise;
    }
    return $cardioExercises;
}

function fetchOtherExercises($conn, $workoutVariantId) {
    $otherExercises = array();
    global $databaseError;
    global $otherExerciseDataQuery;
    if (!$stmt6 = $conn->prepare($otherExerciseDataQuery)) {
        mainPageHeader($databaseError);
    }

    $otherExerciseId = 0; $otherExerciseNameEN = ''; $otherExerciseNamePL = ''; $userOtherExerciseName = ''; $otherExerciseNotes = ''; $otherExerciseOrder = 0;

    $stmt6->bind_param("s", $workoutVariantId);
    $stmt6->execute();
    $stmt6->store_result();
    $stmt6->bind_result($otherExerciseId, $otherExerciseNameEN, $otherExerciseNamePL, $userOtherExerciseName, $otherExerciseNotes, $otherExerciseOrder);

    while ($stmt6->fetch()) {
        $otherExercise = array(
            "exerciseId" => $otherExerciseId,
            "exerciseNameEN" => $otherExerciseNameEN,
            "exerciseNamePL" => $otherExerciseNamePL,
            "userExerciseName" => $userOtherExerciseName,
            "exerciseNotes" => $otherExerciseNotes,
            "exerciseOrder" => $otherExerciseOrder
        );
        $otherExercises[] = $otherExercise;
    }
    return $otherExercises;
}

$conn->close();

fwrite($fileHandle, $data);
fclose($fileHandle);

header("Content-Type: application/octet-stream");
header("Content-Transfer-Encoding: Binary");
header("Content-disposition: attachment; filename=\"$file\"");
header("Content-Length: " . filesize($file));

readfile($file);
unlink($file);