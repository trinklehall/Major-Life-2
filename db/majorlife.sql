-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 19, 2012 at 11:20 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `majorlife`
--
CREATE DATABASE IF NOT EXISTS majorlife;
GRANT ALL PRIVILEGES ON majorlife.* to 'assist'@'localhost' identified by 'assist';
USE majorlife;
-- --------------------------------------------------------

--

--
-- Table structure for table `majors`
--

CREATE TABLE IF NOT EXISTS `majors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `major` varchar(70) NOT NULL,
  `building` varchar(50) NOT NULL,
  `skill_level` int(11) NOT NULL,
  `comments` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE IF NOT EXISTS `professors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `major` varchar(70) NOT NULL,
  `fav_professor` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(22) NOT NULL,
  `password` varchar(22) NOT NULL,
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Table structure for table `professor`
--

CREATE TABLE IF NOT EXISTS `buildings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building` varchar(70) NOT NULL,
  `comments` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `user_id`) VALUES
('police', 'ee848a3b5b3fb00481d269', 1),
('free', '7ecfd8f97b4729c6ff0799', 2);

INSERT INTO `majors` (`major`, `building`, `skill_level`, `comments`) 
VALUES ('Computer Science', 'Trinkle Hall', '7/10', 'Hard but relevant'),
('English','Combs','6/10','For real intellectuals'),
('Political Science','Monroe','8/10','We know about the world'),
('Computer Science','Trinkle','6/10','Really not that bad'),
('History','Monroe','5/10','Im not sure why Im doing this'),
('English','Combs','3/10','Easy but a lot of work.'),
('Biology','Jepson','8/10','UMWs pre-med is good.'),
('Chemistry','Jepson','10/10','Forget Bio, Chem is where its at'),
('English','Combs','8/10','Why is this so hard??'),
('Political Science','Monroe','9/10','OMG the writing!');

INSERT INTO `buildings` (`building`, `comments`) 
VALUES ('Trinkle Hall', 'Old but nice'),
('Combs','Pretty nice'),
('Monroe','Monroe is AWESOME'),
('Trinkle','smells'),
('Jepson','disappointing');