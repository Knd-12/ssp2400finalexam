-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2021 at 10:39 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssp2400finalexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `instructor_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `instructor_name`) VALUES
(1, 'Animation', 'Students are introduced to the basic principles common to all styles of animation. The most important foundational concepts of acting, physics, composition, body mechanics and texture will be examined through a series of character animation exercises. ', 'John'),
(2, 'Mathematics', 'This course prepares students for further study in algebra. Topics include operations with real numbers, first-degree equations, polynomials, factoring, graphing and interpreting linear equations, systems of linear equations, fractional expressions and equations, radical expressions and equations, quadratic equations and trigonometry.', 'Holly'),
(3, 'Criminology', 'This course will examine different terms and concepts commonly used in criminology, such as crime, delinquency, deviance, criminal, victim, rehabilitation and treatment, criminology as a body of knowledge and as a profession, and the position and subject matter of criminology. The relationship between criminology and other disciplines will be studied.', 'Debs'),
(4, 'Fine Arts', 'This course provides students with a basic understanding of the history and development of music. This survey course will focus on music and composers from the 5th to the 18th century. Increased competence in the student\'s abilities to listen, analyze and articulate their responses to the music will be an important part of this curriculum.', 'John'),
(5, 'Leadership Skills', 'This course learners explore effective leadership and develop an understanding of what makes an effective leader and the tools required. Learners will determine their personal leadership style and develop their leadership vision.\r\n\r\n', 'Debs');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` int(55) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `name`) VALUES
(1, 'Holly'),
(2, 'John'),
(3, 'Debs');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(55) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`) VALUES
(1, 'Sarah'),
(2, 'Rodney'),
(3, 'Max'),
(4, 'Dexter'),
(5, 'Lorna'),
(6, 'Brady'),
(7, 'Mason'),
(8, 'Johnny'),
(9, 'Kiara'),
(10, 'Gail'),
(11, 'Ben'),
(12, 'Peter'),
(13, 'Sandra'),
(14, 'Adrian'),
(15, 'Carol');

-- --------------------------------------------------------

--
-- Table structure for table `students_courses`
--

CREATE TABLE `students_courses` (
  `id` int(11) NOT NULL,
  `student_id` int(55) NOT NULL,
  `course_id` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students_courses`
--

INSERT INTO `students_courses` (`id`, `student_id`, `course_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2),
(7, 4, 3),
(8, 5, 4),
(9, 6, 5),
(10, 7, 1),
(11, 8, 2),
(12, 9, 3),
(13, 10, 4),
(14, 11, 5),
(15, 12, 1),
(16, 13, 2),
(17, 14, 3),
(18, 15, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_courses`
--
ALTER TABLE `students_courses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `students_courses`
--
ALTER TABLE `students_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
