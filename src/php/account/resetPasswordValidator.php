<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . "/src/php/database/database.php";
require $rootDirectory . "/src/php/database/queries.php";
require $rootDirectory . "/src/php/mail/smtpCredentials.php";
require $rootDirectory . '/src/PHPMailer/src/PHPMailer.php';
require $rootDirectory . '/src/PHPMailer/src/SMTP.php';

use PHPMailer\PHPMailer\PHPMailer;

if (!isset($_POST['email'])) {
    echo "post error";
    exit;
}

$email = $_POST['email'];

if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    echo "validation error";
    exit;
}

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);

if ($conn->connect_errno) {
    echo "Failed to connect to the database: " . $conn->connect_error;
    exit;
}

if (!$stmt = $conn->prepare($emailAvailabilityQuery)) {
    echo "stmt error";
    exit;
}

$stmt->bind_param('s', $email);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($userId);
$stmt->fetch();
$userId = $userId;

if (!$stmt->num_rows > 0) {
    echo "email doesn't exist in the database";
    exit;
}

$stmt->close();
$token = generateToken();
$currentTime = new DateTime();
$expiryDate = date_add($currentTime, new DateInterval('P1D'));
$expiryDate = $expiryDate->format('Y-m-d H:i:s');

if (!$stmt2 = $conn->prepare($tokenQuery)) {
    echo "stmt2 error";
    exit;
}


$stmt2->bind_param('sss', $userId, $token, $expiryDate);
$stmt2->execute();
$stmt2->close();
$conn->close();

$mail = new PHPMailer();

$mail->isSMTP();
$mail->Host = $smtpHost;
$mail->SMTPAuth = true;
$mail->Username = $smtpUsername;
$mail->Password = $smtpPassword;
$mail->SMTPSecure = 'tls';
$mail->Port = $smtpPort;

$mail->setFrom('feedbackmail@host795037.xce.pl');
$mail->addAddress($email);

if ($_SESSION['language'] == 'pl') {
    $mail->Subject = 'Simple Workout Reset Hasła';
    $mail->Body = 'Twój link resetowania hasła' . 'localhost/pages/pl/';
} else {
    $mail->Subject = 'Simple Workout Password Reset';
    $mail->Body = 'Your password reset link: ' . 'localhost/pages/en/changePassword.php?token=' . $token;
}

$mail->send();

header("Location: /index.php");

function generateToken($length = 64) {
    $token = bin2hex(random_bytes($length / 2));
    return $token;
}