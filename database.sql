-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 26 Octobre 2017 à 13:53
-- Version du serveur :  5.7.19-0ubuntu0.16.04.1
-- Version de PHP :  7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `app_mga`
--

-- --------------------------------------------------------

--
-- Structure de la table `member`
--

CREATE TABLE `member` (
  `id` int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthday` DATE NOT NULL,
  `picture_url` varchar(255),
  `size` INT,
  `ref_bodysuit` varchar(100),
  `ref_jacket` varchar(100),
  `rent_is_paid` BOOLEAN,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `member`
--

INSERT INTO `member` (`firstname`, `lastname`, `birthday`, `picture_url`, `size`, `ref_bodysuit`, `ref_jacket`, `rent_is_paid`) VALUES
('Hania', 'Chakir', '2015-12-05', 'https://picsum.photos/200/300', 12, 'ref du justau Hania', 'ref de la veste Hania', true),
('Iza', 'Chakir', '2012-03-20', 'https://picsum.photos/200/300', null, null, null, false);

--
-- Structure de la table `parent`
--

CREATE TABLE `parent` (
  `id` int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255),
  `address` varchar(255),
  `phone` varchar(100),
  `bank_id` int NOT NULL,
  CONSTRAINT fk_parent_bank    
        FOREIGN KEY (bank_id)             
        REFERENCES bank(id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `parent`
--

INSERT INTO `parent` (`firstname`, `lastname`, `email`, `password`, `address`, `phone`, `bank_id`) VALUES
('Amina', 'Chakir', 'amina.aitm@gmail.com', 'password', '46 rue de la République 69330 Meyzieu', '0649819299', 1),
('Rachid', 'Chakir', 'famille_chakir@yahoo.fr', 'password', '46 rue de la République 69330 Meyzieu', '0649819015', 2);

--
-- Structure de la table `bank`
--

CREATE TABLE `bank` (
  `id` int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `name` varchar(255) NOT NULL,
  `bic` varchar(255) NOT NULL,
  `iban` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `bank`
--

INSERT INTO `bank` (`name`, `bic`, `iban`) VALUES
('BoursoBank', 'PSSTFR', '17806526637383993766'),
('LCL', 'PSSTFR', '30002173776628993766');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
