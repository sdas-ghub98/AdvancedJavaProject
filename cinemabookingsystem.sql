-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 15, 2018 at 09:02 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinemabookingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `cinemadetails`
--

DROP TABLE IF EXISTS `cinemadetails`;
CREATE TABLE IF NOT EXISTS `cinemadetails` (
  `Sno` int(16) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Genre` varchar(255) NOT NULL,
  `Certification` varchar(255) NOT NULL,
  `Director` varchar(255) NOT NULL,
  `Date` datetime NOT NULL,
  `Runtime` int(255) NOT NULL,
  `Synopsis` text NOT NULL,
  `MoviePoster URL` varchar(255) NOT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cinemadetails`
--

INSERT INTO `cinemadetails` (`Sno`, `Name`, `Genre`, `Certification`, `Director`, `Date`, `Runtime`, `Synopsis`, `MoviePoster URL`) VALUES
(1, 'Goosebumps', 'Adventure, Comedy, Family', 'PG', 'Rob Letterman', '2015-10-16 00:00:00', 103, 'A teenager teams up with the daughter of young adult horror author R. L. Stine after the writer\'s imaginary demons are set free on the town of Madison, Delaware. ', 'null'),
(2, 'The Host', 'Action, Adventure, Drama', 'PG-13', 'Andrew Niccol', '2013-03-29 00:00:00', 125, 'When an unseen enemy threatens mankind by taking over their bodies and erasing their memories, Melanie will risk everything to protect the people she cares most about, proving that love can conquer all in a dangerous new world. ', '');

-- --------------------------------------------------------

--
-- Table structure for table `customerdetails`
--

DROP TABLE IF EXISTS `customerdetails`;
CREATE TABLE IF NOT EXISTS `customerdetails` (
  `Name` varchar(100) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `ContactNum` bigint(10) NOT NULL,
  `Email` varchar(75) NOT NULL,
  `City` varchar(30) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerdetails`
--

INSERT INTO `customerdetails` (`Name`, `Username`, `Password`, `ContactNum`, `Email`, `City`) VALUES
('XYZ', 'xyz_xyz', '12345', 987654344, 'xyz@xyz.com', 'Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `movie1booking`
--

DROP TABLE IF EXISTS `movie1booking`;
CREATE TABLE IF NOT EXISTS `movie1booking` (
  `Username` varchar(50) NOT NULL,
  `Venue` varchar(50) NOT NULL,
  `Timing` datetime(6) NOT NULL,
  `SeatNo` varchar(10) NOT NULL,
  `PricePaid` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie1booking`
--

INSERT INTO `movie1booking` (`Username`, `Venue`, `Timing`, `SeatNo`, `PricePaid`) VALUES
('xyz_xyz', 'Delhi', '2018-09-11 13:05:00.000000', '1A', 250);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
