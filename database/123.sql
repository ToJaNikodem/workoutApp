-- exercise_list
INSERT INTO exercise_list (exercise_name, exercise_description, number_of_sets, number_of_reps, last_time_performed) VALUES
('Push-ups', 'Standard push-up exercise', 3, 10, '2023-05-29'),
('Squats', 'Bodyweight squat exercise', 3, 12, '2023-05-30'),
('Plank', 'Core stabilization exercise', 1, 60, '2023-05-31'),
('Bicep Curls', 'Dumbbell bicep curl exercise', 3, 8, '2023-05-28');

-- muscles
INSERT INTO muscles (muscle_name) VALUES
('Chest'),
('Quadriceps'),
('Core'),
('Biceps');

-- exercise_muscles
INSERT INTO exercise_muscles (exercise_id, muscle_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- users
INSERT INTO users (username, email, password) VALUES
('john_doe', 'john@example.com', 'password123'),
('jane_smith', 'jane@example.com', 'password456'),
('bob_jackson', 'bob@example.com', 'password789');


-- workout_session_logs
INSERT INTO workout_session_logs (user_id, date, notes) VALUES
(1, '2023-05-30', 'Great workout today!'),
(2, '2023-05-29', 'Feeling sore after the core workout'),
(3, '2023-05-28', 'Enjoyed the arm workout'),
(1, '2023-05-27', NULL);

-- exercise_logs
INSERT INTO exercise_logs (session_id, exercise_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4);

-- set_logs
INSERT INTO set_logs (ex_log_id, set_number, number_of_reps, weight) VALUES
(1, 1, 10, 0),
(1, 2, 10, 0),
(1, 3, 10, 0),
(2, 1, 60, 0);

-- workout_list
INSERT INTO workout_list (user_id, workout_name, workout_description, is_recurring, recurring_days, last_time_performed) VALUES
(1, 'Full Body Workout', 'A complete workout targeting all muscle groups', 0, NULL, '2023-05-30'),
(2, 'Core Workout', 'Focuses on core strength and stability', 1, 'Mon, Wed, Fri', '2023-05-29'),
(3, 'Arm Workout', 'Emphasizes the muscles of the arms', 0, NULL, '2023-05-28'),
(1, 'Leg Workout', 'Targets the muscles of the lower body', 1, 'Tue, Thu, Sat', '2023-05-27');













-- workout_exercises
INSERT INTO workout_exercises (workout_id, exercise_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4);
