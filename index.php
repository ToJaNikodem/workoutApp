<!DOCTYPE html>
<html lang="pl-PL">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Workout</title>
</head>

<body>
    <main>
        <section id="workoutList">
            <?php
            try {
                $conn = new mysqli('localhost', 'root', '', 'workout');
            } catch (Exception $e) {
                echo "Database error";
            }

            $qr = "SELECT * FROM workoutList ";

        
            ?>
        </section>
        <section id="exerciseList">
            <?php

            ?>
        </section>
    </main>
</body>

</html>