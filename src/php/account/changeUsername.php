<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";

session_start();

if (!isset($_POST['username'])) {
    echo "post error";
    exit;
}

$username = $_POST['username'];

if (!(strlen($username) >= 4 && strlen($username) <= 32)) {
    echo "validation error";
    exit;
}

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);

if ($conn->connect_errno) {
    echo "Failed to connect to the database: " . $conn->connect_error;
    exit;
}

if (!$stmt = $conn->prepare($usernameAvailabilityQuery)) {
    echo "stmt error";
    exit;
}

$stmt->bind_param('s', $username);
$stmt->execute();
$stmt->store_result();

if ($stmt->num_rows > 0) {
    echo "username already taken";
    exit;
} else {
    $stmt->close();
    if (!$stmt2 = $conn->prepare($changeUsernameQuery)) {
        echo "stmt2 error";
        exit;
    }
    
    $stmt2->bind_param('ss', $username, $_SESSION['user_id']);
    $stmt2->execute();
    $stmt2->close();
    $conn->close();
    $_SESSION['username'] = $username;

    if ($_SESSION['language'] == 'pl') {
        header('Location: /pages/pl/mainPage.php?co=13');
        exit;
    } else {
        header('Location: /pages/en/mainPage.php?co=03');
        exit;
    }
}
