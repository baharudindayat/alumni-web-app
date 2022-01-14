-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 02:09 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `responsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(3, 'admin', 827),
(4, 'dayat', 827);

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `tahunlulus` int(13) NOT NULL,
  `kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id`, `nama`, `alamat`, `jurusan`, `tahunlulus`, `kelas`) VALUES
(1, 'Andika Saputra', 'kendal', 'Informatika', 2020, 'E'),
(2, 'DAYAT', 'yogyakarta', 'Mesin', 2020, 'A'),
(3, 'hidayat', 'kendal', 'Informatika', 2021, 'B'),
(4, 'dayat', 'Kuvuki', 'informatika', 2021, 'd'),
(6, 'Baharudin Nur Hidayat', 'wakanda', 'Informatika', 2020, 'E'),
(32, 'uzik', 'Kuvuki', 'informatika', 2022, 'c'),
(34, 'subagyo', 'afrika', 'mesin', 2018, 'a'),
(35, 'wardana', 'bumen', 'mesin', 2020, 'e');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `emailbaru` varchar(50) NOT NULL,
  `edittime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `nama`, `email`, `emailbaru`, `edittime`) VALUES
(1, 'Bahar the child', 'dayat@gmail.com', 'yatt@gmail.com', '2022-01-06 19:19:02'),
(2, 'Bahar the child', 'yatt@gmail.com', 'Awowkwkw@gmail.com', '2022-01-07 10:23:47'),
(3, 'Baharudin Nur Hidayat', 'baharudindayat57@gmail.com', 'zainnjen@gmail.com', '2022-01-07 11:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `email`, `password`, `create_datetime`) VALUES
(3, 'Bahar the child', 'roqky', 'Awowkwkw@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2022-01-06 12:31:08'),
(5, 'Baharudin Nur Hidayat', 'dayat', 'zainnjen@gmail.com', '1855c11f044cc8944e8cdac9cae5def8', '2022-01-07 05:11:58');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `updateemail` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
INSERT INTO log
    set nama = old.nama,
    email = old.email,
    emailbaru = new.email,
    edittime = NOW();
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
