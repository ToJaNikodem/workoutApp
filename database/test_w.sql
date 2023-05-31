-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2023 at 12:50 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_w`
--

-- --------------------------------------------------------

--
-- Table structure for table `exercise_list`
--

CREATE TABLE `exercise_list` (
  `id` int(11) NOT NULL,
  `exercise_name` varchar(64) NOT NULL,
  `exercise_description` varchar(256) DEFAULT NULL,
  `number_of_sets` tinyint(4) DEFAULT NULL,
  `number_of_reps` tinyint(4) DEFAULT NULL,
  `last_time_performed` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exercise_list`
--

INSERT INTO `exercise_list` (`id`, `exercise_name`, `exercise_description`, `number_of_sets`, `number_of_reps`, `last_time_performed`) VALUES
(1, 'Push-ups', 'Standard push-up exercise', 3, 10, '2023-05-29'),
(2, 'Squats', 'Bodyweight squat exercise', 3, 12, '2023-05-30'),
(3, 'Plank', 'Core stabilization exercise', 1, 60, '2023-05-31'),
(4, 'Bicep Curls', 'Dumbbell bicep curl exercise', 3, 8, '2023-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `exercise_logs`
--

CREATE TABLE `exercise_logs` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `exercise_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exercise_logs`
--

INSERT INTO `exercise_logs` (`id`, `session_id`, `exercise_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `exercise_muscles`
--

CREATE TABLE `exercise_muscles` (
  `exercise_id` int(11) NOT NULL,
  `muscle_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exercise_muscles`
--

INSERT INTO `exercise_muscles` (`exercise_id`, `muscle_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `muscles`
--

CREATE TABLE `muscles` (
  `id` int(11) NOT NULL,
  `muscle_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `muscles`
--

INSERT INTO `muscles` (`id`, `muscle_name`) VALUES
(1, 'Chest'),
(2, 'Quadriceps'),
(3, 'Core'),
(4, 'Biceps');

-- --------------------------------------------------------

--
-- Table structure for table `set_logs`
--

CREATE TABLE `set_logs` (
  `id` int(11) NOT NULL,
  `ex_log_id` int(11) NOT NULL,
  `set_number` tinyint(4) NOT NULL,
  `number_of_reps` tinyint(4) NOT NULL,
  `weight` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `set_logs`
--

INSERT INTO `set_logs` (`id`, `ex_log_id`, `set_number`, `number_of_reps`, `weight`) VALUES
(9, 1, 1, 10, 0),
(10, 1, 2, 10, 0),
(11, 1, 3, 10, 0),
(12, 2, 1, 60, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'john_doe', 'john@example.com', 'password123'),
(2, 'jane_smith', 'jane@example.com', 'password456'),
(3, 'bob_jackson', 'bob@example.com', 'password789');

-- --------------------------------------------------------

--
-- Table structure for table `workout_exercises`
--

CREATE TABLE `workout_exercises` (
  `workout_id` int(11) NOT NULL,
  `exercise_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workout_list`
--

CREATE TABLE `workout_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `workout_name` varchar(32) NOT NULL,
  `workout_description` varchar(256) NOT NULL,
  `is_recurring` tinyint(4) DEFAULT 0,
  `recurring_days` varchar(16) DEFAULT NULL,
  `last_time_performed` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workout_list`
--

INSERT INTO `workout_list` (`id`, `user_id`, `workout_name`, `workout_description`, `is_recurring`, `recurring_days`, `last_time_performed`) VALUES
(1, 1, 'Full Body Workout', 'A complete workout targeting all muscle groups', 0, NULL, '2023-05-30'),
(2, 2, 'Core Workout', 'Focuses on core strength and stability', 1, 'Mon, Wed, Fri', '2023-05-29'),
(3, 3, 'Arm Workout', 'Emphasizes the muscles of the arms', 0, NULL, '2023-05-28'),
(4, 1, 'Leg Workout', 'Targets the muscles of the lower body', 1, 'Tue, Thu, Sat', '2023-05-27');

-- --------------------------------------------------------

--
-- Table structure for table `workout_session_logs`
--

CREATE TABLE `workout_session_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `notes` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workout_session_logs`
--

INSERT INTO `workout_session_logs` (`id`, `user_id`, `date`, `notes`) VALUES
(1, 1, '2023-05-30', 'Great workout today!'),
(2, 2, '2023-05-29', 'Feeling sore after the core workout'),
(3, 3, '2023-05-28', 'Enjoyed the arm workout'),
(4, 1, '2023-05-27', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exercise_list`
--
ALTER TABLE `exercise_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercise_logs`
--
ALTER TABLE `exercise_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `exercise_id` (`exercise_id`);

--
-- Indexes for table `exercise_muscles`
--
ALTER TABLE `exercise_muscles`
  ADD KEY `exercise_id` (`exercise_id`),
  ADD KEY `muscle_id` (`muscle_id`);

--
-- Indexes for table `muscles`
--
ALTER TABLE `muscles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `set_logs`
--
ALTER TABLE `set_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ex_log_id` (`ex_log_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `workout_exercises`
--
ALTER TABLE `workout_exercises`
  ADD KEY `exercise_id` (`exercise_id`),
  ADD KEY `workout_id` (`workout_id`);

--
-- Indexes for table `workout_list`
--
ALTER TABLE `workout_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `workout_session_logs`
--
ALTER TABLE `workout_session_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exercise_list`
--
ALTER TABLE `exercise_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exercise_logs`
--
ALTER TABLE `exercise_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `muscles`
--
ALTER TABLE `muscles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `set_logs`
--
ALTER TABLE `set_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `workout_list`
--
ALTER TABLE `workout_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `workout_session_logs`
--
ALTER TABLE `workout_session_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exercise_logs`
--
ALTER TABLE `exercise_logs`
  ADD CONSTRAINT `exercise_logs_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `workout_session_logs` (`id`),
  ADD CONSTRAINT `exercise_logs_ibfk_2` FOREIGN KEY (`exercise_id`) REFERENCES `exercise_list` (`id`);

--
-- Constraints for table `exercise_muscles`
--
ALTER TABLE `exercise_muscles`
  ADD CONSTRAINT `exercise_muscles_ibfk_1` FOREIGN KEY (`exercise_id`) REFERENCES `exercise_list` (`id`),
  ADD CONSTRAINT `exercise_muscles_ibfk_2` FOREIGN KEY (`muscle_id`) REFERENCES `muscles` (`id`);

--
-- Constraints for table `set_logs`
--
ALTER TABLE `set_logs`
  ADD CONSTRAINT `set_logs_ibfk_1` FOREIGN KEY (`ex_log_id`) REFERENCES `exercise_logs` (`id`);

--
-- Constraints for table `workout_exercises`
--
ALTER TABLE `workout_exercises`
  ADD CONSTRAINT `workout_exercises_ibfk_1` FOREIGN KEY (`exercise_id`) REFERENCES `exercise_list` (`id`),
  ADD CONSTRAINT `workout_exercises_ibfk_2` FOREIGN KEY (`workout_id`) REFERENCES `workout_list` (`id`);

--
-- Constraints for table `workout_list`
--
ALTER TABLE `workout_list`
  ADD CONSTRAINT `workout_list_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `workout_session_logs`
--
ALTER TABLE `workout_session_logs`
  ADD CONSTRAINT `workout_session_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
