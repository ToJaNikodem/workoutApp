<?php
require "database.php";
require "queries.php";

$language = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);

if (isset($_POST['password']) && isset($_POST['token'])) {
    $password = $_POST['password'];
    $hashedPassword = password_hash($password, PASSWORD_ARGON2ID);
    $token = $_POST['token'];
    echo $token;
    $conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);
    if ($conn->connect_errno) {
        echo "Failed to connect to the database: " . $conn->connect_error;
        exit();
    }
    if ($stmt = $conn->prepare($validateToken)) {
        $stmt->bind_param('s', $token);
        $stmt->execute();
        $stmt->store_result();
        $stmt->bind_result($userId, $expiryDate);
        if ($stmt->num_rows() > 0) {
            $stmt->fetch();
            $userId = $userId;
            $expiryDate = $expiryDate;
            $expiryDate = DateTime::createFromFormat('Y-m-d H:i:s', $expiryDate);

            $currentTime = new DateTime();
            $valid = $currentTime->diff($expiryDate);
            if ($valid) {
                if ($stmt2 = $conn->prepare($changePassword)) {
                    $stmt2->bind_param('ss', $hashedPassword, $userId);
                    $stmt2->execute();

                    header("Location: /index.php");
                } else {
                    echo "statement2 fail";
                }
            } else {
                echo "not valid";
            }
        } else {
            echo "empty statement";
        }
    } else {
        echo "statement";
    }
}
