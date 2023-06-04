-- Tables

-- Table for storing user information
CREATE TABLE `users` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `username` varchar(32) UNIQUE NOT NULL,
    `email` varchar(256) UNIQUE NOT NULL,
    `hashed_password` varbinary(256) NOT NULL,
    `language` bit NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table for storing workout information
CREATE TABLE `workouts` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `user_id` int(11) UNSIGNED NOT NULL,
    `workout_name_id` int(11) UNSIGNED NOT NULL,
    `favorite` bit NOT NULL DEFAULT 0
);

-- Table for storing workout names in different languages
CREATE TABLE `workout_names` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `workout_name_en` varchar(32) NOT NULL,
    `workout_name_pl` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table for storing workout variants
CREATE TABLE `workout_variants` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `workout_id` int(11) UNSIGNED NOT NULL,
    `variant_name_id` int(11) UNSIGNED NOT NULL
);

-- Table for storing variant names in different languages
CREATE TABLE `variant_names` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `variant_name_en` varchar(64) NOT NULL,
    `variant_name_pl` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table for storing exercises
CREATE TABLE `exercises` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `user_id` int(11) UNSIGNED NOT NULL,
    `exercise_type` tinyint UNSIGNED NOT NULL DEFAULT 0, -- 0 = strenght exercise, 1 = cardio exercise, 2 = other
    `exercise_name_id` int(11) UNSIGNED NOT NULL,
    `exercise_notes` varchar(512)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table for storing exercise names in different languages
CREATE TABLE `exercise_names` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `exercise_name_en` varchar(64) NOT NULL,
    `exercise_name_pl` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table for storing superset information
CREATE TABLE `supersets` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `superset_name_id` int(11) UNSIGNED NOT NULL
);

-- Table for storing superset names in different languages
CREATE TABLE `superset_names` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `superset_name_en` varchar(64) NOT NULL,
    `superset_name_pl` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table for storing muscle information
CREATE TABLE `muscles` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `muscle_name_en` varchar(32) NOT NULL,
    `muscle_name_pl` varchar(32) NOT NULL,
    `muscle_group` varchar(32)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table for storing properties of cardio exercises
CREATE TABLE `cardio_exercise_properties` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `exercise_id` int(11) UNSIGNED NOT NULL,
    `duration` smallint UNSIGNED NOT NULL, -- in seconds
    `distance` mediumint UNSIGNED, -- in meters
    `speed` tinyint UNSIGNED -- in km/h
);

-- Table for storing properties of strength exercises
CREATE TABLE `strength_exercise_properties` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `exercise_id` int(11) UNSIGNED NOT NULL,
    `set_number` tinyint UNSIGNED NOT NULL,
    `rep_count` tinyint UNSIGNED NOT NULL,
    `weight` smallint UNSIGNED NOT NULL,
    `drop_set` bit NOT NULL DEFAULT 0
);

-- Table for storing variant session logs
CREATE TABLE `variant_session_logs` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `user_id` int(11) UNSIGNED NOT NULL,
    `date` date NOT NULL
);

-- Table for storing strength exercise logs
CREATE TABLE `strength_exercise_logs` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `session_id` int(11) UNSIGNED NOT NULL,
    `exercise_id` int(11) UNSIGNED NOT NULL,
    `notes` varchar(512),
    `list_position` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table for storing cardio exercise logs
CREATE TABLE `cardio_logs` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `exercise_id` int(11) UNSIGNED NOT NULL,
    `duration` smallint UNSIGNED NOT NULL,
    `distance` mediumint UNSIGNED,
    `speed` smallint UNSIGNED,
    `notes` varchar(512),
    `list_position` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table for storing set logs of strength exercises
CREATE TABLE `set_logs` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `strength_exercise_log_id` int(11) UNSIGNED NOT NULL,
    `set_number` tinyint UNSIGNED NOT NULL,
    `rep_count` tinyint UNSIGNED NOT NULL,
    `weight` smallint UNSIGNED NOT NULL,
    `drop_set` tinyint UNSIGNED NOT NULL DEFAULT 0,
    `notes` varchar(512)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table for storing superset logs
CREATE TABLE `superset_logs` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `session_id` int(11) UNSIGNED NOT NULL,
    `superset_id` int(11) UNSIGNED NOT NULL,
    `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
);

-- Table for associating strength exercises with muscles
CREATE TABLE `strength_exercise_muscles` (
    `strength_exercise_id` int(11) UNSIGNED NOT NULL,
    `muscle_id` int(11) UNSIGNED NOT NULL
);

-- Table for associating variant exercises with exercises
CREATE TABLE `variant_exercises` (
    `variant_id` int(11) UNSIGNED NOT NULL,
    `exercise_id` int(11) UNSIGNED NOT NULL
);

-- Table for associating superset exercises with exercises
CREATE TABLE `superset_exercises` (
    `exercise_id` int(11) UNSIGNED NOT NULL,
    `superset_id` int(11) UNSIGNED NOT NULL
);

-- Table for storing custom timers
CREATE TABLE `custom_timers` (
    `id` int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `user_id` int(11) UNSIGNED NOT NULL,
    `time` smallint UNSIGNED NOT NULL -- in seconds
);


-- Add foreign key constraints

-- Add foreign key constraint to relate workouts with users
ALTER TABLE `workouts`
ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate exercises with users
ALTER TABLE `exercises`
ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate variant session logs with users
ALTER TABLE `variant_session_logs`
ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate custom timers with users
ALTER TABLE `custom_timers`
ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate workout variants with workouts
ALTER TABLE `workout_variants`
ADD FOREIGN KEY (`workout_id`) REFERENCES `workouts` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate workouts with workout names
ALTER TABLE `workouts`
ADD FOREIGN KEY (`workout_name_id`) REFERENCES `workout_names` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate workout variants with variant names
ALTER TABLE `workout_variants`
ADD FOREIGN KEY (`variant_name_id`) REFERENCES `variant_names` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate cardio exercise properties with exercises
ALTER TABLE `cardio_exercise_properties`
ADD FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate strength exercise properties with exercises
ALTER TABLE `strength_exercise_properties`
ADD FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate superset exercises with exercises
ALTER TABLE `superset_exercises`
ADD FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate variant exercises with exercises
ALTER TABLE `variant_exercises`
ADD FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate exercises with exercise names
ALTER TABLE `exercises`
ADD FOREIGN KEY (`exercise_name_id`) REFERENCES `exercise_names` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate supersets with superset names
ALTER TABLE `supersets`
ADD FOREIGN KEY (`superset_name_id`) REFERENCES `superset_names` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate muscles with strength exercise muscles
ALTER TABLE `strength_exercise_muscles`
ADD FOREIGN KEY (`muscle_id`) REFERENCES `muscles` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate strength exercise muscles with strength exercise properties
ALTER TABLE `strength_exercise_muscles`
ADD FOREIGN KEY (`strength_exercise_id`) REFERENCES `strength_exercise_properties` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate cardio logs with exercises
ALTER TABLE `cardio_logs`
ADD FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate strength exercise logs with exercises
ALTER TABLE `strength_exercise_logs`
ADD FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate set logs with strength exercise logs
ALTER TABLE `set_logs`
ADD FOREIGN KEY (`strength_exercise_log_id`) REFERENCES `strength_exercise_logs` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate superset logs with supersets
ALTER TABLE `superset_logs`
ADD FOREIGN KEY (`superset_id`) REFERENCES `supersets` (`id`) ON DELETE CASCADE;

-- Add foreign key constraint to relate superset logs with variant session logs
ALTER TABLE `superset_logs`
ADD FOREIGN KEY (`session_id`) REFERENCES `variant_session_logs` (`id`) ON DELETE CASCADE;


-- Indexes

-- Add indexes to improve performance on the 'workouts' table
ALTER TABLE `workouts` ADD INDEX `idx_user_id` (`user_id`);
ALTER TABLE `workouts` ADD INDEX `idx_workout_name_id` (`workout_name_id`);

-- Add indexes to improve performance on the 'workout_variants' table
ALTER TABLE `workout_variants` ADD INDEX `idx_workout_id` (`workout_id`);
ALTER TABLE `workout_variants` ADD INDEX `idx_variant_name_id` (`variant_name_id`);

-- Add indexes to improve performance on the 'exercises' table
ALTER TABLE `exercises` ADD INDEX `idx_user_id` (`user_id`);
ALTER TABLE `exercises` ADD INDEX `idx_exercise_name_id` (`exercise_name_id`);

-- Add index to improve performance on the 'cardio_exercise_properties' table
ALTER TABLE `cardio_exercise_properties` ADD INDEX `idx_exercise_id` (`exercise_id`);

-- Add index to improve performance on the 'strength_exercise_properties' table
ALTER TABLE `strength_exercise_properties` ADD INDEX `idx_exercise_id` (`exercise_id`);

-- Add index to improve performance on the 'variant_session_logs' table
ALTER TABLE `variant_session_logs` ADD INDEX `idx_user_id` (`user_id`);

-- Add indexes to improve performance on the 'strength_exercise_logs' table
ALTER TABLE `strength_exercise_logs` ADD INDEX `idx_session_id` (`session_id`);
ALTER TABLE `strength_exercise_logs` ADD INDEX `idx_exercise_id` (`exercise_id`);

-- Add index to improve performance on the 'cardio_logs' table
ALTER TABLE `cardio_logs` ADD INDEX `idx_exercise_id` (`exercise_id`);

-- Add index to improve performance on the 'set_logs' table
ALTER TABLE `set_logs` ADD INDEX `idx_strength_exercise_log_id` (`strength_exercise_log_id`);

-- Add indexes to improve performance on the 'superset_logs' table
ALTER TABLE `superset_logs` ADD INDEX `idx_session_id` (`session_id`);
ALTER TABLE `superset_logs` ADD INDEX `idx_superset_id` (`superset_id`);

-- Add index to improve performance on the 'strength_exercise_muscles' table
ALTER TABLE `strength_exercise_muscles` ADD INDEX `idx_muscle_id` (`muscle_id`);

-- Add index to improve performance on the 'variant_exercises' table
ALTER TABLE `variant_exercises` ADD INDEX `idx_exercise_id` (`exercise_id`);

-- Add index to improve performance on the 'superset_exercises' table
ALTER TABLE `superset_exercises` ADD INDEX `idx_exercise_id` (`exercise_id`);

-- Add index to improve performance on the 'custom_timers' table
ALTER TABLE `custom_timers` ADD INDEX `idx_user_id` (`user_id`);