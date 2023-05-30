-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 09:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workout`
--

-- --------------------------------------------------------

--
-- Table structure for table `exercise_list`
--

CREATE TABLE `exercise_list` (
  `id` int(11) NOT NULL,
  `exercise_name` varchar(64) NOT NULL,
  `muscle_worked` varchar(32) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exercise_list`
--

INSERT INTO `exercise_list` (`id`, `exercise_name`, `muscle_worked`, `description`) VALUES
(1, 'Squats', 'Legs', 'Perform squats to target your leg muscles.'),
(2, 'Push-ups', 'Chest, Arms', 'Do push-ups to work your chest and arm muscles.'),
(3, 'Crunches', 'Abdominals', 'Perform crunches to strengthen your abdominal muscles.'),
(4, 'Bicep Curls', 'Biceps', 'Do bicep curls to target your bicep muscles.'),
(5, 'Lunges', 'Legs, Glutes', 'Perform lunges to work your leg and glute muscles.');

-- --------------------------------------------------------

--
-- Table structure for table `workout_exercise`
--

CREATE TABLE `workout_exercise` (
  `workout_id` int(11) NOT NULL,
  `exercise_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workout_exercise`
--

INSERT INTO `workout_exercise` (`workout_id`, `exercise_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `workout_list`
--

CREATE TABLE `workout_list` (
  `id` int(11) NOT NULL,
  `workout_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workout_list`
--

INSERT INTO `workout_list` (`id`, `workout_name`) VALUES
(1, 'Full Body Workout'),
(2, 'Upper Body Workout');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exercise_list`
--
ALTER TABLE `exercise_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workout_exercise`
--
ALTER TABLE `workout_exercise`
  ADD KEY `workout_id` (`workout_id`),
  ADD KEY `exercise_id` (`exercise_id`);

--
-- Indexes for table `workout_list`
--
ALTER TABLE `workout_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exercise_list`
--
ALTER TABLE `exercise_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `workout_list`
--
ALTER TABLE `workout_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `workout_exercise`
--
ALTER TABLE `workout_exercise`
  ADD CONSTRAINT `workout_exercise_ibfk_1` FOREIGN KEY (`workout_id`) REFERENCES `workout_list` (`id`),
  ADD CONSTRAINT `workout_exercise_ibfk_2` FOREIGN KEY (`exercise_id`) REFERENCES `exercise_list` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
