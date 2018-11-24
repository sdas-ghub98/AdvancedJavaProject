-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 24, 2018 at 07:15 PM
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
  `Cast` varchar(300) NOT NULL,
  `Director` varchar(255) NOT NULL,
  `Release Date` varchar(20) NOT NULL,
  `Runtime` int(255) NOT NULL,
  `Synopsis` text NOT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cinemadetails`
--

INSERT INTO `cinemadetails` (`Sno`, `Name`, `Genre`, `Certification`, `Cast`, `Director`, `Release Date`, `Runtime`, `Synopsis`) VALUES
(1, 'Goosebumps', 'Adventure, Comedy, Family', 'PG', 'Jack Black, Dylan Minnette, Odeya Rush', 'Rob Letterman', '16 October 2015', 103, 'A teenager teams up with the daughter of young adult horror author R. L. Stine after the writer\'s imaginary demons are set free on the town of Madison, Delaware. '),
(2, 'The Host', 'Action, Adventure, Drama', 'PG-13', 'Saoirse Ronan, Max Irons, Jake Abel', 'Andrew Niccol', '29 March 2013', 125, 'When an unseen enemy threatens mankind by taking over their bodies and erasing their memories, Melanie will risk everything to protect the people she cares most about, proving that love can conquer all in a dangerous new world. '),
(3, 'Pirates of the Caribbean: Dead Men Tell No Tales', 'Action, Adventure, Fantasy', 'PG-13', 'Johnny Depp, Geoffrey Rush, Javier Bardem', 'Joachim Ronning, Espen Sandberg', '26 May 2017', 129, 'Captain Jack Sparrow searches for the trident of Poseidon while being pursued by an undead sea captain and his crew.'),
(4, 'Black Panther', 'Action, Adventure, Sci-Fi', 'PG-13', 'Chadwick Boseman, Michael B. Jordan, Lupita Nyong\'o', 'Ryan Coogler', '16 February 2018', 134, 'After the death of his father, Prince T\'Challa ascends to the throne of the small African country of Wakanda. T\'Challa is also Black Panther, superhero. Now not only must he govern his country but defeat a dangerous adversary'),
(5, 'Rogue One: A Star Wars Story', 'Action, Adventure, Sci-Fi', 'PG-13', 'Felicity Jones, Diego Luna, Alan Tudyk', 'Gareth Edwards', '16 December 2016', 133, 'The daughter of an Imperial scientist joins the Rebel Alliance in a risky move to steal the Death Star plans.'),
(6, 'The Pursuit of Happyness', 'Biography, Drama', 'PG-13', 'Will Smith, Thandie Newton, Jaden Smith', 'Gabriele Muccino', '15 December 2006', 117, 'A struggling salesman takes custody of his son as he\'s poised to begin a life-changing professional career. '),
(7, 'Captain America: The Winter Soldier', 'Action, Adventure, Sci-Fi', 'PG-13', 'Chris Evans, Samuel L. Jackson, Scarlett Johansson', 'Anthony Russo, Joe Russo', '4 April 2014', 136, 'As Steve Rogers struggles to embrace his role in the modern world, he teams up with a fellow Avenger and S.H.I.E.L.D agent, Black Widow, to battle a new threat from history: an assassin known as the Winter Soldier. '),
(8, 'Justice League', 'Action, Adventure, Fantasy', 'PG-13', 'Ben Affleck, Gal Gadot, Jason Momoa', 'Zack Snyder', '17 November 2017', 120, 'Fueled by his restored faith in humanity and inspired by Superman\'s selfless act, Bruce Wayne enlists the help of his newfound ally, Diana Prince, to face an even greater enemy.'),
(9, 'Bohemian Rhapsody', 'Biography, Drama, Music', 'PG-13', 'Rami Malek, Lucy Boynton, Gwilym Lee', 'Bryan Singer', '2 November 2018', 134, 'A chronicle of the years leading up to Queen\'s legendary appearance at the Live Aid (1985) concert.'),
(10, 'Baby Driver', 'Action, Crime, Drama', 'R', 'Ansel Elgort, Jon Bernthal, Jon Hamm', 'Edgar Wright', '28 June 2017', 112, 'After being coerced into working for a crime boss, a young getaway driver finds himself taking part in a heist doomed to fail. ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
