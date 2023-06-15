<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";

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
        if ($stmt = $conn->prepare($usernameAvailabilityQuery)) {
            $stmt->bind_param('s', $username);
            $stmt->execute();
            $stmt->store_result();
            if ($stmt->num_rows > 0) {
                if ($language == 'pl') {
                    header('Location: /pages/pl/mainPage.php?er=14');
                    exit();
                } else {
                    header('Location: /pages/en/mainPage.php?er=04');
                    exit();
                }
            } else {
                if ($stmt = $conn->prepare($changeUsernameQuery)) {
                    $stmt->bind_param('ss', $username, $_SESSION['user_id']);
                    $stmt->execute();
                    $_SESSION['username'] = $username;
                    if ($language == 'pl') {
                        header('Location: /pages/pl/mainPage.php?co=13');
                        exit();
                    } else {
                        header('Location: /pages/en/mainPage.php?co=03');
                        exit();
                    }
                }
            }
        }
    }
}
