<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";

session_start();

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);
if ($conn->connect_errno) {
    echo "Failed to connect to the database: " . $conn->connect_error;
    exit();
}

$currentTime = new DateTime();
$currentTime = $currentTime->format('Y-m-d_H-i-s');

$user_id = $_SESSION['user_id'];

$file = $user_id . '_' . $currentTime . "_export.txt";
$fileHandle = fopen($file, "w");

$data = '';

if (!$stmt = $conn->prepare($workoutIdQuery)) {
    echo "stmt error";
    exit;
}

$stmt->bind_param("s", $user_id);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($workoutId);

while ($stmt->fetch()) {
    if (!$stmt2 = $conn->prepare($workoutDataQuery)) {
        echo "stmt2 error";
        exit;
    }

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
        unset($workouts);

        if (!$stmt3 = $conn->prepare($workoutVariantDataQuery)) {
            echo "stmt3 error";
            exit;
        }

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
            $strengthExercises = array();
            $cardioExercises = array();
            $otherExercises = array();

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
            unset($workoutVariants);


            if (!$stmt4 = $conn->prepare($strengthExerciseDataQuery)) {
                echo "stmt4 error";
                exit;
            }

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


                if (!$stmt7 = $conn->prepare($setsDataQuery)) {
                    echo "stmt7 error";
                    exit;
                }

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
            }

            if (!$stmt5 = $conn->prepare($cardioExerciseDataQuery)) {
                echo "stmt5 error";
                exit;
            }

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

            if (!$stmt6 = $conn->prepare($otherExerciseDataQuery)) {
                echo "stmt6 error";
            }

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

            $exercises = array_merge($strengthExercises, $cardioExercises, $otherExercises);

            unset($strengthExercises);
            unset($cardioExercises);
            unset($otherExercises);

            usort($exercises, function ($a, $b) {
                $orderA = $a["exerciseOrder"] ?? PHP_INT_MAX;
                $orderB = $b["exerciseOrder"] ?? PHP_INT_MAX;

                return $orderA - $orderB;
            });

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
                foreach ($sets as $set) {
                    if (!empty($exercise["strengthExerciseId"])) {
                        if ($set["exerciseId"] == $exercise["strengthExerciseId"] && $exercise["isStrengthExercise"] == 1) {
                            $data .= "         ";
                            $data .= "set " . $set["setNumber"] . ". reps: " . $set["repCount"] . "; weight: " . $set["weight"] . "; ";
                            if ($set["dropset"] == 1) {
                                $data .= "dropset ";
                            }
                            $data .= "   Notes: " . $set["setNotes"] . "\n";
                        }
                    }
                }
            }
            unset($exercises);
            $data .= "\n\n";
        }
    }
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