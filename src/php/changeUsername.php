<?php
require "database.php";

$language = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);

session_start();

if (isset($_POST['username'])) {
    $username = $_POST['username'];
    if (strlen($username) >= 4 && strlen($username) <= 32) {
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
                    header('Location: /pages/pl/mainPage.php?er=12');
                    exit();
                } else {
                    header('Location: /pages/en/mainPage.php?er=02');
                    exit();
                }
            } else {
                if ($stmt = $conn->prepare('UPDATE users SET username = ? WHERE user_id = ?')) {
                    $stmt->bind_param('ss', $username, $_SESSION['user_id']);
                    $stmt->execute();
                    if ($language == 'pl') {
                        header('Location: /pages/pl/mainPage.php?co=14');
                        exit();
                    } else {
                        header('Location: /pages/en/mainPage.php?co=04');
                        exit();
                    }
                }
            }
        }
    }
}