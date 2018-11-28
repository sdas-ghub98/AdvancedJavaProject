-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 28, 2018 at 11:40 AM
-- Server version: 10.3.9-MariaDB
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
-- Database: `cinema booking system`
--

-- --------------------------------------------------------

--
-- Table structure for table `babydriver`
--

DROP TABLE IF EXISTS `babydriver`;
CREATE TABLE IF NOT EXISTS `babydriver` (
  `Username` varchar(50) NOT NULL,
  `Venue` varchar(50) NOT NULL,
  `Date` varchar(15) NOT NULL,
  `Timing` varchar(20) NOT NULL,
  `SeatNo` varchar(300) NOT NULL,
  `PricePaid` float NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `babydriver`
--

INSERT INTO `babydriver` (`Username`, `Venue`, `Date`, `Timing`, `SeatNo`, `PricePaid`) VALUES
('Waneta Frigo', '1', '23rd NOV 2018', '12:30 PM', '4E,4F,4G,4H', 600),
('ArdisEcho', '1', '24th NOV 2018', '7:30 PM', '6A,6B,6C,6D,6E,6F', 900),
('GaleaGallucci', '2', '23rd NOV 2018', '3:30 PM', '2A', 180),
('Conception Mcquay', '2', '25th NOV 2018', '12:30 PM', '3C,', 180);

-- --------------------------------------------------------

--
-- Table structure for table `blackpanther`
--

DROP TABLE IF EXISTS `blackpanther`;
CREATE TABLE IF NOT EXISTS `blackpanther` (
  `Username` varchar(50) NOT NULL,
  `Venue` varchar(50) NOT NULL,
  `Date` varchar(15) NOT NULL,
  `Timing` varchar(20) NOT NULL,
  `SeatNo` varchar(10) NOT NULL,
  `PricePaid` float NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blackpanther`
--

INSERT INTO `blackpanther` (`Username`, `Venue`, `Date`, `Timing`, `SeatNo`, `PricePaid`) VALUES
('BiglerFunky', '2', '23rd NOV 2018', '12:30 PM', '6E,6F', 360),
('Sharlene Calo', '1', '24th NOV 2018', '3:30 PM', '8A,8B,8C,8', 750);

-- --------------------------------------------------------

--
-- Table structure for table `bohemianrhapsody`
--

DROP TABLE IF EXISTS `bohemianrhapsody`;
CREATE TABLE IF NOT EXISTS `bohemianrhapsody` (
  `Username` varchar(50) NOT NULL,
  `Venue` varchar(50) NOT NULL,
  `Date` varchar(15) NOT NULL,
  `Timing` varchar(20) NOT NULL,
  `SeatNo` varchar(300) NOT NULL,
  `PricePaid` int(11) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bohemianrhapsody`
--

INSERT INTO `bohemianrhapsody` (`Username`, `Venue`, `Date`, `Timing`, `SeatNo`, `PricePaid`) VALUES
('GrantShewmake', '2', '23rd NOV 2018', '12:30 PM', '9F', 180),
('AprilNicolle', '1', '24th NOV 2018', '3:30 PM', '4C', 150),
('ArdisEcho', '1', '25th NOV 2018', '7:30 PM', '6A', 150),
('CameliaAlaila', '2', '24th NOV 2018', '10:30 PM', '2A', 180),
('DumireDummy', '1', '23rd NOV 2018', '12:30 PM', '1E,1F,1G,1H', 600),
('KinkyJeff', '2', '24th NOV 2018', '3:30 PM', '5A,5B', 360),
('AnhartDoubleday', '1', '25th NOV 2018', '3:30 PM', '3C,3D,3E,3F,3G,3H', 900),
('CornDorn', '2', '23th NOV 2018', '7;30 PM', '2A,2B.2C,2D', 720),
('BessieSchow', '1', '24th NOV 2018', '10:30 PM', '1I,1J', 300),
('BizarreDecosta', '2', '25th NOV 2018', '10;30 PM', '1A,1B,2A,2B,1C,1D,2C,2D', 1440);

-- --------------------------------------------------------

--
-- Table structure for table `captainamerica`
--

DROP TABLE IF EXISTS `captainamerica`;
CREATE TABLE IF NOT EXISTS `captainamerica` (
  `Username` varchar(50) NOT NULL,
  `Venue` varchar(50) NOT NULL,
  `Date` varchar(15) NOT NULL,
  `Timing` varchar(20) NOT NULL,
  `SeatNo` varchar(10) NOT NULL,
  `PricePaid` float NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
('Hope Shewmake', 'GrantShewmake', 'sheisda1', 6819168180, 'GrantShewmake@outlook.com', 'Delhi  '),
('Dianne Bechard', 'BeckBechard', 'beckham7', 8866293376, 'BeckBechard@gmail.com', 'Delhi'),
('Waneta Frigo', 'BearWaneta', 'bearyhappy', 4070244870, 'BearWaneta@gmail.com', 'Delhi'),
('Nicolle Zahm', 'AprilNicolle', 'qwerty123', 9877416106, 'AprilNicolle@gmail.com', 'Delhi'),
('Karyl Gangemi', 'BunnyGangemi', 'unchanged', 9751803297, 'BunnyGangemi@outlook.com', 'Delhi'),
('Ardis Traina', 'ArdisEcho', 'trustno1', 890997906, 'ArdisEcho@outlook.com', 'Delhi'),
('Lily Quint', 'CallaQuint', 'princess', 5470209007, 'CallaQuint@gmail.com', 'Delhi'),
('Juliann Decosta', 'BizarreDecosta', 'azerty', 7656251182, 'BizarreDecosta@gmail.com', 'Delhi'),
('Marlena Deherrera', 'CameraDeherrera', 'password1', 3692807563, 'CameraDeherrera@gmail.com', 'Delhi'),
('Hortensia Gallucci', 'GaleaGallucci', '12345', 4070244870, 'GaleaGallucci@gmail.com', 'Delhi'),
('Camelia Vidal', 'CameliaAlaila', 'sunshine', 9877416106, 'CameliaAlaila@gmail.com', 'Delhi'),
('Conception Mcquay', 'BooshMcquay', 'shadow', 6250929450, 'BooshMcquay@gmail.com', 'Delhi'),
('Manuela Sandin', 'BandingSandin', 'monkey', 7855841492, 'BandingSandin@outlook.com', 'Delhi'),
('Chang Atherton', 'AthertonBlab', '1234', 492374289, 'AthertonBlab@gmail.com', 'Delhi'),
('Teisha Bourg', 'BoulderBourg', 'photoshop', 9751803297, 'BoulderBourg@gmail.com', 'Delhi'),
('Ignacio Dorn', 'CornDorn', 'letmein', 890997906, 'CornDorn@gmail.com', 'Delhi'),
('Cleo Schow', 'BessieSchow', '1234567890', 5470209007, 'BessieSchow@gmail.com', 'Delhi'),
('Sharlene Calo', 'CakeCalo', 'admin', 7656251182, 'CakeCalo@gmail.com', 'Delhi'),
('Reiko Doubleday', 'AnhartDoubleday', '123123', 3692807563, 'AnhartDoubleday@outlook.com', 'Delhi'),
('Donnette Brewster', 'BrewsterAmerica', 'adobe123', 4070244870, 'BrewsterAmerica@gmal.com', 'Delhi'),
('Ute Parks', 'ClownUte', '0987 74161', 9877416106, 'ClownUte@gmail.com', 'Delhi'),
('Muriel Provenzano', 'BookMuriel', '000000', 6250929450, 'BookMuriel@gmail.com', 'Delhi'),
('Paulita Bigler', 'BiglerFunky', '54321', 7855841492, 'BiglerFunky@gmail.com', 'Delhi'),
('Shavon Jeff', 'KinkyJeff', '111111', 492374289, 'KinkyJeff@gmail.com', 'Delhi'),
('Pamila Dumire', 'DumireDummy', '123456789', 2753973926, 'DumireDummy@oulook.com', 'Delhi'),
('Karena Whitehouse', 'BWithWhitehouse', 'abc123', 4747203439, 'BWithWhitehouse@gmail.com', 'Delhi'),
('Eli Carrizales', 'ArrivalCarrizales', 'qwerty', 8952766481, 'ArrivalCarrizales@gmail.com', 'Delhi'),
('Kristopher Modeste', 'CipherKristopher', '12345678 ', 9605582487, 'CipherKristopher@gmail.com', 'Delhi'),
('Randi Viger', 'AlliViger', 'password', 6335329372, 'AlliViger@gmail.com', 'Delhi'),
('Janel Dehart', 'DehartCanyons', '123456', 3556722755, 'DehartCanyons@yahoo.com', 'Delhi'),
('Jeff Adkins', 'JeffAd', 'jeffboi', 9815321421, 'JeffAd@gmail.com', 'Delhi'),
('Michael Bean', 'BeanieBoy', 'bingo', 8575206244, 'BeanieBoy@gmail.com', 'Delhi'),
('Sarah wilson', 'ItzSarah', 'cool123', 987654321, 'ItzSarah@outlook.com', 'Delhi'),
('Diana Taylor', 'DameDiana', 'wonderwoma', 8076151530, 'DameDiana@gmail.com', 'Delhi'),
('Steve Medrano', 'CapSteve', 'mramerica', 9335329872, 'CapSteve@gmail.com', 'Delhi'),
('Jeff Adkins', 'JeffBoi', 'jaywalk', 8974513130, 'JeffBoi@gmail.com', 'Delhi'),
('Jeff Majesty', 'MajestyBoi', 'jordanfan', 6672341980, 'MajestyBoi@gmail.com', 'Delhi'),
('Sarah Jones', 'JJones', 'qwerty123', 7856123456, 'JJones@outlook.com', 'Delhi'),
('Ramesh Singh', 'RameshCoolBoi', 'barone', 7654891204, 'RameshCoolBoi@gmail.com', 'Delhi'),
('Sparsh Singh', 'ChocolateBoi', 'Fishstick', 7791980561, 'ChocolateBoi@gmail.com', 'Delhi'),
('Sourish Das', 'GlassedSmile', 'haithere', 8433561179, 'GlassedSmile@gmail.com', 'Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `goosebumps`
--

DROP TABLE IF EXISTS `goosebumps`;
CREATE TABLE IF NOT EXISTS `goosebumps` (
  `Username` varchar(50) NOT NULL,
  `Venue` varchar(50) NOT NULL,
  `Date` varchar(15) NOT NULL,
  `Timing` varchar(20) NOT NULL,
  `SeatNo` varchar(10) NOT NULL,
  `PricePaid` float NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goosebumps`
--

INSERT INTO `goosebumps` (`Username`, `Venue`, `Date`, `Timing`, `SeatNo`, `PricePaid`) VALUES
('Teisha Bourg', '2', '23rd NOV 2018', '12:30 PM', '3H,3I,3J', 540),
('Chang Atherton', '1', '25th NOV 2018', '7:30 PM', ' 7A,7B,7C', 450);

-- --------------------------------------------------------

--
-- Table structure for table `justiceleague`
--

DROP TABLE IF EXISTS `justiceleague`;
CREATE TABLE IF NOT EXISTS `justiceleague` (
  `Username` varchar(50) NOT NULL,
  `Venue` varchar(50) NOT NULL,
  `Date` varchar(15) NOT NULL,
  `Timing` varchar(20) NOT NULL,
  `SeatNo` varchar(10) NOT NULL,
  `PricePaid` float NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `justiceleague`
--

INSERT INTO `justiceleague` (`Username`, `Venue`, `Date`, `Timing`, `SeatNo`, `PricePaid`) VALUES
('Ardis Traina', '1', '24th NOV 2018', '9:30 AM', '3J,4A,4B', 450),
('Waneta Frigo', '2', '24th NOV 2018', '7:30 PM', '6A', 180),
('DumireDummy', '1', '23rd NOV 2018', '12:30 PM', '9F', 150);

-- --------------------------------------------------------

--
-- Table structure for table `piratesofcaribbean`
--

DROP TABLE IF EXISTS `piratesofcaribbean`;
CREATE TABLE IF NOT EXISTS `piratesofcaribbean` (
  `Username` varchar(50) NOT NULL DEFAULT '',
  `Venue` varchar(50) NOT NULL,
  `Date` varchar(15) NOT NULL,
  `Timing` varchar(20) NOT NULL,
  `SeatNo` varchar(10) NOT NULL,
  `PricePaid` float NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pursuitofhappyness`
--

DROP TABLE IF EXISTS `pursuitofhappyness`;
CREATE TABLE IF NOT EXISTS `pursuitofhappyness` (
  `Username` varchar(50) NOT NULL,
  `Venue` varchar(50) NOT NULL,
  `Date` varchar(15) NOT NULL,
  `Timing` varchar(20) NOT NULL,
  `SeatNo` varchar(10) NOT NULL,
  `PricePaid` float NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rogueone`
--

DROP TABLE IF EXISTS `rogueone`;
CREATE TABLE IF NOT EXISTS `rogueone` (
  `Username` varchar(50) NOT NULL,
  `Venue` varchar(50) NOT NULL,
  `Date` varchar(15) NOT NULL,
  `Time` varchar(20) NOT NULL,
  `SeatNo` varchar(10) NOT NULL,
  `PricePaid` float NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rogueone`
--

INSERT INTO `rogueone` (`Username`, `Venue`, `Date`, `Time`, `SeatNo`, `PricePaid`) VALUES
('Muriel Provenzano', '2', '23rd NOV 2018', '12:30 PM', '1B,1C', 360),
('AnhartDoubleda', '1', '25th NOV 2018', '7:30 PM', '8F,8G,8H', 450);

-- --------------------------------------------------------

--
-- Table structure for table `thehost`
--

DROP TABLE IF EXISTS `thehost`;
CREATE TABLE IF NOT EXISTS `thehost` (
  `Username` varchar(50) NOT NULL,
  `Venue` varchar(50) NOT NULL,
  `Date` varchar(15) NOT NULL,
  `Timing` varchar(20) NOT NULL,
  `SeatNo` varchar(10) NOT NULL,
  `PricePaid` float NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thehost`
--

INSERT INTO `thehost` (`Username`, `Venue`, `Date`, `Timing`, `SeatNo`, `PricePaid`) VALUES
('BrewsterAmerica', '1', '24th NOV 2018', '3:30 PM', '4C', 150),
('BunnyGangemi', '2', '23rd NOV 2018 ', '9:30', '7A,7B', 300),
('ClownUte', '2', '25th NOV 2018', '3:30 PM', '9A,9B,9C', 540);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
