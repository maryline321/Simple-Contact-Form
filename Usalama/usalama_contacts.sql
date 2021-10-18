-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2021 at 06:15 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usalama_contacts`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `ID` int(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone_number` int(20) NOT NULL,
  `website` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`ID`, `name`, `email`, `phone_number`, `website`, `message`) VALUES
(1, 'chebet', 'cher@gmail.com', 234409743, 'https://github.com/maryline321/datascience', 'github'),
(2, 'Maryline', 'chebet@gmail.com', 7800000, 'https://github.com/maryline321/datascience', 'Login page'),
(3, 'Maryline', 'kiyoko@gmail.com', 23455, 'https://github.com/maryline321/datascience', 'Github'),
(4, 'Maryline', 'cher@gmail.com', 754439883, 'https://github.com/maryline321/datascience', 'Github account'),
(5, 'John', 'john@gmail.com', 2147483647, 'https://github.com/maryline321/datascience', 'First account');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(20) NOT NULL,
  `website` varchar(60) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `name`, `email`, `phone`, `website`, `username`, `password`, `message`) VALUES
(1, 'chebet', 'chebt@gmail.com', 7436677, 'https://emasomo.cuk.ac.ke/', 'maryline', '2063', 'welcome'),
(5, 'caroh', 'caroh@gmail.com', 7456087, '', 'caroh30', '3458', ''),
(7, 'Okiyo', 'kiyo@gmail.com', 74432203, '', 'kiko45', '2899ku', ''),
(10, 'Rita', 'rita.@gmail.com', 78976008, '', 'margarita', '456yy', ''),
(11, 'roy', 'roy.@gmail.com', 78976009, '', 'margarita', '788uj4', ''),
(12, 'john', 'john.@gmail.com', 78976456, '', 'johnny', '123He', ''),
(13, 'kim', 'kim.@gmail.com', 78976084, '', 'kim56', 'MU785', ''),
(14, 'joy', 'joy.@gmail.com', 7891299, '', 'kakuu', 'rwerd4', ''),
(15, 'rita', 'rita.@gmail.com', 78976009, '', 'mary', '456yg', ''),
(22, 'Hildah', 'helda.@gmail.com', 78976009, '', 'margarita', '45600', ''),
(23, 'chebet', 'chebet@gmail.com', 7234543, '', 'cher', '2042', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(20) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Phone_Number` int(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Name`, `Email`, `Phone_Number`, `password`) VALUES
(1, 'sam', 'sam@gmail.com', 1234567890, ''),
(2, 'smith', 'smith@gmail.com', 789927363, ''),
(3, 'John', 'john@gmail.com', 2147483647, ''),
(4, 'sameer', 'sameer@gmail.com', 956732165, ''),
(5, 'Jack', 'jack@gmail.com', 2147483647, ''),
(7, 'chebet', 'chebet@gmail.com', 7300000, '0000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
