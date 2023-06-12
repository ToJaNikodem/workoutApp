<?php
require 'database.php';

$language = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);

session_start();

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);
if ($conn->connect_errno) {
    echo "Failed to connect to the database: " . $conn->connect_error;
    exit();
}

$user_id = $_SESSION['user_id'];

if ($stmt = $conn->prepare('SELECT workouts.workout_id, workout_names.default_workout_name_en, workout_names.default_workout_name_pl, workout_names.user_workout_name FROM workouts INNER JOIN workout_names ON workouts.workout_name_id = workout_names.workout_name_id WHERE workouts.user_id = ?')) {
    $stmt->bind_param('s', $user_id);
    $stmt->execute();
    $stmt->store_result();
    $stmt->bind_result($workoutId, $defaultWorkoutNameEN, $defaultWorkoutNamePL, $userWorkoutName);

    while ($stmt->fetch()) {
        $result = array(
            'workoutId' => $workoutId,
            'defaultWorkoutNameEN' => $defaultWorkoutNameEN,
            'defaultWorkoutNamePL' => $defaultWorkoutNamePL,
            'userWorkoutName' => $userWorkoutName
        );

        $results[] = $result;
    }

    echo $workoutId; // TO DO, much to change probabli some fliping in the loops

    if ($stmt2 = $conn->prepare('SELECT workout_variants.workout_id, workout_variant_names.default_workout_variant_name_en, workout_variant_names.default_workout_variant_name_pl, workout_variant_names.user_workout_variant_name FROM workout_variants INNER JOIN workout_variant_names ON workout_variants.workout_variant_name_id = workout_variant_names.workout_variant_name_id WHERE workout_variants.workout_id = ?')) {
        $stmt2->bind_param('s', $workoutId);
        $stmt2->execute();
        $stmt2->store_result();
        $stmt2->bind_result($workoutId_Variants, $defaultWorkoutVariantNameEN, $defaultWorkoutVariantNamePL, $userWorkoutVariantName);

        while ($stmt2->fetch()) {
            $result2 = array(
                'workoutId' => $workoutId_Variants,
                'defaultWorkoutVariantNameEN' => $defaultWorkoutVariantNameEN,
                'defaultWorkoutVariantNamePL' => $defaultWorkoutVariantNamePL,
                'userWorkoutVariantName' => $userWorkoutVariantName
            );

    
            $results2[] = $result2;
        }

        // foreach ($results as $result) {
        //     echo "Workout ID: " . $result['workoutId'] . "<br>";
        //     echo "Default Workout Name (EN): " . $result['defaultWorkoutNameEN'] . "<br>";
        //     echo "Default Workout Name (PL): " . $result['defaultWorkoutNamePL'] . "<br>";
        //     echo "User Workout Name: " . $result['userWorkoutName'] . "<br>";
        //     echo "<br>";

        //     foreach ($results2 as $result2) {
        //         if ($result['workoutId'] == $result2['workoutId']) {
        //             echo "Workout Variant ID: " . $result2['workoutId'] . "<br>";
        //             echo "Default Workout Variant Name (EN): " . $result2['defaultWorkoutVariantNameEN'] . "<br>";
        //             echo "Default Workout Variant Name (PL): " . $result2['defaultWorkoutVariantNamePL'] . "<br>";
        //             echo "User Workout Variant Name: " . $result2['userWorkoutVariantName'] . "<br>";
        //             echo "<br>";
        //         }
        //     }
        // }

        $stmt2->close();
        $stmt->close();
        $conn->close();
    } else {
        echo "statment2 error!";
    }
} else {
    echo "statment error!";
}
