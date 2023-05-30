<?php
require './src/php/databaseLogin.php';
?>
<!DOCTYPE html>
<html lang="pl-PL">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="src/css/style.css">
    <title>Workout</title>
</head>

<body>
    <header>

    </header>
    <main>
        <section id="workoutList">
            <h2>Lista planów treningowych</h2>
            <?php
            try {
                $conn = new mysqli($servername, $dbUsername, $dbPassword, $dbname);
            } catch (Exception $e) {
                echo "Database error";
            }

            $qr = "SELECT * FROM workout_list;";

            $result = $conn->query($qr);
            while ($row = $result->fetch_assoc()) {
                echo '<div onclick="exerciseListChanger(' . $row['id'] . ')" class="workoutName">' . $row['workout_name'] . '</div>';
            }
            ?>
        </section>
        <section id="exerciseList">
            <h2 id="exerciseListHeader">Lista wszystkich ćwiczeń</h2>
            <div id="exerciseContainer">
                <?php
                $qr = "SELECT exercise_name FROM exercise_list;"; 

                $result = $conn->query($qr);
                while ($row = $result->fetch_assoc()) {
                    echo '<div class="exerciseName">' . $row['exercise_name'] . '</div>';
                }
                ?>
            </div>
            <div id="addExerciseButton">
                <span></span>
                <span></span>
            </div>
        </section>
    </main>
    <div id="exerciseAddForm">
        <h5>Dodaj nowe ćwiczenie</h5>
        <form action="./src/php/exerciseAdd.php" method="POST">
            <label for="exerciseName">Nazwa ćwiczenia: </label><input id="exerciseName" type="text" name="exerciseName" require><br>
            <label for="category">Kategoria ćwiczenia: </label><input id="category" type="text" name="category" require><br>
            <label for="description">Opis ćwiczenia: </label><input id="description" type="text" name="description" require><br>
            <input type="submit" value="Dodaj">
        </form>
    </div>
    <script src="src/js/script.js"></script>
</body>

</html>
<?php
$conn->close();
?>