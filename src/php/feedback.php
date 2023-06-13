<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require "smtpCredentials.php";
require $rootDirectory . '/src/PHPMailer/src/PHPMailer.php';
require $rootDirectory . '/src/PHPMailer/src/SMTP.php';

$language = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);

use PHPMailer\PHPMailer\PHPMailer;

if (isset($_POST['subject']) && isset($_POST['body'])) {
    $subject = $_POST['subject'];
    $body = $_POST['body'];
    
    
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
    
    $mail->Subject = 'WorkoutApp Feedback: ' . $subject;
    $mail->Body = $body;
    
    $mail->send();

    if ($language == 'pl') {
        header('Location: /pages/pl/mainPage.php?co=14');
        exit();
    } else {
        header('Location: /pages/en/mainPage.php?co=04');
        exit();
    }
}