<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../src/css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <title>Sign in</title>
</head>

<body>
    <div class="container">
        <main class="authorizationBox whiteWindow">
            <form action="" class="authorizationForm">
                <h2>Sign in</h2>
                <p class="textLabel">Username or email</p>
                <input type="text" name="username" class="standardInput">

                <p class="textLabel">Password</p>
                <input type="password" name="password" class="standardInput">

                <input type="submit" value="Continue" class="submitButton">
            </form>
            <p class="textLabel">No account? <a href="signUp.php">Sign Up</a></p>
        </main>
    </div>
    <script src="../src/js/style.js"></script>
</body>

</html>