<?php
require "database.php";

session_start();

if (isset($_POST['usernameOrEmail']) && isset($_POST['password'])) {
    $usernameOrEmail = $_POST['usernameOrEmail'];
    $password = $_POST['password'];

    $conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);
    if ($conn->connect_errno) {
        echo "Failed to connect to the database: " . $conn->connect_error;
        exit();
    }

    if ($stmt = $conn->prepare('SELECT user_id, username, hashed_password, language FROM users WHERE username = ? OR email = ?')) {
        $stmt->bind_param('ss', $usernameOrEmail, $usernameOrEmail);
        $stmt->execute();
        $stmt->store_result();
        
        if ($stmt->num_rows > 0) {
            $stmt->bind_result($user_id, $username, $hashedPassword, $language);
            $stmt->fetch();
            if (password_verify($password, $hashedPassword)) {
                session_regenerate_id();
                $_SESSION['signedIn'] = TRUE;
                $_SESSION['user_id'] = $user_id;
                $_SESSION['username'] = $username;
                $_SESSION['lang'] = $language;
                header('Location: /pages/' . $_SESSION['lang'] . '/mainPage.php');
            } else {
                echo 'Incorrect username and/or password!';
            }
        } else {
            echo 'Incorrect username and/or password!';
        }

        $stmt->close();
        $conn->close();
    }
}
