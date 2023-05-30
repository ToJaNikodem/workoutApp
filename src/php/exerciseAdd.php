<?php
require 'databaseLogin.php';

$exerciseName = 'NULL';
$category = 'NULL';
$description = 'NULL';

if (isset($_POST['exerciseName'])) {
    $exerciseName = $_POST['exerciseName'];
}
if (isset($_POST['category'])) {
    $category = $_POST['category'];
}
if (isset($_POST['description'])) {
    $description = $_POST['description'];
}
try {
    $conn = new mysqli($servername, $dbUsername, $dbPassword, $dbname);
} catch (Exception $e) {
    echo 'Database error';
}

$qr = "INSERT INTO exercise_list (exercise_name, muscle_worked, description) VALUES ('$exerciseName', '$category', '$description')";

$conn->query($qr);
$conn->close();
header('Location: /workoutApp/index.php');
