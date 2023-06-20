<?php
// signInValidator.php
$signInQuery = 'SELECT user_id, username, hashed_password FROM users WHERE username = ? OR email = ?';

// signUpValidator.php
$usernameAvailabilityQuery = 'SELECT user_id FROM users WHERE username = ?';
$emailAvailabilityQuery = 'SELECT user_id FROM users WHERE email = ?';
$signUpQuery = 'INSERT INTO users (username, hashed_password, email) VALUES (?, ?, ?)';

// changeUsername.php
$changeUsernameQuery = 'UPDATE users SET username = ? WHERE user_id = ?';

// deleteAccount.php
$deleteAccountQuery = 'DELETE FROM users WHERE user_id = ?';

// export.php
$workoutIdQuery = 'SELECT workouts.workout_id FROM workouts WHERE workouts.user_id = ?';
$workoutDataQuery = 'SELECT workouts.workout_id, workout_names.default_workout_name_en, workout_names.default_workout_name_pl, workout_names.user_workout_name FROM workouts INNER JOIN workout_names ON workouts.workout_name_id = workout_names.workout_name_id WHERE workouts.workout_id = ?';
$workoutVariantDataQuery = 'SELECT workout_variants.workout_variant_id, workout_variant_names.default_workout_variant_name_en, workout_variant_names.default_workout_variant_name_pl, workout_variant_names.user_workout_variant_name, workout_variants.workout_variant_notes FROM workout_variants INNER JOIN workouts ON workout_variants.workout_id = workouts.workout_id INNER JOIN workout_variant_names ON workout_variants.workout_variant_name_id = workout_variant_names.workout_variant_name_id WHERE workout_variants.workout_id = ?';
$strengthExerciseDataQuery = 'SELECT strength_exercises.strength_exercise_id, strength_exercise_names.default_strength_exercise_name_en, strength_exercise_names.default_strength_exercise_name_pl, strength_exercise_names.user_strength_exercise_name, strength_exercises.strength_exercise_notes, strength_exercise_workout_variant.exercise_order FROM strength_exercises INNER JOIN strength_exercise_names ON strength_exercises.strength_exercise_name_id = strength_exercise_names.strength_exercise_name_id INNER JOIN strength_exercise_workout_variant ON strength_exercise_workout_variant.strength_exercise_id = strength_exercises.strength_exercise_id WHERE strength_exercise_workout_variant.workout_variant_id = ?';
$setsDataQuery = 'SELECT sets.strength_exercise_id, sets.set_number, sets.rep_count, sets.weight, sets.set_notes, sets.dropset FROM sets INNER JOIN strength_exercises ON sets.strength_exercise_id = strength_exercises.strength_exercise_id WHERE sets.strength_exercise_id = ?';
$cardioExerciseDataQuery = 'SELECT cardio_exercises.cardio_exercise_id, cardio_exercise_names.default_cardio_exercise_name_en, cardio_exercise_names.default_cardio_exercise_name_pl, cardio_exercise_names.user_cardio_exercise_name, cardio_exercises.duration, cardio_exercises.distance, cardio_exercises.speed, cardio_exercises.cardio_exercise_notes, cardio_exercise_workout_variant.exercise_order FROM cardio_exercises INNER JOIN cardio_exercise_names ON cardio_exercises.cardio_exercise_name_id = cardio_exercise_names.cardio_exercise_name_id INNER JOIN cardio_exercise_workout_variant ON cardio_exercise_workout_variant.cardio_exercise_id = cardio_exercises.cardio_exercise_id WHERE cardio_exercise_workout_variant.workout_variant_id = ?';
$otherExerciseDataQuery = 'SELECT other_exercises.other_exercise_id, other_exercise_names.default_other_exercise_name_en, other_exercise_names.default_other_exercise_name_pl, other_exercise_names.user_other_exercise_name, other_exercises.other_exercise_notes, other_exercise_workout_variant.exercise_order FROM other_exercise_workout_variant INNER JOIN other_exercises ON other_exercise_workout_variant.other_exercise_id = other_exercises.other_exercise_id INNER JOIN other_exercise_names ON other_exercises.other_exercise_name_id = other_exercise_names.other_exercise_name_id WHERE other_exercise_workout_variant.workout_variant_id = ?';

// resetPasswordValidator.php
$tokenQuery = 'INSERT INTO reset_tokens (user_id, token, expiry_date) VALUES (?, ?, ?)';

// changePasswordValidator.php
$changePassword = 'UPDATE users SET hashed_password = ? WHERE user_id = ?';
$validateToken = 'SELECT user_id, expiry_date FROM reset_tokens WHERE token = ?';

// workouts.php
$workoutsDataQuery = 'SELECT workout_names.default_workout_name_en, workout_names.default_workout_name_pl, workout_names.user_workout_name, workouts.favorite, workouts.workout_id FROM workouts INNER JOIN workout_names ON workouts.workout_name_id = workout_names.workout_name_id INNER JOIN users ON workouts.user_id = users.user_id WHERE workouts.user_id = ? ORDER BY workouts.favorite DESC';
$checkWorkoutOwnership = 'SELECT workouts.user_id FROM workouts INNER JOIN users ON workouts.user_id = users.user_id WHERE workouts.workout_id = ?';
$changeWorkoutFavorite = 'UPDATE workouts SET favorite = ? WHERE workout_id = ?';