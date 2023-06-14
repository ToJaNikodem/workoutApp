<?php
$rootDirectory = $_SERVER['DOCUMENT_ROOT'];
require "database.php";
require "queries.php";
require "smtpCredentials.php";
require $rootDirectory . '/src/PHPMailer/src/PHPMailer.php';
require $rootDirectory . '/src/PHPMailer/src/SMTP.php';

$language = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);

use PHPMailer\PHPMailer\PHPMailer;

if (isset($_POST['email'])) {
    $email = $_POST['email'];
    if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);
        if ($conn->connect_errno) {
            echo "Failed to connect to the database: " . $conn->connect_error;
            exit();
        }
        if ($stmt = $conn->prepare($emailAvailabilityQuery)) {
            $stmt->bind_param('s', $email);
            $stmt->execute();
            $stmt->store_result();
            $stmt->bind_result($userId);
            $stmt->fetch();
            $userId = $userId;
            if ($stmt->num_rows > 0) {
                $token = generateToken();
                $currentTime = new DateTime();
                $expiryDate = date_add($currentTime, new DateInterval('P1D'));
                $expiryDate = $expiryDate->format('Y-m-d H:i:s');
                if ($stmt2 = $conn->prepare($tokenQuery)) {
                    $stmt2->bind_param('sss', $userId, $token, $expiryDate);
                    $stmt2->execute();

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

                    if ($language == 'pl') {
                        $mail->Subject = 'Simple Workout Reset Hasła';
                        $mail->Body = 'Twój link resetowania hasła' . 'localhost/pages/pl/';
                    } else {
                        $mail->Subject = 'Simple Workout Password Reset';
                        $mail->Body = 'Your password reset link: ' . 'localhost/pages/en/changePassword.php?token=' . $token;
                    }

                    $mail->send();

                    header("Location: /index.php");
                }
            } else {
                echo "email doesn't exist in database";
            }
        }
    }
}

function generateToken($length = 32)
{
    $token = bin2hex(random_bytes($length));
    return $token;
}
