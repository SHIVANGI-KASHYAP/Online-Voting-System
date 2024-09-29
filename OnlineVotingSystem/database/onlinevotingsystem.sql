-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 10:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinevotingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate_details`
--

CREATE TABLE `candidate_details` (
  `id` int(11) NOT NULL,
  `election_id` int(11) DEFAULT NULL,
  `candidate_name` varchar(255) DEFAULT NULL,
  `candidate_details` text DEFAULT NULL,
  `candidate_photo` text DEFAULT NULL,
  `inserted_by` varchar(255) DEFAULT NULL,
  `inserted_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidate_details`
--

INSERT INTO `candidate_details` (`id`, `election_id`, `candidate_name`, `candidate_details`, `candidate_photo`, `inserted_by`, `inserted_on`) VALUES
(23, 11, 'Keshav', 'Candidate', '../assets/images/candidate_photos/49589762294_1278056766037721709086_79384668035Selfie.png', 'Keshav', '2023-11-16'),
(24, 11, 'Nidhi', 'Candidate', '../assets/images/candidate_photos/42563912726_637903768454153203372_20775697032web icons-07.png', 'Keshav', '2023-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `elections`
--

CREATE TABLE `elections` (
  `id` int(11) NOT NULL,
  `election_topic` varchar(255) NOT NULL,
  `no_of_candidates` int(11) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `inserted_by` varchar(255) DEFAULT NULL,
  `inserted_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `elections`
--

INSERT INTO `elections` (`id`, `election_topic`, `no_of_candidates`, `starting_date`, `ending_date`, `status`, `inserted_by`, `inserted_on`) VALUES
(11, 'College Elections', 4, '2023-11-16', '2023-11-30', 'Active', 'Keshav', '2023-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `user_role` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email_id`, `password`, `user_role`) VALUES
(17, 'AAKRUTI SHARMA', '21bcs001@smvdu.ac.in', 'ea8e8345c0e236b8ee364c78aef97d8275056da4', 'Voter'),
(18, 'AARYA CHANDRASHEKHAR CHOPKAR', '21bcs002@smvdu.ac.in', '6f87672236f75ad509310fd820f6d6de8780c48d', 'Voter'),
(19, 'AASHANA SHARMA ', '21bcs003@smvdu.ac.in', 'c8772bf1550e0608bb534e138564a3b3e6d86885', 'Voter'),
(20, 'ABHAY PRATAP SINGH CHARAK', '21bcs004@smvdu.ac.in', '8b6e46127657b55781b38fa0134e70461a42d33f', 'Voter'),
(21, 'ABHIJAY SUDAN', '21bcs005@smvdu.ac.in', 'a49dcacf2ad5a493311adcfcfaa03954d720fe16', 'Voter'),
(22, 'ACHYUT MENGI', '21bcs006@smvdu.ac.in', '70628a99ce277d9ff3642eac2fd75b03f05a2e27', 'Voter'),
(23, ' ADARSH VIKRAM SINGH', '21bcs007@smvdu.ac.in', '7dd0dfcc9530affde7487bebac2f5f439d5285fd', 'Voter'),
(25, 'ADITYA KANODIA ', '21bcs008@smvdu.ac.in', '07ac5051d94607b5aaa64fcfcdbadd41118603b9', 'Voter'),
(26, 'ADITYA ', '21bcs009@smvdu.ac.in', 'aacadd37b179cc933002481e0b8f921fdb637eff', 'Voter'),
(27, 'ADITYA SHARMA', '21bcs010@smvdu.ac.in', 'da7ce2c84c1a519e061a5a41b066fa2bfef6998e', 'Voter'),
(29, 'AKASH SINGH ', '21bcs012@smvdu.ac.in', '0838d52e7bf2d6a74077a29f9ee4b649a78b6de0', 'Voter'),
(30, 'AKHILESH SINGH', '21bcs013@smvdu.ac.in', 'cbc98831515184d0bdd2bc9bdf938450eae0c4f5', 'Voter'),
(31, 'ANIRUDH HANDA', '21bcs014@smvdu.ac.in', 'c4bb587348831c0eec037caca7d0cdde7b0df6dd', 'Voter'),
(32, 'ANIRUDH SALARIA', '21bcs015@smvdu.ac.in', 'c85613f4082696fb23a699d6d0f34bfceb6edf88', 'Voter'),
(34, 'Admin', '21bcs058@smvdu.ac.in', '991c8a0be8aeb09adbbbc10a33010c2427a32cb8', 'Admin'),
(35, 'ANKIT KUMAR SINHA', '21bcs016@smvdu.ac.in', 'e7b898437e6f97a0ffb985031dd492da411cf4d3', 'Voter'),
(36, 'ANSHIKA', '21bcs017@smvdu.ac.in', '6937e2a3bf90713ff79220d3fe86664e79bb5439', 'Voter'),
(37, 'ANURAG LODHI', '21bcs018@smvdu.ac.in', '1e310ac38479270ab811f3d11666886dc618ba2a', 'Voter'),
(38, 'ARNAV RAINA ', '21bcs019@smvdu.ac.in', 'e9cce84f4719380c7b5423b5f49e03b69d0f38d2', 'Voter'),
(39, 'ARYAN', '21bcs020@smvdu.ac.in', '7b1d70d976c1cc7bfabcea55a5df0d8592569afd', 'Voter'),
(40, 'ASHAANK GUPTA ', '21bcs021@smvdu.ac.in', 'b20ab7d56334b31a1f37ea6905a464e1fc57d168', 'Voter'),
(41, 'ASHUTOSH RAJPUT', '21bcs022@smvdu.ac.in', '420ef74c8d0702fd1e0382ed2669cbfa454e79d9', 'Voter'),
(42, 'ATUL ANAND', '21bcs023@smvdu.ac.in', 'd358b20d09e9745b3a0566bee87ddce6ddc22617', 'Voter'),
(43, 'AYUSH GUPTA', '21bcs024@smvdu.ac.in', '3e3e6d249c89ad83696a95ad1ecbdbacb16304b2', 'Voter'),
(44, 'AYUSH SHARMA', '21bcs025@smvdu.ac.in', 'df9fbc991372db92ea934c0df57db4e12229d5f1', 'Voter'),
(45, 'Test', 'test@gmail.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'Voter'),
(46, 'AYUSHMAN TRIPATHI', '21bcs026@smvdu.ac.in', 'a2ccc76167b58a3287c2b8ff60e0ca39d05fcd96', 'Voter'),
(47, ' AZZAM KHAN ', '21bcs027@smvdu.ac.in', '0d21c2658f713f2b22547d1716798edd9e533476', 'Voter'),
(48, 'BIKASH ROY CHOWDHORY', '21bcs028@smvdu.ac.in', '1dc642dd493f19b39b42b9e5415d5056dd3c9374', 'Voter');

-- --------------------------------------------------------

--
-- Table structure for table `votings`
--

CREATE TABLE `votings` (
  `id` int(11) NOT NULL,
  `election_id` int(11) DEFAULT NULL,
  `voters_id` int(11) DEFAULT NULL,
  `candidate_id` int(11) NOT NULL,
  `vote_date` date DEFAULT NULL,
  `vote_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `votings`
--

INSERT INTO `votings` (`id`, `election_id`, `voters_id`, `candidate_id`, `vote_date`, `vote_time`) VALUES
(10, 11, 5, 24, '2023-11-16', '03:53:04'),
(11, 11, 6, 24, '2023-11-16', '04:40:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate_details`
--
ALTER TABLE `candidate_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_no` (`email_id`),
  ADD UNIQUE KEY `password` (`password`) USING HASH;

--
-- Indexes for table `votings`
--
ALTER TABLE `votings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate_details`
--
ALTER TABLE `candidate_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `elections`
--
ALTER TABLE `elections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `votings`
--
ALTER TABLE `votings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
