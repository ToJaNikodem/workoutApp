<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";
require $rootDirectory . "/src/php/session/codes.php";

session_start();

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);

if ($conn->connect_errno) {
    signUpHeader($databaseError);
    exit;
}

fetchWorkouts($conn);


function fetchWorkouts($conn) {
    global $workoutsDataQuery;
    global $databaseError;
    $user_id = $_SESSION['user_id'];
    if (!$stmt = $conn->prepare($workoutsDataQuery)) {
        mainPageHeader($databaseError);
        exit;
    }

    $defaultWorkoutNameEN = ''; $defaultWorkoutNamePL = ''; $userWorkoutName = ''; $favorite = 0; $workoutId = 0;

    $stmt->bind_param("s", $user_id);
    $stmt->execute();
    $stmt->store_result();
    $stmt->bind_result($defaultWorkoutNameEN, $defaultWorkoutNamePL, $userWorkoutName, $favorite, $workoutId);

    while ($stmt->fetch()) {
        $workout = array(
            "defaultWorkoutNameEN" => $defaultWorkoutNameEN,
            "defaultWorkoutNamePL" => $defaultWorkoutNamePL,
            "userWorkoutName" => $userWorkoutName,
            "favorite" => $favorite,
            "workoutId" => $workoutId,
        );
        $workouts[] = $workout;
    }
    displayWorkouts($workouts);
}

function displayWorkouts($workouts) {
    foreach ($workouts as $workout) {
        echo '<div class="workout whiteWindow" data-workout-id="' . $workout['workoutId'] . '">';
        if ($workout['favorite'] == 1) {
            echo '<img src="/src/img/star.svg" class="favorite star" data-favorite="1">';
        } else {
            echo '<img src="/src/img/starEmpty.svg" class="star" data-favorite="0">';
        }
        if (!empty($workout['userWorkoutName'])) {
            echo $workout['userWorkoutName'];
        } else if ($_SESSION['language'] == 'pl') {
            echo $workout['defaultWorkoutNamePL'];
        } else {
            echo $workout['defaultWorkoutNameEN'];
        }
        echo '<div class="arrow"></div>';
        echo '</div>';
    }
}