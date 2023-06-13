<?php
require "database.php";
require "queries.php";

$language = substr($_SERVER["HTTP_ACCEPT_LANGUAGE"], 0, 2);

session_start();

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);
if ($conn->connect_errno) {
    $data .= "Failed to connect to the database: " . $conn->connect_error;
    exit();
}

$user_id = $_SESSION["user_id"];

$file = $user_id . "export.txt";
$fileHandle = fopen($file, "w");

$data = "";

if ($stmt = $conn->prepare($workoutIdQuery)) {
    $stmt->bind_param("s", $user_id);
    $stmt->execute();
    $stmt->store_result();
    $stmt->bind_result($workoutId);

    while ($stmt->fetch()) {
        if ($stmt2 = $conn->prepare($workoutDataQuery)) {
            $stmt2->bind_param("s", $workoutId);
            $stmt2->execute();
            $stmt2->store_result();
            $stmt2->bind_result($workoutId2, $defaultWorkoutNameEN, $defaultWorkoutNamePL, $userWorkoutName);

            while ($stmt2->fetch()) {
                $result = array(
                    "workoutId" => $workoutId2,
                    "defaultWorkoutNameEN" => $defaultWorkoutNameEN,
                    "defaultWorkoutNamePL" => $defaultWorkoutNamePL,
                    "userWorkoutName" => $userWorkoutName
                );

                $results[] = $result;

                foreach ($results as $result) {
                    if (!empty($result["defaultWorkoutNameEN"])) {
                        $data .= $result["defaultWorkoutNameEN"];
                    }
                    if (!empty($result["defaultWorkoutNamePL"])) {
                        $data .= "; " . $result["defaultWorkoutNamePL"];
                    }
                    if (!empty($result["userWorkoutName"])) {
                        $data .= "; " . $result["userWorkoutName"];
                    }
                    $data .= "\n";
                }
                unset($results);

                if ($stmt3 = $conn->prepare($workoutVariantDataQuery)) {
                    $stmt3->bind_param("s", $workoutId);
                    $stmt3->execute();
                    $stmt3->store_result();
                    $stmt3->bind_result($workoutVariantId, $defaultWorkoutVariantNameEN, $defaultWorkoutVariantNamePL, $userWorkoutVariantName, $workoutVariantNotes);

                    while ($stmt3->fetch()) {
                        $result2 = array(
                            "workoutVariantId" => $workoutVariantId,
                            "defaultWorkoutVariantNameEN" => $defaultWorkoutVariantNameEN,
                            "defaultWorkoutVariantNamePL" => $defaultWorkoutVariantNamePL,
                            "userWorkoutVariantName" => $userWorkoutVariantName,
                            "workoutVariantNotes" => $workoutVariantNotes
                        );

                        $results2[] = $result2;

                        foreach ($results2 as $result2) {
                            if (!empty($result2["defaultWorkoutVariantNameEN"])) {
                                $data .= "   - " . $result2["defaultWorkoutVariantNameEN"];
                            }
                            if (!empty($result2["defaultWorkoutVariantNamePL"])) {
                                $data .= "; " . $result2["defaultWorkoutVariantNamePL"];
                            }
                            if (!empty($result2["userWorkoutVariantName"])) {
                                $data .= "; " . $result2["userWorkoutVariantName"];
                            }
                            if (!empty($result2["workoutVariantNotes"])) {
                                $data .= "   Notes: " . $result2["workoutVariantNotes"];
                            }
                            $data .= "\n";
                        }
                        unset($results2);


                        if ($stmt4 = $conn->prepare($strengthExerciseDataQuery)) {
                            $stmt4->bind_param("s", $workoutVariantId);
                            $stmt4->execute();
                            $stmt4->store_result();
                            $stmt4->bind_result($strengthExerciseId, $strengthExerciseNameEN, $strengthExerciseNamePL, $userStrengthExerciseName, $strengthExerciseNotes, $strengthExerciseOrder);

                            while ($stmt4->fetch()) {
                                $result3 = array(
                                    "strengthExerciseId" => $strengthExerciseId,
                                    "exerciseNameEN" => $strengthExerciseNameEN,
                                    "exerciseNamePL" => $strengthExerciseNamePL,
                                    "userExerciseName" => $userStrengthExerciseName,
                                    "exerciseNotes" => $strengthExerciseNotes,
                                    "isStrengthExercise" => 1,
                                    "exerciseOrder" => $strengthExerciseOrder
                                );

                                $results3[] = $result3;


                                if ($stmt7 = $conn->prepare($setsDataQuery)) {
                                    $stmt7->bind_param("s", $strengthExerciseId);
                                    $stmt7->execute();
                                    $stmt7->store_result();
                                    $stmt7->bind_result($setStrengthExerciseId, $setNumber, $repCount, $weight, $setNotes, $dropset);

                                    while ($stmt7->fetch()) {
                                        $result6 = array(
                                            "exerciseId" => $strengthExerciseId,
                                            "setNumber" => $setNumber,
                                            "repCount" => $repCount,
                                            "weight" => $weight,
                                            "setNotes" => $setNotes,
                                            "dropset" => $dropset,
                                        );
                                        $results6[] = $result6;

                                        usort($results6, function ($a, $b) {
                                            $orderA = $a["setNumber"] ?? PHP_INT_MAX;
                                            $orderB = $b["setNumber"] ?? PHP_INT_MAX;

                                            return $orderA - $orderB;
                                        });
                                    }
                                }
                            }
                            if ($stmt5 = $conn->prepare($cardioExerciseDataQuery)) {
                                $stmt5->bind_param("s", $workoutVariantId);
                                $stmt5->execute();
                                $stmt5->store_result();
                                $stmt5->bind_result($cardioExerciseId, $cardioExerciseNameEN, $cardioExerciseNamePL, $userCardioExerciseName, $duration, $distance, $speed, $cardioExerciseNotes, $cardioExerciseOrder);

                                while ($stmt5->fetch()) {
                                    $result4 = array(
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
                                    $results4[] = $result4;
                                }

                                if ($stmt6 = $conn->prepare($otherExerciseDataQuery)) {
                                    $stmt6->bind_param("s", $workoutVariantId);
                                    $stmt6->execute();
                                    $stmt6->store_result();
                                    $stmt6->bind_result($otherExerciseId, $otherExerciseNameEN, $otherExerciseNamePL, $userOtherExerciseName, $otherExerciseNotes, $otherExerciseOrder);

                                    while ($stmt6->fetch()) {
                                        $result5 = array(
                                            "exerciseId" => $otherExerciseId,
                                            "exerciseNameEN" => $otherExerciseNameEN,
                                            "exerciseNamePL" => $otherExerciseNamePL,
                                            "userExerciseName" => $userOtherExerciseName,
                                            "exerciseNotes" => $otherExerciseNotes,
                                            "exerciseOrder" => $otherExerciseOrder
                                        );
                                        $results5[] = $result5;
                                    }

                                    if (isset($results3) && isset($results4) && isset($results5)) {

                                        $exercises = array_merge($results3, $results4, $results5);

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
                                            foreach ($results6 as $set) {
                                                if (!empty($exercise["strengthExerciseId"])) {
                                                    if ($set["exerciseId"] == $exercise["strengthExerciseId"] && $exercise["isStrengthExercise"] == 1) {
                                                        $data .= "      ";
                                                        $data .= "set " . $set["setNumber"] . ". reps: " . $set["repCount"] . "; weight: " . $set["weight"] . "; ";
                                                        if ($set["dropset"] == 1){
                                                            $data .= "dropset ";
                                                        }
                                                        $data .= "   Notes: " . $set["setNotes"] . "\n";
                                                    }
                                                }
                                            }
                                        }
                                        $data .= "\n\n";
                                    }
                                }
                            }
                        }
                        unset($results3);
                        unset($results4);
                        unset($results5);
                        unset($exercises);
                    }
                }
            }
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

header("Location: /index.php");