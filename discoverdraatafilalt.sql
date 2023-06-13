-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 09:06 PM
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
-- Database: `discoverdraatafilalt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `photoprofile` varchar(255) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date-adding` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nom`, `prenom`, `email`, `username`, `photoprofile`, `password`, `date-adding`) VALUES
(16, 'dnv', 'nd', 'ttet@fk.cj', 'dhd', 'img/profile/Web capture_30-5-2023_18938_localhost.jpeg', '81dc9bdb52d04dc20036dbd8313ed055', '2023-06-01'),
(18, 'fdmv', 'vddb', 'sjkdf@d.coi', 'fg', 'img/profile/man-looking-up-red-cast-shadows-under-a-blue-light-sharp-contrasts-by-henri-matisse--wondrous--853697888 (1).png', '81dc9bdb52d04dc20036dbd8313ed055', '2023-06-01'),
(19, 'test', 'test', 'testts@ff.ci', 'ttttt', 'img/profile/man-looking-up-red-cast-shadows-under-a-blue-light-sharp-contrasts-by-henri-matisse--wondrous--853697888.png', '81dc9bdb52d04dc20036dbd8313ed055', '2023-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `chamber`
--

CREATE TABLE `chamber` (
  `id-chamber` int(11) NOT NULL,
  `num` int(255) NOT NULL,
  `type` enum('partagé','seul') NOT NULL,
  `prix` decimal(65,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date-adding` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `prenom`, `email`, `password`, `date-adding`) VALUES
(7, 'admin', 'admin', 'admin@test.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-05-26'),
(19, 'md', 'v', 'test@gaii.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-05-26'),
(21, 'yyyqf', 'abnvb', 'test@hhg.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-06-02'),
(22, 'ahsh', 'vbd', 'barrimeed@dd.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-06-10'),
(23, 'test', 'jjk', 'kjj@jhh.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `id-des` int(255) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `ville` varchar(90) NOT NULL,
  `province` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `location` varchar(5000) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `date_modification` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id-des`, `nom`, `ville`, `province`, `description`, `location`, `img1`, `img2`, `img3`, `date_modification`) VALUES
(11, '1', 'test', 'test', '<p>sss<span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span></p>', '<p>test<span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span></p>', 'logo.png', 'nicolas-houdayer-9F9lVTFTEpI-unsplash.jpg', 'pramod-tiwari-20m4jMrMrpQ-unsplash.jpg', '2023-05-19'),
(13, '2', 'test', 'test', '<p>sss<span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span></p>', '<p>test<span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span></p>', 'logo.png', 'nicolas-houdayer-9F9lVTFTEpI-unsplash.jpg', 'pramod-tiwari-20m4jMrMrpQ-unsplash.jpg', '2023-05-19'),
(14, '3', 'test', 'test', '<p>sss<span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span></p>', '<p>test<span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span></p>', 'logo.png', 'nicolas-houdayer-9F9lVTFTEpI-unsplash.jpg', 'pramod-tiwari-20m4jMrMrpQ-unsplash.jpg', '2023-05-19'),
(15, '4', 'test', 'test', '<p>sss<span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span></p>', '<p>test<span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span><span style=\"text-align: var(--bs-body-text-align);\">test</span></p>', 'logo.png', 'nicolas-houdayer-9F9lVTFTEpI-unsplash.jpg', 'pramod-tiwari-20m4jMrMrpQ-unsplash.jpg', '2023-05-19');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id-hotel` int(255) NOT NULL,
  `nom` varchar(90) NOT NULL,
  `ville` varchar(90) NOT NULL,
  `carte` varchar(10000) NOT NULL,
  `chambre` int(50) NOT NULL,
  `classe` int(30) NOT NULL,
  `location` varchar(1000) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `date-add` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id-hotel`, `nom`, `ville`, `carte`, `chambre`, `classe`, `location`, `img1`, `img2`, `img3`, `date-add`) VALUES
(10, '2', 'dcdc', 'fjfv v', 7, 8, '5', 'School Notes Workbook .png', 'logo (1).png', 'WhatsApp Image 2023-02-07 at 21.20.53.jpg', '2023-05-24'),
(11, '3', 'dcdc', 'fjf', 7, 8, '5', 'School Notes Workbook .png', 'logo (1).png', 'WhatsApp Image 2023-02-07 at 21.20.53.jpg', '2023-05-24'),
(12, '4', 'dcdc', 'fjfv v', 7, 8, '5', 'School Notes Workbook .png', 'logo (1).png', 'WhatsApp Image 2023-02-07 at 21.20.53.jpg', '2023-05-24'),
(13, '5', 'dcdc', 'fjf', 7, 8, '5', 'School Notes Workbook .png', 'logo (1).png', 'WhatsApp Image 2023-02-07 at 21.20.53.jpg', '2023-05-24'),
(14, '6', 'dcdc', 'fjfv v', 7, 8, '5', 'School Notes Workbook .png', 'logo (1).png', 'WhatsApp Image 2023-02-07 at 21.20.53.jpg', '2023-05-24'),
(15, '7', 'dcdc', 'fjf', 7, 8, '5', 'School Notes Workbook .png', 'logo (1).png', 'WhatsApp Image 2023-02-07 at 21.20.53.jpg', '2023-05-24'),
(17, '9', 'dcdc', 'fjfv v', 7, 8, '5', 'School Notes Workbook .png', 'logo (1).png', 'WhatsApp Image 2023-02-07 at 21.20.53.jpg', '2023-05-24'),
(18, 'Dar Daif', 'Ouarzazate', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3423.3073615479484!2d-6.8824570892064765!3d30.90603177439486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdbb102d99a35225%3A0x934c5438b96f5143!2zSMO0dGVsIFJpYWQgRGFyIERhw69m!5e0!3m2!1sen!2sma!4v1686490352947!5m2!1sen!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 15, 4, 'Douar Talmasla, Ouarzazate 45000 Morocco', 'photo4jpg.jpg', 'dar-daif.jpg', 'courtyard-with-pool.jpg', '2023-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id_mess` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `sujet` varchar(100) NOT NULL,
  `content` varchar(500) NOT NULL,
  `date_sending` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id_mess`, `name`, `email`, `sujet`, `content`, `date_sending`) VALUES
(2, '0', 'fb@ede.com', 'vnc', 'fdnhebgh ', '2023-05-29'),
(3, '0', 'test@gmail.com', 'hdhd', 'mshbdvsadvsa j', '2023-05-29'),
(4, 'chsc', 'names@d.xin', 'dsjf', 'asjvcajcsbusahbhasjvc\r\n', '2023-05-29'),
(5, 'hshfasjf', 'xcvjkhsdvb@dd.com', 'jckvsdnv', 'ahdfagefevsavfghahdfagef evsavfghahdfagefevsavfghah gefevsavfgh ahdfagefevsavfghahdfagef evsavfghahdfagefevsavfghah gefevsavfgh\r\nahdfagefevsavfghahdfagef evsavfghahdfagefevsavfghah gefevsavfgh\r\nahdfagefevsavfghahdfagef evsavfghahdfagefevsavfghah gefevsavfgh', '2023-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `moussem`
--

CREATE TABLE `moussem` (
  `id-mous` int(255) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `location` varchar(1000) NOT NULL,
  `date-debut` date NOT NULL,
  `date-fin` date NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `date-add` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `moussem`
--

INSERT INTO `moussem` (`id-mous`, `nom`, `ville`, `description`, `location`, `date-debut`, `date-fin`, `img1`, `img2`, `img3`, `date-add`) VALUES
(3, 'test', 'test', '<p>ttetettet</p>', 'djj', '2023-06-23', '2023-06-11', 'WhatsApp Image 2023-04-27 at 11.25.06.jpg', 'EntergyLogo-white.png', 'WhatsApp Image 2023-04-27 at 11.24.04.jpg', '2023-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `plat`
--

CREATE TABLE `plat` (
  `id-plat` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `date-add` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plat`
--

INSERT INTO `plat` (`id-plat`, `nom`, `description`, `img1`, `img2`, `img3`, `date-add`) VALUES
(3, 'test hello', '<p>test test</p>', 'logo (3).png', 'School Notes Workbook .png', 'logo (1).png', '2023-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `reserver-hotel`
--

CREATE TABLE `reserver-hotel` (
  `id-resh` int(11) NOT NULL,
  `id-hotel` int(30) NOT NULL,
  `id-client` int(11) NOT NULL,
  `phone` varchar(90) NOT NULL,
  `type` enum('partagé','seul') NOT NULL,
  `nmbre-perssone` int(30) NOT NULL,
  `date-debut` date NOT NULL,
  `date-fin` date NOT NULL,
  `date-reservartion` date NOT NULL,
  `statu` enum('En cours','Acceptée','Refusée') NOT NULL DEFAULT 'En cours'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reserver-hotel`
--

INSERT INTO `reserver-hotel` (`id-resh`, `id-hotel`, `id-client`, `phone`, `type`, `nmbre-perssone`, `date-debut`, `date-fin`, `date-reservartion`, `statu`) VALUES
(9, 11, 23, '12245441', 'seul', 2, '2023-06-12', '2023-06-07', '2023-06-10', 'Acceptée');

-- --------------------------------------------------------

--
-- Table structure for table `reserver-voyage`
--

CREATE TABLE `reserver-voyage` (
  `id_voya` int(11) NOT NULL,
  `id-cleint` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(10) NOT NULL,
  `date-reservartion` date NOT NULL,
  `id-cer` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restau`
--

CREATE TABLE `restau` (
  `id-rest` int(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `location` varchar(1000) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `carte` varchar(1000) NOT NULL,
  `date-add` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restau`
--

INSERT INTO `restau` (`id-rest`, `nom`, `ville`, `province`, `description`, `location`, `img1`, `img2`, `img3`, `carte`, `date-add`) VALUES
(3, 'test', 'test', 'test', '<p>hello hr</p>', 'nxhv', 'logo (3).png', 'Untitled design.png', 'School Notes Workbook .png', 'xmvhx', '2023-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `voyage`
--

CREATE TABLE `voyage` (
  `id-cer` int(11) NOT NULL,
  `ville-depart` varchar(255) NOT NULL,
  `ville-arrive` varchar(255) NOT NULL,
  `trajet` varchar(10000) NOT NULL,
  `date-depart` date NOT NULL,
  `heure-depart` time NOT NULL,
  `dure` int(255) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `carte` varchar(1000) NOT NULL,
  `prix` decimal(65,0) NOT NULL,
  `date-res` date NOT NULL,
  `date-creation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voyage`
--

INSERT INTO `voyage` (`id-cer`, `ville-depart`, `ville-arrive`, `trajet`, `date-depart`, `heure-depart`, `dure`, `img`, `carte`, `prix`, `date-res`, `date-creation`) VALUES
(5, '1', 'sdnmfvb', '<p>nbfnv</p>', '2023-05-11', '14:07:00', 5, 'man-looking-up-red-cast-shadows-under-a-blue-light-sharp-contrasts-by-henri-matisse--wondrous--853697888.png', 'ffsf', '58', '2023-05-25', '2023-05-31'),
(6, '2', 'sdnmfvb', '<p>nbfnv</p>', '2023-05-11', '14:07:00', 5, 'man-looking-up-red-cast-shadows-under-a-blue-light-sharp-contrasts-by-henri-matisse--wondrous--853697888.png', 'ffsf', '58', '2023-05-25', '2023-05-31'),
(7, '3', 'sdnmfvb', '<p>nbfnv</p>', '2023-05-11', '14:07:00', 5, 'man-looking-up-red-cast-shadows-under-a-blue-light-sharp-contrasts-by-henri-matisse--wondrous--853697888.png', 'ffsf', '58', '2023-05-25', '2023-05-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `chamber`
--
ALTER TABLE `chamber`
  ADD PRIMARY KEY (`id-chamber`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id-des`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id-hotel`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_mess`);

--
-- Indexes for table `moussem`
--
ALTER TABLE `moussem`
  ADD PRIMARY KEY (`id-mous`);

--
-- Indexes for table `plat`
--
ALTER TABLE `plat`
  ADD PRIMARY KEY (`id-plat`);

--
-- Indexes for table `reserver-hotel`
--
ALTER TABLE `reserver-hotel`
  ADD PRIMARY KEY (`id-resh`),
  ADD KEY `id-hotel` (`id-hotel`),
  ADD KEY `id-client` (`id-client`);

--
-- Indexes for table `reserver-voyage`
--
ALTER TABLE `reserver-voyage`
  ADD PRIMARY KEY (`id_voya`),
  ADD KEY `id-cer` (`id-cer`),
  ADD KEY `id-cleint` (`id-cleint`);

--
-- Indexes for table `restau`
--
ALTER TABLE `restau`
  ADD PRIMARY KEY (`id-rest`);

--
-- Indexes for table `voyage`
--
ALTER TABLE `voyage`
  ADD PRIMARY KEY (`id-cer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `chamber`
--
ALTER TABLE `chamber`
  MODIFY `id-chamber` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `id-des` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id-hotel` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id_mess` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `moussem`
--
ALTER TABLE `moussem`
  MODIFY `id-mous` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plat`
--
ALTER TABLE `plat`
  MODIFY `id-plat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reserver-hotel`
--
ALTER TABLE `reserver-hotel`
  MODIFY `id-resh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reserver-voyage`
--
ALTER TABLE `reserver-voyage`
  MODIFY `id_voya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `restau`
--
ALTER TABLE `restau`
  MODIFY `id-rest` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `voyage`
--
ALTER TABLE `voyage`
  MODIFY `id-cer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reserver-hotel`
--
ALTER TABLE `reserver-hotel`
  ADD CONSTRAINT `reserver-hotel_ibfk_1` FOREIGN KEY (`id-hotel`) REFERENCES `hotel` (`id-hotel`),
  ADD CONSTRAINT `reserver-hotel_ibfk_2` FOREIGN KEY (`id-client`) REFERENCES `client` (`id_client`);

--
-- Constraints for table `reserver-voyage`
--
ALTER TABLE `reserver-voyage`
  ADD CONSTRAINT `reserver-voyage_ibfk_1` FOREIGN KEY (`id-cer`) REFERENCES `voyage` (`id-cer`),
  ADD CONSTRAINT `reserver-voyage_ibfk_2` FOREIGN KEY (`id-cleint`) REFERENCES `client` (`id_client`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
