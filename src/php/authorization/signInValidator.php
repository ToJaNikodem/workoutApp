<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";

$language = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);

session_start();

if (isset($_POST['usernameOrEmail']) && isset($_POST['password'])) {
    $usernameOrEmail = $_POST['usernameOrEmail'];
    $password = $_POST['password'];

    if (strlen($usernameOrEmail) >= 4 && strlen($usernameOrEmail) <= 256 && strlen($password) >= 8 && strlen($password) <= 64)

    $conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);
    if ($conn->connect_errno) {
        echo "Failed to connect to the database: " . $conn->connect_error;
        exit();
    }

    if ($stmt = $conn->prepare($signInQuery)) {
        $stmt->bind_param('ss', $usernameOrEmail, $usernameOrEmail);
        $stmt->execute();
        $stmt->store_result();
        
        if ($stmt->num_rows > 0) {
            $stmt->bind_result($user_id, $username, $hashedPassword);
            $stmt->fetch();
            if (password_verify($password, $hashedPassword)) {
                session_regenerate_id();
                $_SESSION['signedIn'] = TRUE;
                $_SESSION['user_id'] = $user_id;
                $_SESSION['username'] = $username;
                $_SESSION['language'] = $language;
                header('Location: /index.php');
            } else {
                if ($language == 'pl') {
                    header('Location: /pages/pl/signIn.php?er=11');
                    exit();
                } else {
                    header('Location: /pages/en/signIn.php?er=01');
                    exit();
                }
            }
        } else {
            if ($language == 'pl') {
                header('Location: /pages/pl/signIn.php?er=11');
                exit();
            } else {
                header('Location: /pages/en/signIn.php?er=01');
                exit();
            }
        }
        $stmt->close();
        $conn->close();
    }
}
