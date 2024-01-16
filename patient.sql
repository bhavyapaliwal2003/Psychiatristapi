-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2024 at 09:17 AM
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
-- Database: `patient`
--

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`) VALUES
(1, 'Apollo Hospitals'),
(2, 'Jawaharlal Nehru Medical College and Hospital'),
(3, 'Indira Gandhi Institute of Medical Sciences (IGIMS)'),
(4, 'AIIMS - All India Institute Of Medical Science');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `address`, `email`, `phone`, `password`, `photo`, `hospital_id`) VALUES
(1, 'John Doe', '123 Main St, CityA', 'john.doe@example.com', '1234567890', 'Password123', NULL, 1),
(2, 'Jane Smith', '456 Oak St, CityB', 'jane.smith@example.com', '1234567891', 'Password456', NULL, 2),
(3, 'Mike Johnson', '789 Pine St, CityC', 'mike.johnson@example.com', '1234567892', 'Password789', NULL, 3),
(4, 'Emily Davis', '101 Elm St, CityD', 'emily.davis@example.com', '1234567893', 'Password101', NULL, 4),
(5, 'Robert Brown', '202 Cedar St, CityE', 'robert.brown@example.com', '1234567894', 'Password202', NULL, 1),
(6, 'Samantha White', '303 Maple St, CityF', 'samantha.white@example.com', '1234567895', 'Password303', NULL, 2),
(7, 'Daniel Lee', '404 Birch St, CityG', 'daniel.lee@example.com', '1234567896', 'Password404', NULL, 3),
(8, 'Ava Taylor', '505 Walnut St, CityH', 'ava.taylor@example.com', '1234567897', 'Password505', NULL, 4),
(9, 'Christopher Hall', '606 Pine St, CityI', 'christopher.hall@example.com', '1234567898', 'Password606', NULL, 1),
(10, 'Olivia Wilson', '707 Oak St, CityJ', 'olivia.wilson@example.com', '1234567899', 'Password707', NULL, 2),
(11, 'Matthew Turner', '808 Elm St, CityK', 'matthew.turner@example.com', '1234567800', 'Password808', NULL, 3),
(12, 'Emma Martinez', '909 Cedar St, CityL', 'emma.martinez@example.com', '1234567801', 'Password909', NULL, 4),
(13, 'Andrew Perez', '111 Maple St, CityM', 'andrew.perez@example.com', '1234567802', 'Password111', NULL, 1),
(14, 'Isabella Reed', '222 Birch St, CityN', 'isabella.reed@example.com', '1234567803', 'Password222', NULL, 2),
(15, 'Ethan Cooper', '333 Walnut St, CityO', 'ethan.cooper@example.com', '1234567804', 'Password333', NULL, 3),
(16, 'Avery Rivera', '444 Pine St, CityP', 'avery.rivera@example.com', '1234567805', 'Password444', NULL, 4),
(17, 'Jackson Scott', '555 Oak St, CityQ', 'jackson.scott@example.com', '1234567806', 'Password555', NULL, 1),
(18, 'Sophia Price', '666 Elm St, CityR', 'sophia.price@example.com', '1234567807', 'Password666', NULL, 2),
(19, 'Liam Miller', '777 Cedar St, CityS', 'liam.miller@example.com', '1234567808', 'Password777', NULL, 3),
(20, 'Mia Moore', '888 Maple St, CityT', 'mia.moore@example.com', '1234567809', 'Password888', NULL, 4),
(21, 'Noah King', '999 Birch St, CityU', 'noah.king@example.com', '1234567810', 'Password999', NULL, 1),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'John Doe', '123 Main St', 'john.doe@example.com', '+1234567890', 'Passw0rd123', 'https://example.com/photo.jpg', NULL),
(37, 'John', '123 Main St', 'john.doe@example.com', '+1234567890', 'Passw0rd123', 'https://example.com/photo.jpg', 2),
(38, 'Johncena', '123 Main St', 'john.doe@example.com', '+1234567890', 'Passw0rd123', 'https://example.com/photo.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `psychiatrists`
--

CREATE TABLE `psychiatrists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hospital_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `psychiatrists`
--

INSERT INTO `psychiatrists` (`id`, `name`, `hospital_id`) VALUES
(1, 'Dr. Smith', 1),
(2, 'Dr. Johnson', 2),
(3, 'Dr. Patel', 3),
(4, 'Dr. Williams', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- Indexes for table `psychiatrists`
--
ALTER TABLE `psychiatrists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `psychiatrists`
--
ALTER TABLE `psychiatrists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`);

--
-- Constraints for table `psychiatrists`
--
ALTER TABLE `psychiatrists`
  ADD CONSTRAINT `psychiatrists_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
