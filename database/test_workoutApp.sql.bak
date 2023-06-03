-- Add UNSIGNED
CREATE TABLE `users` (
    `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `username` CHARACTER SET latin1 COLLATE latin1_bin varchar(32) UNIQUE NOT NULL,
    `email` varchar(255) UNIQUE NOT NULL,
    `password` varchar(255) NOT NULL,
    `lang` tinyint(1) DEFAULT 0,
    CHECK (CHAR_LENGTH(username) >= 6),
    CHECK (CHAR_LENGTH(password) >= 8)
);

CREATE TABLE `exercise_list` (
    `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL DEFAULT 0,
    `exercise_name_en` CHARACTER SET latin1 COLLATE latin1_bin varchar(64) NOT NULL,
    `exercise_name_pl` CHARACTER SET latin1 COLLATE latin1_bin varchar(64) NOT NULL,
    `exercise_notes` CHARACTER SET latin1 COLLATE latin1_bin varchar(256),
    CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE CASCADE
);

CREATE TABLE `workout_exercises` (
    `variant_id` int(11) NOT NULL,
    `exercise_id` int(11) NOT NULL,
    CONSTRAINT `fk_variant_id` FOREIGN KEY (`variant_id`) REFERENCES `workouts_vatiants`(`id`) ON DELETE CASCADE,
    CONSTRAINT `fk_exercise_id` FOREIGN KEY (`exercise_id`) REFERENCES `exercise_list`(`id`) ON DELETE CASCADE
);

CREATE TABLE `workout_list` (
    `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `workout_name_en` CHARACTER SET latin1 COLLATE latin1_bin varchar(32) NOT NULL,
    `workout_name_pl` CHARACTER SET latin1 COLLATE latin1_bin varchar(32) NOT NULL,
    `is_primary` tinyint(1) NOT NULL DEFAULT 0,
    CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE CASCADE
);

CREATE TABLE `superset_list` (
    `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `superset_name_en` varchar(32) NOT NULL,
    `superset_name_pl` varchar(32) NOT NULL,
    `user_id` int(11) NOT NULL DEFAULT 0,
    CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE CASCADE
);

CREATE TABLE `exercise_superset` (
    `exercise_id` int(11) NOT NULL,
    `superset_id` int(11) NOT NULL,
    CONSTRAINT `fk_exercise_id` FOREIGN KEY (`exercise_id`) REFERENCES `exercise_list`(`id`) ON DELETE CASCADE,
    CONSTRAINT `fk_superset_id` FOREIGN KEY (`superset_id`) REFERENCES `superset_list`(`id`) ON DELETE CASCADE
);

CREATE TABLE `workout_session_logs` (
    `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `date` date NOT NULL,
    `notes` varchar(128),
    CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE CASCADE
);

CREATE TABLE `exercise_logs` (
    `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `session_id` int(11) NOT NULL,
    `exercise_id` int(11) NOT NULL,
    CONSTRAINT `fk_session_id` FOREIGN KEY (`session_id`) REFERENCES `workout_session_logs`(`id`) ON DELETE CASCADE,
    CONSTRAINT `fk_exercise_id` FOREIGN KEY (`exercise_id`) REFERENCES `exercise_list`(`id`) ON DELETE CASCADE
);

CREATE TABLE `set_logs` (
    `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `ex_log_id` int(11) NOT NULL,
    `set_number` tinyint NOT NULL,
    `rep_count` tinyint NOT NULL,
    `weight` smallint NOT NULL,
    `drop_set` tinyint NOT NULL DEFAULT 0,
    CONSTRAINT `fk_ex_log_id` FOREIGN KEY (`ex_log_id`) REFERENCES `exercise_logs`(`id`) ON DELETE CASCADE
);

CREATE TABLE `set_data` (
    `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `exercise_id` int(11) NOT NULL,
    `set_number` tinyint NOT NULL,
    `rep_count` tinyint NOT NULL,
    `weight` smallint NOT NULL,
    `drop_set` tinyint NOT NULL DEFAULT 0,
    CONSTRAINT `fk_exercise_id` FOREIGN KEY (`exercise_id`) REFERENCES `exercise_list`(`id`) ON DELETE CASCADE
);

CREATE TABLE `exercise_muscles` (
    `exercise_id` int(11) NOT NULL,
    `muscle_id` int(11) NOT NULL,
    CONSTRAINT `fk_exercise_id` FOREIGN KEY (`exercise_id`) REFERENCES `exercise_list`(`id`) ON DELETE CASCADE,
    CONSTRAINT `fk_muscle_id` FOREIGN KEY (`muscle_id`) REFERENCES `muscles`(`id`) ON DELETE CASCADE
);

CREATE TABLE `muscles` (
    `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `muscle_name` varchar(32) NOT NULL
);

CREATE TABLE `workouts_vatiants` (
    `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `workout_id` int(11) NOT NULL,
    `variant_name` CHARACTER SET latin1 COLLATE latin1_bin varchar(64) NOT NULL,
    CONSTRAINT `fk_workout_id` FOREIGN KEY (`workout_id`) REFERENCES `workout_list`(`id`) ON DELETE CASCADE
);

ALTER TABLE
    `workout_exercises`
ADD
    FOREIGN KEY (`exercise_id`) REFERENCES `exercise_list` (`id`);

ALTER TABLE
    `workout_list`
ADD
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE
    `workout_session_logs`
ADD
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE
    `exercise_logs`
ADD
    FOREIGN KEY (`session_id`) REFERENCES `workout_session_logs` (`id`);

ALTER TABLE
    `exercise_logs`
ADD
    FOREIGN KEY (`exercise_id`) REFERENCES `exercise_list` (`id`);

ALTER TABLE
    `set_logs`
ADD
    FOREIGN KEY (`ex_log_id`) REFERENCES `exercise_logs` (`id`);

ALTER TABLE
    `exercise_muscles`
ADD
    FOREIGN KEY (`exercise_id`) REFERENCES `exercise_list` (`id`);

ALTER TABLE
    `exercise_muscles`
ADD
    FOREIGN KEY (`muscle_id`) REFERENCES `muscles` (`id`);

ALTER TABLE
    `workout_exercises`
ADD
    FOREIGN KEY (`variant_id`) REFERENCES `workouts_vatiants` (`id`);

ALTER TABLE
    `workouts_vatiants`
ADD
    FOREIGN KEY (`workout_id`) REFERENCES `workout_list` (`id`);

ALTER TABLE
    `exercise_list`
ADD
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE
    `exercise_list`
ADD
    FOREIGN KEY (`id`) REFERENCES `exercise_superset` (`exercise_id`);

ALTER TABLE
    `superset_list`
ADD
    FOREIGN KEY (`id`) REFERENCES `exercise_superset` (`superset_id`);

ALTER TABLE
    `superset_list`
ADD
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

CREATE INDEX idx_users_username ON users (username);

CREATE INDEX idx_users_email ON users (email);

CREATE INDEX idx_exercise_list_user_id ON exercise_list (user_id);

CREATE INDEX idx_workout_exercises_exercise_id ON workout_exercises (exercise_id);

CREATE INDEX idx_workout_exercises_variant_id ON workout_exercises (variant_id);

CREATE INDEX idx_workout_list_user_id ON workout_list (user_id);

CREATE INDEX idx_superset_list_user_id ON superset_list (user_id);

CREATE INDEX idx_exercise_logs_session_id ON exercise_logs (session_id);

CREATE INDEX idx_exercise_logs_exercise_id ON exercise_logs (exercise_id);

CREATE INDEX idx_set_logs_ex_log_id ON set_logs (ex_log_id);

CREATE INDEX idx_exercise_muscles_exercise_id ON exercise_muscles (exercise_id);

CREATE INDEX idx_exercise_muscles_muscle_id ON exercise_muscles (muscle_id);

CREATE INDEX idx_exercise_id ON set_data (exercise_id);