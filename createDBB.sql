-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 28 mai 2019 à 14:41
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `connection`
--

-- --------------------------------------------------------

--
-- Structure de la table `anneescolaire`
--

DROP TABLE IF EXISTS `anneescolaire`;
CREATE TABLE IF NOT EXISTS `anneescolaire` (
  `id_as` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_t1` int(11) UNSIGNED NOT NULL,
  `id_t2` int(11) UNSIGNED NOT NULL,
  `id_t3` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_as`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bulletin`
--

DROP TABLE IF EXISTS `bulletin`;
CREATE TABLE IF NOT EXISTS `bulletin` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_trim` int(10) UNSIGNED NOT NULL,
  `id_inscr` int(10) UNSIGNED NOT NULL,
  `app_g` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

DROP TABLE IF EXISTS `classe`;
CREATE TABLE IF NOT EXISTS `classe` (
  `id_classe` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom_classe` varchar(255) NOT NULL,
  `id_ecole` int(11) UNSIGNED NOT NULL,
  `id_annee` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_classe`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detailbulletin`
--

DROP TABLE IF EXISTS `detailbulletin`;
CREATE TABLE IF NOT EXISTS `detailbulletin` (
  `id_detailBulletin` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `appreciation_b` varchar(255) NOT NULL,
  `id_trim` int(11) UNSIGNED NOT NULL,
  `id_insc` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_detailBulletin`),
  KEY `trimestre` (`id_insc`),
  KEY `id_trim` (`id_trim`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `discipline`
--

DROP TABLE IF EXISTS `discipline`;
CREATE TABLE IF NOT EXISTS `discipline` (
  `id_discipline` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom_discipline` varchar(255) NOT NULL,
  PRIMARY KEY (`id_discipline`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

DROP TABLE IF EXISTS `ecole`;
CREATE TABLE IF NOT EXISTS `ecole` (
  `id_ecole` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom_ecole` varchar(255) NOT NULL,
  PRIMARY KEY (`id_ecole`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `enseignement`
--

DROP TABLE IF EXISTS `enseignement`;
CREATE TABLE IF NOT EXISTS `enseignement` (
  `id_enseignement` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_classe` int(11) UNSIGNED NOT NULL,
  `id_discipline` int(11) UNSIGNED NOT NULL,
  `id_p` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_enseignement`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE IF NOT EXISTS `evaluation` (
  `id_evaluation` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `note` double UNSIGNED NOT NULL,
  `appreciation_e` varchar(255) NOT NULL,
  `id_db` int(11) UNSIGNED NOT NULL,
  `id_p` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_evaluation`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

DROP TABLE IF EXISTS `inscription`;
CREATE TABLE IF NOT EXISTS `inscription` (
  `id_inscription` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_classe` int(11) UNSIGNED NOT NULL,
  `id_p` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_inscription`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `liste_classe`
--

DROP TABLE IF EXISTS `liste_classe`;
CREATE TABLE IF NOT EXISTS `liste_classe` (
  `id_ecole` int(11) UNSIGNED NOT NULL,
  `id_classe` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `liste_eval`
--

DROP TABLE IF EXISTS `liste_eval`;
CREATE TABLE IF NOT EXISTS `liste_eval` (
  `id_p` int(11) UNSIGNED NOT NULL,
  `id_evaluation` int(11) UNSIGNED NOT NULL,
  KEY `evaluation` (`id_p`,`id_evaluation`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
CREATE TABLE IF NOT EXISTS `niveau` (
  `id_niveau` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom_niveau` varchar(255) NOT NULL,
  PRIMARY KEY (`id_niveau`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `id_personne` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom_p` varchar(255) NOT NULL,
  `prenom_p` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id_personne`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `trimestre`
--

DROP TABLE IF EXISTS `trimestre`;
CREATE TABLE IF NOT EXISTS `trimestre` (
  `id_trimestre` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `numero` int(11) UNSIGNED NOT NULL,
  `debut` date NOT NULL,
  `fin` date NOT NULL,
  `id_annee` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_trimestre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
