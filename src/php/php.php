<?php
require 'databaseLogin.php';
try {
    $conn = new mysqli($servername, $dbUsername, $dbPassword, $dbname);
} catch (Exception $e) {
    echo "Database error";
}
$workoutId = $_GET['id'];

$qr = "SELECT el.`exercise_name` AS exerciseName, el.`description`
FROM `exercise_list` el
INNER JOIN `workout_exercise` we ON el.`id` = we.`exercise_id`
WHERE we.`workout_id` = $workoutId;
";

$result = $conn->query($qr);

$qr = "SELECT workout_name FROM workout_list WHERE id=$workoutId";

$nameResult = $conn->query($qr);

while ($row = $nameResult->fetch_assoc()) {
    $workoutName = $row['workout_name'];
}

if ($result->num_rows > 0) {
    // Fetch the data and store it in an array
    $data = '';
    while ($row = $result->fetch_assoc()) {
        $data .= '<div class="exerciseName">' . $row['exerciseName'] . '</div>';
    }

    // Close the database connection
    $conn->close();

    $dataReturn = array(
        'divs' => $data,
        'workoutName' => $workoutName
    );

    header('Content-Type: application/json');
    echo json_encode($dataReturn);
} else {
    $conn->close();
    echo "No data found";
}
