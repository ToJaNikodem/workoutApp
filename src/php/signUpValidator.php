<?php
require "database.php";

if (isset($_POST['username']) && isset($_POST['email']) && isset($_POST['password'])) {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    if (strlen($username) >= 4 && strlen($username) <= 32 && strlen($password) >= 8 && strlen($password) <= 64 && filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);
        if ($conn->connect_errno) {
            echo "Failed to connect to the database: " . $conn->connect_error;
            exit();
        }

        if ($stmt = $conn->prepare('SELECT user_id FROM users WHERE username = ? OR email = ?')) {
            $stmt->bind_param('ss', $username, $email);
            $stmt->execute();
            $stmt->store_result();
            if ($stmt->num_rows > 0) {
                echo 'Username or email exist, please choose another!';
            } else {
                if ($stmt = $conn->prepare('INSERT INTO users (username, hashed_password, email) VALUES (?, ?, ?)')) {
                    $hashedPassword = password_hash($password, PASSWORD_ARGON2ID);
                    $stmt->bind_param('sss', $username, $hashedPassword, $email);
                    $stmt->execute();
                    $stmt->close();
                    echo 'You have successfully registered! You can now login!';
                } else {
                    echo 'Could not prepare statement!';
                }
            }
            $conn->close();
        } else {
            echo "Invalid data";
        }
    }
}
