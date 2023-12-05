-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 05 Décembre 2023 à 14:36
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bd_location`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `NCIN` varchar(20) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `nom_permis` int(11) NOT NULL,
  `adresse` varchar(20) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `e-mail` varchar(20) NOT NULL,
  `autres` int(11) NOT NULL,
  PRIMARY KEY (`NCIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`NCIN`, `nom`, `prenom`, `date_naissance`, `nom_permis`, `adresse`, `tel`, `e-mail`, `autres`) VALUES
('123456789', 'ankri', 'aron', '2023-11-10', 123456, '1 allée des promeneu', '0601020304', 'nom.prenom@gmail.com', 0),
('545648651', 'Zuckerberg', 'Mark', '2023-11-25', 16551156, '1 allée des promeneu', '0601020304', 'nom.prenom@gmail.com', 0);

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `num_location` int(11) NOT NULL AUTO_INCREMENT,
  `date_location` date NOT NULL,
  `immatriculation` varchar(15) NOT NULL,
  `NCIN` varchar(25) NOT NULL,
  `duree` int(11) NOT NULL,
  `prix_location` float NOT NULL,
  `caution` float NOT NULL,
  PRIMARY KEY (`num_location`),
  KEY `immatriculation` (`immatriculation`,`NCIN`),
  KEY `NCIN` (`NCIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `location`
--


-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE IF NOT EXISTS `voitures` (
  `ID` int(20) NOT NULL,
  `immatriculation` varchar(9) NOT NULL,
  `modele` varchar(20) NOT NULL,
  `prix_achat` float NOT NULL,
  `date_achat` date NOT NULL,
  `marque` varchar(20) NOT NULL,
  `num_assurance` int(20) NOT NULL,
  `km` int(20) NOT NULL,
  `carburant` varchar(20) NOT NULL,
  `boite_vitesse` varchar(20) NOT NULL,
  `nombre_porte` int(20) NOT NULL,
  PRIMARY KEY (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voitures`
--

INSERT INTO `voitures` (`ID`, `immatriculation`, `modele`, `prix_achat`, `date_achat`, `marque`, `num_assurance`, `km`, `carburant`, `boite_vitesse`, `nombre_porte`) VALUES
(1, 'AB-920-CD', 'M3 e92', 70, '2023-11-07', 'BMW', 123456789, 23560, 'essence', 'manuel', 3),
(2, 'AB-921-CD', 'M3 F80', 90, '2010-11-16', 'BMW', 123456789, 48510, 'essence', 'automatique', 5);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `voitures` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`NCIN`) REFERENCES `clients` (`NCIN`) ON DELETE CASCADE ON UPDATE CASCADE;
