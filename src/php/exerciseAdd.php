<?php
require 'databaseLogin.php';

if(!isset($_POST['exerciseName']) && !isset($_POST['category']) && !isset($_POST['description'])) {
    
} else {
    $exerciseName = $_POST['exerciseName'];
    $category = $_POST['category'];
    $description = $_POST['description'];

    $conn = new mysqli($servername, $dbUsername, $dbPassword, $dbname);

    $qr = "INSERT INTO exercise_list (exercise_name, muscle_worked, description) VALUES ($exerciseName, $category, $description)";

    $conn->query($qr);
    $conn->close();
    header('Location: /workoutApp/index.php');
}
?>