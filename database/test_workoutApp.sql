CREATE TABLE `users` (
    `user_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `username` varchar(32) UNIQUE NOT NULL CHECK (LENGTH(username) >= 4),
    `email` varchar(256) UNIQUE NOT NULL CHECK (email REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$'),
    `hashed_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `workouts` (
    `workout_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `user_id` int UNSIGNED NOT NULL,
    `workout_name_id` int UNSIGNED NOT NULL,
    `favorite` bool NOT NULL DEFAULT 0 COMMENT '0 = not favorite, 1 = favorite'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `workout_names` (
    `workout_name_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `default_workout_name_en` varchar(64),
    `default_workout_name_pl` varchar(64),
    `user_workout_name` varchar(64)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `workout_variants` (
    `workout_variant_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `workout_id` int UNSIGNED NOT NULL,
    `workout_variant_name_id` int UNSIGNED NOT NULL,
    `workout_variant_notes` varchar(512)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `workout_variant_names` (
    `workout_variant_name_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `default_workout_variant_name_en` varchar(64),
    `default_workout_variant_name_pl` varchar(64),
    `user_workout_variant_name` varchar(64)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `strength_exercises` (
    `strength_exercise_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `strength_exercise_name_id` int UNSIGNED NOT NULL,
    `user_id` int UNSIGNED NOT NULL,
    `strength_exercise_notes` varchar(512)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `strength_exercise_names` (
    `strength_exercise_name_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `default_strength_exercise_name_en` varchar(64),
    `default_strength_exercise_name_pl` varchar(64),
    `user_strength_exercise_name` varchar(64)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `strength_exercise_workout_variant` (
    `strength_exercise_workout_variant_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `strength_exercise_id` int UNSIGNED NOT NULL,
    `workout_variant_id` int UNSIGNED NOT NULL,
    `exercise_order` tinyint UNSIGNED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sets` (
    `set_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `strength_exercise_id` int UNSIGNED NOT NULL,
    `set_number` smallint UNSIGNED NOT NULL,
    `rep_count` smallint UNSIGNED NOT NULL,
    `weight` decimal(6, 2) COMMENT 'in kg' CHECK (weight >= 0),
    `set_notes` varchar(512),
    `dropset` bool NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `cardio_exercises` (
    `cardio_exercise_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `cardio_exercise_name_id` int UNSIGNED NOT NULL,
    `user_id` int UNSIGNED NOT NULL,
    `duration` smallint UNSIGNED COMMENT 'in sec',
    `distance` smallint UNSIGNED COMMENT 'in m',
    `speed` decimal(3, 1) COMMENT 'in km/h' CHECK (speed >= 0),
    `cardio_exercise_notes` varchar(512)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `cardio_exercise_names` (
    `cardio_exercise_name_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `default_cardio_exercise_name_en` varchar(64),
    `default_cardio_exercise_name_pl` varchar(64),
    `user_cardio_exercise_name` varchar(64)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `cardio_exercise_workout_variant` (
    `cardio_exercise_workout_variant_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    `cardio_exercise_id` int UNSIGNED NOT NULL,
    `workout_variant_id` int UNSIGNED NOT NULL,
    `exercise_order` tinyint UNSIGNED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `other_exercises` (
    `other_exercise_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `other_exercise_name_id` int UNSIGNED NOT NULL,
    `user_id` int UNSIGNED NOT NULL,
    `other_exercise_notes` varchar(512)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `other_exercise_names` (
    `other_exercise_name_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `default_other_exercise_name_en` varchar(64),
    `default_other_exercise_name_pl` varchar(64),
    `user_other_exercise_name` varchar(64)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `other_exercise_workout_variant` (
    `other_exercise_workout_variant_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `other_exercise_id` int UNSIGNED NOT NULL,
    `workout_variant_id` int UNSIGNED NOT NULL,
    `exercise_order` tinyint UNSIGNED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `supersets` (
    `superset_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `workout_variant_id` int UNSIGNED NOT NULL,
    `superset_notes` varchar(512)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `superset_strength_exercise` (
    `superset_strength_exercise_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `superset_id` int UNSIGNED NOT NULL,
    `strength_exercise_id` int UNSIGNED NOT NULL,
    `exercise_order` tinyint UNSIGNED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `custom_timers` (
    `custom_timer_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `user_id` int UNSIGNED NOT NULL,
    `duration` smallint UNSIGNED NOT NULL COMMENT 'in sec'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `muscles` (
    `muscle_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `muscle_name_id` int UNSIGNED NOT NULL,
    `muscle_group_name_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `muscle_names` (
    `muscle_name_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `muscle_name_en` varchar(64),
    `muscle_name_pl` varchar(64)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `muscle_group_names` (
    `muscle_group_name_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `muscle_group_name_en` varchar(64),
    `muscle_group_name_pl` varchar(64)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `muscle_strength_exercise` (
    `muscle_id` int UNSIGNED NOT NULL,
    `strength_exercise_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `workout_session_logs` (
    `workout_session_log_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `user_id` int UNSIGNED NOT NULL,
    `date` date NOT NULL,
    `workout_session_log_notes` varchar(512)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `strength_execise_logs` (
    `strength_exercise_log_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `strength_exercise_id` int UNSIGNED NOT NULL,
    `workout_session_log_id` int UNSIGNED NOT NULL,
    `strength_execise_log_notes` varchar(512)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `set_logs` (
    `set_log_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `strength_exercise_log_id` int UNSIGNED NOT NULL,
    `set_number` smallint UNSIGNED NOT NULL,
    `rep_count` smallint UNSIGNED NOT NULL,
    `weight` decimal(6, 2) COMMENT 'in kg' CHECK (weight >= 0),
    `set_log_notes` varchar(512),
    `dropset` bool NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `cardio_exercise_logs` (
    `cardio_exercise_log_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `cardio_exercise_id` int UNSIGNED NOT NULL,
    `workout_session_log_id` int UNSIGNED NOT NULL,
    `duration` smallint UNSIGNED COMMENT 'in sec',
    `distance` smallint UNSIGNED COMMENT 'in m',
    `speed` decimal(3, 1) COMMENT 'in km/h' CHECK (speed >= 0),
    `cardio_exercise_log_notes` varchar(512)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `other_execise_logs` (
    `other_exercise_log_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `other_exercise_id` int UNSIGNED NOT NULL,
    `workout_session_log_id` int UNSIGNED NOT NULL,
    `other_execise_log_notes` varchar(512)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `superset_logs` (
    `superset_log_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `workout_session_log_id` int UNSIGNED NOT NULL,
    `superset_log_notes` varchar(512)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `superset_log_strength_exercise_log` (
    `superset_log_strength_exercise_log_id` int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `superset_log_id` int UNSIGNED NOT NULL,
    `strength_exercise_log_id` int UNSIGNED NOT NULL,
    `exercise_order` tinyint UNSIGNED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE
    `workouts`
ADD
    FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

ALTER TABLE
    `workouts`
ADD
    FOREIGN KEY (`workout_name_id`) REFERENCES `workout_names` (`workout_name_id`) ON DELETE CASCADE;

ALTER TABLE
    `workout_variants`
ADD
    FOREIGN KEY (`workout_id`) REFERENCES `workouts` (`workout_id`) ON DELETE CASCADE;

ALTER TABLE
    `workout_variants`
ADD
    FOREIGN KEY (`workout_variant_name_id`) REFERENCES `workout_variant_names` (`workout_variant_name_id`) ON DELETE CASCADE;

ALTER TABLE
    `strength_exercises`
ADD
    FOREIGN KEY (`strength_exercise_name_id`) REFERENCES `strength_exercise_names` (`strength_exercise_name_id`) ON DELETE CASCADE;

ALTER TABLE
    `strength_exercise_workout_variant`
ADD
    FOREIGN KEY (`workout_variant_id`) REFERENCES `workout_variants` (`workout_variant_id`) ON DELETE CASCADE;

ALTER TABLE
    `strength_exercise_workout_variant`
ADD
    FOREIGN KEY (`strength_exercise_id`) REFERENCES `strength_exercises` (`strength_exercise_id`) ON DELETE CASCADE;

ALTER TABLE
    `sets`
ADD
    FOREIGN KEY (`strength_exercise_id`) REFERENCES `strength_exercises` (`strength_exercise_id`) ON DELETE CASCADE;

ALTER TABLE
    `strength_exercises`
ADD
    FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

ALTER TABLE
    `cardio_exercises`
ADD
    FOREIGN KEY (`cardio_exercise_name_id`) REFERENCES `cardio_exercise_names` (`cardio_exercise_name_id`) ON DELETE CASCADE;

ALTER TABLE
    `cardio_exercises`
ADD
    FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

ALTER TABLE
    `cardio_exercise_workout_variant`
ADD
    FOREIGN KEY (`cardio_exercise_id`) REFERENCES `cardio_exercises` (`cardio_exercise_id`) ON DELETE CASCADE;

ALTER TABLE
    `cardio_exercise_workout_variant`
ADD
    FOREIGN KEY (`workout_variant_id`) REFERENCES `workout_variants` (`workout_variant_id`) ON DELETE CASCADE;

ALTER TABLE
    `other_exercises`
ADD
    FOREIGN KEY (`other_exercise_name_id`) REFERENCES `other_exercise_names` (`other_exercise_name_id`) ON DELETE CASCADE;

ALTER TABLE
    `other_exercise_workout_variant`
ADD
    FOREIGN KEY (`other_exercise_id`) REFERENCES `other_exercises` (`other_exercise_id`) ON DELETE CASCADE;

ALTER TABLE
    `other_exercise_workout_variant`
ADD
    FOREIGN KEY (`workout_variant_id`) REFERENCES `workout_variants` (`workout_variant_id`) ON DELETE CASCADE;

ALTER TABLE
    `superset_strength_exercise`
ADD
    FOREIGN KEY (`superset_id`) REFERENCES `supersets` (`superset_id`) ON DELETE CASCADE;

ALTER TABLE
    `superset_strength_exercise`
ADD
    FOREIGN KEY (`strength_exercise_id`) REFERENCES `strength_exercises` (`strength_exercise_id`) ON DELETE CASCADE;

ALTER TABLE
    `supersets`
ADD
    FOREIGN KEY (`workout_variant_id`) REFERENCES `workout_variants` (`workout_variant_id`) ON DELETE CASCADE;

ALTER TABLE
    `custom_timers`
ADD
    FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

ALTER TABLE
    `muscles`
ADD
    FOREIGN KEY (`muscle_name_id`) REFERENCES `muscle_names` (`muscle_name_id`) ON DELETE CASCADE;

ALTER TABLE
    `muscles`
ADD
    FOREIGN KEY (`muscle_group_name_id`) REFERENCES `muscle_group_names` (`muscle_group_name_id`) ON DELETE CASCADE;

ALTER TABLE
    `muscle_strength_exercise`
ADD
    FOREIGN KEY (`strength_exercise_id`) REFERENCES `strength_exercises` (`strength_exercise_id`) ON DELETE CASCADE;

ALTER TABLE
    `muscle_strength_exercise`
ADD
    FOREIGN KEY (`muscle_id`) REFERENCES `muscles` (`muscle_id`) ON DELETE CASCADE;

ALTER TABLE
    `workout_session_logs`
ADD
    FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

ALTER TABLE
    `strength_execise_logs`
ADD
    FOREIGN KEY (`workout_session_log_id`) REFERENCES `workout_session_logs` (`workout_session_log_id`) ON DELETE CASCADE;

ALTER TABLE
    `set_logs`
ADD
    FOREIGN KEY (`strength_exercise_log_id`) REFERENCES `strength_execise_logs` (`strength_exercise_log_id`) ON DELETE CASCADE;

ALTER TABLE
    `cardio_exercise_logs`
ADD
    FOREIGN KEY (`workout_session_log_id`) REFERENCES `workout_session_logs` (`workout_session_log_id`) ON DELETE CASCADE;

ALTER TABLE
    `strength_execise_logs`
ADD
    FOREIGN KEY (`strength_exercise_id`) REFERENCES `strength_exercises` (`strength_exercise_id`) ON DELETE CASCADE;

ALTER TABLE
    `cardio_exercise_logs`
ADD
    FOREIGN KEY (`cardio_exercise_id`) REFERENCES `cardio_exercises` (`cardio_exercise_id`) ON DELETE CASCADE;

ALTER TABLE
    `other_execise_logs`
ADD
    FOREIGN KEY (`workout_session_log_id`) REFERENCES `workout_session_logs` (`workout_session_log_id`) ON DELETE CASCADE;

ALTER TABLE
    `other_execise_logs`
ADD
    FOREIGN KEY (`other_exercise_id`) REFERENCES `other_exercises` (`other_exercise_id`) ON DELETE CASCADE;

ALTER TABLE
    `superset_logs`
ADD
    FOREIGN KEY (`workout_session_log_id`) REFERENCES `workout_session_logs` (`workout_session_log_id`) ON DELETE CASCADE;

ALTER TABLE
    `superset_log_strength_exercise_log`
ADD
    FOREIGN KEY (`superset_log_id`) REFERENCES `superset_logs` (`superset_log_id`) ON DELETE CASCADE;

ALTER TABLE
    `superset_log_strength_exercise_log`
ADD
    FOREIGN KEY (`strength_exercise_log_id`) REFERENCES `strength_execise_logs` (`strength_exercise_log_id`) ON DELETE CASCADE;

-- Indexes

CREATE INDEX idx_username ON users (username);
CREATE INDEX idx_email ON users (email);

CREATE INDEX idx_user_id ON workouts (user_id);

CREATE INDEX idx_user_id ON workout_session_logs (user_id);
CREATE INDEX idx_date ON workout_session_logs (date);

CREATE INDEX idx_user_id ON strength_exercises (user_id);

CREATE INDEX idx_user_id ON cardio_exercises (user_id);

CREATE INDEX idx_user_id ON other_exercises (user_id);