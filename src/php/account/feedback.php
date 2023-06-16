<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require $rootDirectory . '/src/php/mail/smtpCredentials.php';
require $rootDirectory . '/src/PHPMailer/src/PHPMailer.php';
require $rootDirectory . '/src/PHPMailer/src/SMTP.php';
require $rootDirectory . "/src/php/session/sessionFunciotns.php";
require $rootDirectory . "/src/php/session/codes.php";

session_start();

use PHPMailer\PHPMailer\PHPMailer;

if (!isset($_POST['subject']) && !isset($_POST['body'])) {
    mainPageHeader($feedbackInvalidData);
    exit;
}

$subject = $_POST['subject'];
$body = $_POST['body'];

if (!($subject >= 4 && $subject <= 128 && $body >= 4 && $body <= 10240)) {
    mainPageHeader($feedbackInvalidData);
    exit;
}


$mail = new PHPMailer();

$mail->isSMTP();
$mail->Host = $smtpHost;
$mail->SMTPAuth = true;
$mail->Username = $smtpUsername;
$mail->Password = $smtpPassword;
$mail->SMTPSecure = 'tls';
$mail->Port = $smtpPort;

$mail->setFrom('feedbackmail@host795037.xce.pl');
$mail->addAddress('feedbackmail@host795037.xce.pl');

$mail->Subject = 'Feedback from: ' . $_SESSION['user_id'] . ' : ' . $_SESSION['username'] . ' Subject: ' . $subject;
$mail->Body = $body;

$mail->send();

mainPageHeader($feedbackSendSuccessfuly);
