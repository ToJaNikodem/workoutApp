<?php
session_start();
if (!isset($_SESSION['signedIn'])) {
	header('Location: /index.php');
	exit;
}
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Workout</title>
</head>
<body>
    
</body>
</html>