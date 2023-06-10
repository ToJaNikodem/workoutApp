<?php
require "database.php";

$language = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);

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

        if ($stmt = $conn->prepare('SELECT user_id FROM users WHERE username = ?')) {
            $stmt->bind_param('s', $username);
            $stmt->execute();
            $stmt->store_result();
            if ($stmt->num_rows > 0) {
                if ($language == 'pl') {
                    header('Location: /pages/pl/signUp.php?er=12');
                    exit();
                } else {
                    header('Location: /pages/en/signUp.php?er=02');
                    exit();
                }
            } else {
                if ($stmt = $conn->prepare('SELECT user_id FROM users WHERE email = ?')) {
                    $stmt->bind_param('s', $email);
                    $stmt->execute();
                    $stmt->store_result();
                    if ($stmt->num_rows > 0) {
                        if ($language == 'pl') {
                            header('Location: /pages/pl/signUp.php?er=13');
                            exit();
                        } else {
                            header('Location: /pages/en/signUp.php?er=03');
                            exit();
                        }
                    } else {
                        if ($stmt = $conn->prepare('INSERT INTO users (username, hashed_password, email) VALUES (?, ?, ?)')) {
                            $hashedPassword = password_hash($password, PASSWORD_ARGON2ID);
                            $stmt->bind_param('sss', $username, $hashedPassword, $email);
                            $stmt->execute();
                            $stmt->close();
                            if ($language == 'pl') {
                                header('Location: /pages/pl/signIn.php?co=11');
                                exit();
                            } else {
                                header('Location: /pages/en/signIn.php?co=01');
                                exit();
                            }
                        }
                    }
                }
            }
            $conn->close();
        }
    }
}
