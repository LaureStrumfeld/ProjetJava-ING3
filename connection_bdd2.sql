-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 07, 2019 at 04:20 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `connexion`
--

-- --------------------------------------------------------

--
-- Table structure for table `anneescolaire`
--

CREATE TABLE `anneescolaire` (
  `id_as` int(11) UNSIGNED NOT NULL,
  `id_t1` int(11) UNSIGNED NOT NULL,
  `id_t2` int(11) UNSIGNED NOT NULL,
  `id_t3` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anneescolaire`
--

INSERT INTO `anneescolaire` (`id_as`, `id_t1`, `id_t2`, `id_t3`) VALUES
(1, 1, 2, 3),
(2, 4, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `bulletin`
--

CREATE TABLE `bulletin` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_trim` int(10) UNSIGNED NOT NULL,
  `id_inscr` int(10) UNSIGNED NOT NULL,
  `app_g` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bulletin`
--

INSERT INTO `bulletin` (`id`, `id_trim`, `id_inscr`, `app_g`) VALUES
(1, 1, 1, 'Ensemble bon'),
(5, 1, 2, 'Bien'),
(3, 2, 1, 'Tres bien'),
(4, 3, 1, 'Bien '),
(6, 2, 2, 'Assez bien'),
(7, 3, 2, 'Bien'),
(8, 1, 3, 'Bien'),
(9, 2, 3, 'Excellent'),
(10, 3, 3, 'Excellent'),
(14, 1, 5, 'Bien'),
(15, 2, 5, 'Bien'),
(16, 3, 5, 'Assez bien'),
(17, 1, 6, 'Bien'),
(18, 2, 6, 'Excellent'),
(19, 3, 6, 'Bien'),
(20, 1, 7, 'Insuffisant'),
(21, 2, 7, 'Assez bien'),
(22, 3, 7, 'Assez bien'),
(23, 1, 8, 'Bien'),
(24, 2, 8, 'Assez bien'),
(25, 3, 8, 'Assez bien'),
(26, 1, 9, 'Assez bien'),
(27, 2, 9, 'Insuffisant'),
(28, 3, 9, 'Assez bien'),
(29, 1, 10, 'Excellent'),
(30, 2, 10, 'Tres bien'),
(31, 3, 10, 'Tres bien '),
(32, 1, 11, 'Assez bien'),
(33, 2, 11, 'Assez bien'),
(34, 3, 11, 'Bien'),
(35, 1, 12, 'Bien'),
(36, 2, 12, 'Bien'),
(37, 3, 12, 'Excellent'),
(38, 1, 13, 'Excellent'),
(39, 2, 13, 'Excellent'),
(40, 3, 13, 'Excellent'),
(41, 1, 14, 'Bien'),
(42, 2, 14, 'Bien'),
(43, 3, 14, 'Bien'),
(44, 1, 15, 'Insuffisant'),
(45, 2, 15, 'Insuffisant'),
(46, 3, 15, 'Insuffisant'),
(47, 1, 16, 'Bien'),
(48, 2, 16, 'Bien'),
(49, 3, 16, 'Tres bien'),
(50, 1, 17, 'ASSEZ BIEN'),
(51, 2, 17, 'ASSEZ BIEN'),
(52, 3, 17, 'BIEN'),
(53, 1, 18, 'TRES BIEN '),
(54, 2, 18, 'EXCELLENT'),
(55, 3, 18, 'TRES BIEN'),
(56, 1, 19, 'INSUFFISANT'),
(57, 2, 19, 'MAUVAIS'),
(58, 3, 19, 'INSUFFISANT'),
(59, 1, 20, 'BIEN'),
(60, 2, 20, 'ASSEZ BIEN '),
(61, 3, 20, 'ASSEZ BIEN'),
(62, 1, 21, 'TRES BIEN'),
(63, 2, 21, 'EXCELLENT'),
(64, 3, 21, 'BIEN'),
(65, 1, 22, 'ASSEZ BIEN '),
(66, 2, 22, 'ASSEZ BIEN '),
(67, 3, 22, 'INSUFFISANT'),
(68, 1, 23, 'BIEN'),
(69, 2, 23, 'BIEN '),
(70, 3, 23, 'ASSEZ BIEN'),
(71, 1, 24, 'EXCELLENT'),
(72, 2, 24, 'TRES BIEN'),
(73, 3, 24, 'TRES BIEN'),
(74, 1, 25, 'BIEN'),
(75, 2, 25, 'BIEN'),
(76, 3, 25, 'BIEN'),
(77, 1, 26, 'BIEN'),
(78, 2, 26, 'BIEN'),
(79, 3, 26, 'TRES BIEN'),
(80, 1, 27, 'MAUVAIS'),
(81, 2, 27, 'INSUFFISANT'),
(82, 3, 27, 'ASSEZ BIEN'),
(83, 1, 28, 'INSUFFISANT'),
(84, 2, 28, 'BIEN'),
(85, 3, 28, 'BIEN'),
(86, 1, 29, 'BIEN'),
(87, 2, 29, 'BIEN'),
(88, 3, 29, 'BIEN'),
(89, 1, 30, 'TRES BIEN'),
(90, 2, 30, 'BIEN'),
(91, 3, 30, 'BIEN'),
(92, 1, 31, 'BIEN'),
(93, 2, 31, 'BIEN'),
(94, 3, 31, 'EXCELLENT'),
(95, 1, 32, 'BIEN'),
(96, 2, 32, 'BIEN'),
(97, 3, 32, 'BIEN'),
(98, 1, 33, 'EXCELLENT'),
(99, 2, 33, 'EXCELLENT'),
(100, 3, 33, 'TRES BIEN'),
(101, 1, 34, 'MAUVAIS'),
(102, 2, 34, 'MAUVAIS'),
(103, 3, 34, 'INSUFFISANT'),
(104, 1, 35, 'BIEN'),
(105, 2, 35, 'BIEN'),
(106, 3, 35, 'BIEN'),
(107, 1, 36, 'EXCELLENT'),
(108, 2, 36, 'TRES BIEN'),
(109, 3, 36, 'TRES BIEN'),
(110, 1, 37, 'BIEN'),
(111, 2, 37, 'TRES BIEN'),
(112, 3, 37, 'TRES BIEN'),
(113, 1, 38, 'ASSEZ BIEN'),
(114, 2, 38, 'ASSEZ BIEN'),
(115, 3, 38, 'BIEN'),
(116, 1, 39, 'BIEN'),
(117, 2, 39, 'TRES BIEN'),
(118, 3, 39, 'BIEN'),
(119, 1, 40, 'ASSEZ BIEN'),
(120, 2, 40, 'BIEN'),
(121, 3, 40, 'TRES BIEN'),
(122, 1, 41, 'BIEN'),
(123, 2, 41, 'BIEN'),
(124, 3, 41, 'EXCELLENT'),
(125, 1, 42, 'TRES BIEN'),
(126, 2, 42, 'TRES BIEN'),
(127, 3, 42, 'BIEN'),
(128, 1, 43, 'EXCELLENT'),
(129, 2, 43, 'TRES BIEN'),
(130, 3, 43, 'EXCELLENT'),
(131, 1, 44, 'INSUFFISANT'),
(132, 2, 44, 'BIEN'),
(133, 3, 44, 'TRES BIEN'),
(134, 1, 45, 'TRES BIEN'),
(135, 2, 45, 'TRES BIEN'),
(136, 3, 45, 'TRES BIEN'),
(137, 1, 46, 'EXCELLENT'),
(138, 2, 46, 'BIEN'),
(139, 3, 46, 'BIEN'),
(140, 1, 47, 'BIEN'),
(141, 2, 47, 'ASSEZ BIEN'),
(142, 3, 47, 'ASSEZ BIEN'),
(143, 1, 48, 'BIEN'),
(144, 2, 48, 'EXCELLENT'),
(145, 3, 48, 'TRES BIEN'),
(146, 1, 49, 'BIEN'),
(147, 2, 49, 'BIEN'),
(148, 3, 49, 'BIEN'),
(149, 1, 50, 'TRES BIEN'),
(150, 2, 50, 'EXCELLENT'),
(151, 3, 50, 'EXCELLENT');

-- --------------------------------------------------------

--
-- Table structure for table `classe`
--

CREATE TABLE `classe` (
  `id_classe` int(11) UNSIGNED NOT NULL,
  `nom_classe` varchar(255) NOT NULL,
  `id_ecole` int(11) UNSIGNED NOT NULL,
  `id_niveau` int(11) UNSIGNED NOT NULL,
  `id_annee` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classe`
--

INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_ecole`, `id_niveau`, `id_annee`) VALUES
(1, '1', 1, 1, 1),
(2, '2', 1, 2, 1),
(3, '1', 1, 3, 2),
(4, '2', 1, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `detailbulletin`
--

CREATE TABLE `detailbulletin` (
  `id_detailBulletin` int(11) UNSIGNED NOT NULL,
  `appreciation_b` varchar(255) NOT NULL,
  `id_bulletin` int(11) UNSIGNED NOT NULL,
  `id_enseignement` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detailbulletin`
--

INSERT INTO `detailbulletin` (`id_detailBulletin`, `appreciation_b`, `id_bulletin`, `id_enseignement`) VALUES
(6, 'TRES BIEN', 3, 1),
(5, 'TRES BIEN', 3, 0),
(3, 'BIEN', 1, 0),
(4, 'BIEN', 1, 1),
(7, 'BIEN', 4, 0),
(8, 'BIEN', 4, 1),
(9, 'BIEN', 5, 0),
(10, 'BIEN', 5, 1),
(11, 'ASSEZ BIEN', 6, 0),
(12, 'ASSEZ BIEN', 6, 1),
(13, 'BIEN', 7, 0),
(14, 'BIEN', 7, 1),
(15, 'BIEN', 8, 0),
(16, 'BIEN', 8, 1),
(17, 'EXCELLENT', 9, 0),
(18, 'EXCELLENT', 9, 1),
(19, 'EXCELLENT', 10, 0),
(20, 'EXCELLENT', 10, 1),
(21, 'BIEN', 14, 0),
(22, 'BIEN', 14, 1),
(23, 'BIEN', 15, 0),
(24, 'BIEN', 15, 1),
(25, 'ASSEZ BIEN', 16, 0),
(26, 'ASSEZ BIEN', 16, 1),
(27, 'BIEN', 17, 0),
(28, 'BIEN', 17, 1),
(29, 'EXCELLENT', 18, 0),
(30, 'EXCELLENT', 18, 1),
(31, 'BIEN', 19, 0),
(32, 'BIEN', 19, 1),
(33, 'INSUFFISANT', 20, 0),
(34, 'INSUFFISANT', 20, 1),
(35, 'ASSEZ BIEN', 21, 0),
(36, 'ASSEZ BIEN', 21, 1),
(37, 'ASSEZ BIEN', 22, 0),
(38, 'ASSEZ BIEN', 22, 1),
(39, 'BIEN', 23, 0),
(40, 'BIEN', 23, 1),
(41, 'ASSEZ BIEN', 24, 0),
(42, 'ASSEZ BIEN', 24, 1),
(43, 'ASSEZ BIEN', 25, 0),
(44, 'ASSEZ BIEN', 25, 1),
(45, 'EXCELLENT', 29, 0),
(46, 'EXCELLENT', 29, 1),
(47, 'TRES BIEN', 30, 0),
(48, 'TRES BIEN', 30, 1),
(49, 'TRES BIEN', 31, 0),
(50, 'TRES BIEN', 31, 1),
(51, 'ASSEZ BIEN', 32, 0),
(52, 'ASSEZ BIEN', 32, 1),
(53, 'ASSEZ BIEN', 33, 0),
(54, 'ASSEZ BIEN', 33, 1),
(55, 'BIEN', 34, 0),
(56, 'BIEN', 34, 1),
(57, 'BIEN', 35, 2),
(58, 'BIEN', 35, 6),
(59, 'EXCELLENT', 36, 2),
(60, 'EXCELLENT', 36, 6),
(61, 'EXCELLENT', 37, 2),
(62, 'EXCELLENT', 37, 6),
(63, 'EXCELLENT', 38, 2),
(64, 'EXCELLENT', 38, 6),
(65, 'EXCELLENT', 39, 2),
(66, 'EXCELLENT', 39, 6),
(67, 'EXCELLENT', 40, 2),
(68, 'EXCELLENT', 40, 6);

-- --------------------------------------------------------

--
-- Table structure for table `discipline`
--

CREATE TABLE `discipline` (
  `id_discipline` int(11) UNSIGNED NOT NULL,
  `nom_discipline` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discipline`
--

INSERT INTO `discipline` (`id_discipline`, `nom_discipline`) VALUES
(1, 'Mathématiques'),
(2, 'Français');

-- --------------------------------------------------------

--
-- Table structure for table `ecole`
--

CREATE TABLE `ecole` (
  `id_ecole` int(11) UNSIGNED NOT NULL,
  `nom_ecole` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecole`
--

INSERT INTO `ecole` (`id_ecole`, `nom_ecole`) VALUES
(1, 'ecole des bois');

-- --------------------------------------------------------

--
-- Table structure for table `enseignement`
--

CREATE TABLE `enseignement` (
  `id_enseignement` int(11) UNSIGNED NOT NULL,
  `id_classe` int(11) UNSIGNED NOT NULL,
  `id_discipline` int(11) UNSIGNED NOT NULL,
  `id_p` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enseignement`
--

INSERT INTO `enseignement` (`id_enseignement`, `id_classe`, `id_discipline`, `id_p`) VALUES
(0, 1, 1, 4),
(1, 1, 2, 51),
(2, 2, 1, 4),
(3, 3, 1, 4),
(4, 4, 1, 4),
(5, 5, 1, 4),
(6, 2, 2, 51),
(7, 3, 2, 51),
(8, 4, 2, 51),
(9, 5, 2, 51);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `id_evaluation` int(11) UNSIGNED NOT NULL,
  `note` double UNSIGNED NOT NULL,
  `appreciation_e` varchar(255) NOT NULL,
  `id_db` int(11) UNSIGNED NOT NULL,
  `id_p` int(11) UNSIGNED NOT NULL,
  `id_discipline` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`id_evaluation`, `note`, `appreciation_e`, `id_db`, `id_p`, `id_discipline`) VALUES
(6, 20, 'TRES BIEN', 6, 1, 2),
(7, 20, 'TRES BIEN', 5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `inscription`
--

CREATE TABLE `inscription` (
  `id_inscription` int(11) UNSIGNED NOT NULL,
  `id_classe` int(11) UNSIGNED NOT NULL,
  `id_p` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inscription`
--

INSERT INTO `inscription` (`id_inscription`, `id_classe`, `id_p`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 2, 19),
(20, 2, 20),
(21, 3, 21),
(22, 3, 22),
(23, 3, 23),
(24, 3, 24),
(25, 3, 25),
(26, 3, 26),
(27, 3, 27),
(28, 3, 28),
(29, 3, 29),
(30, 3, 30),
(31, 4, 31),
(32, 4, 32),
(33, 4, 33),
(34, 4, 34),
(35, 4, 35),
(36, 4, 36),
(37, 4, 37),
(38, 4, 38),
(39, 4, 39),
(40, 4, 40),
(41, 5, 41),
(42, 5, 42),
(43, 5, 43),
(44, 5, 44),
(45, 5, 45),
(46, 5, 46),
(47, 5, 47),
(48, 5, 48),
(49, 5, 49),
(50, 5, 50);

-- --------------------------------------------------------

--
-- Table structure for table `liste_classe`
--

CREATE TABLE `liste_classe` (
  `id_ecole` int(11) UNSIGNED NOT NULL,
  `id_classe` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `liste_eval`
--

CREATE TABLE `liste_eval` (
  `id_p` int(11) UNSIGNED NOT NULL,
  `id_evaluation` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `niveau`
--

CREATE TABLE `niveau` (
  `id_niveau` int(11) UNSIGNED NOT NULL,
  `nom_niveau` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `niveau`
--

INSERT INTO `niveau` (`id_niveau`, `nom_niveau`) VALUES
(1, 'CP'),
(2, 'CE1'),
(3, 'CE2'),
(4, 'CM1'),
(5, 'CM2');

-- --------------------------------------------------------

--
-- Table structure for table `personne`
--

CREATE TABLE `personne` (
  `id_personne` int(11) UNSIGNED NOT NULL,
  `nom_p` varchar(255) NOT NULL,
  `prenom_p` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personne`
--

INSERT INTO `personne` (`id_personne`, `nom_p`, `prenom_p`, `type`) VALUES
(1, 'eleve1_n', 'eleve1_p', 1),
(2, 'eleve2_n', 'eleve2_p', 1),
(3, 'eleve3_n', 'eleve3_p', 1),
(4, 'professeur1_n', 'professeur1_p', 0),
(5, 'eg', 'fgef', 1),
(6, 'blanchard', 'Lisa', 1),
(7, 'berq', 'Charlotte', 1),
(8, 'dupont', 'Helene', 1),
(9, 'Hu', 'Chang', 1),
(10, 'Maurin', 'Maxime', 1),
(11, 'Tran', 'Sebastien', 1),
(12, 'Benguigui', 'David', 1),
(13, 'Le', 'Sarah', 1),
(14, 'Gérardin', 'Zoé', 1),
(15, 'Guédamour', 'Alix', 1),
(16, 'Lewertowski', 'Noemie', 1),
(17, 'Besson', 'Eugénie', 1),
(18, 'Hadjean', 'Guillaume', 1),
(19, 'Allemon', 'Nelyne', 1),
(20, 'Vanderesh', 'Saskia', 1),
(21, 'Brion', 'Alexandre', 1),
(22, 'Sotte', 'Alexis', 1),
(23, 'Forest', 'Tristan', 1),
(24, 'Chaselerie', 'Juliette', 1),
(25, 'Renon', 'Manon', 1),
(26, 'Rose', 'Jade', 1),
(27, 'Giaretta', 'Elisa', 1),
(28, 'Servant', 'Pauline', 1),
(29, 'Roche', 'Maelys', 1),
(30, 'Baude', 'Lena', 1),
(31, 'Rietsh', 'Lucas', 1),
(32, 'Drancy', 'Estelle', 1),
(33, 'Strumfeld', 'Laure', 1),
(34, 'Fayol', 'Clément', 1),
(35, 'Compoint', 'Zoé', 1),
(36, 'Reynaud', 'Justine', 1),
(37, 'David', 'Alice', 1),
(38, 'Tadrous', 'Dany', 1),
(39, 'Guiesse', 'Adrien', 1),
(40, 'LeDain', 'Hadrien', 1),
(41, 'Bolin', 'Lucie', 1),
(42, 'Mars', 'Véronica', 1),
(43, 'Cassi', 'Léo', 1),
(44, 'Ploteau', 'Marie', 1),
(45, 'Luratti', 'Clément', 1),
(46, 'Dreyfus', 'Eva', 1),
(47, 'Sani', 'Axel', 1),
(48, 'Sorton', 'Aurélie', 1),
(49, 'Juliano', 'Manola', 1),
(50, 'Rohart', 'Margaux', 1),
(51, 'Segado', 'JP', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trimestre`
--

CREATE TABLE `trimestre` (
  `id_trimestre` int(11) UNSIGNED NOT NULL,
  `numero` int(11) UNSIGNED NOT NULL,
  `debut` date NOT NULL,
  `fin` date NOT NULL,
  `id_annee` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trimestre`
--

INSERT INTO `trimestre` (`id_trimestre`, `numero`, `debut`, `fin`, `id_annee`) VALUES
(4, 1, '2019-09-01', '2019-12-01', 2),
(5, 2, '2019-12-02', '2020-03-01', 2),
(6, 3, '2020-03-02', '2020-06-01', 2),
(1, 1, '2018-09-01', '2018-12-01', 1),
(2, 2, '2018-12-02', '2019-03-01', 1),
(3, 3, '2019-03-02', '2019-06-01', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anneescolaire`
--
ALTER TABLE `anneescolaire`
  ADD PRIMARY KEY (`id_as`);

--
-- Indexes for table `bulletin`
--
ALTER TABLE `bulletin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id_classe`);

--
-- Indexes for table `detailbulletin`
--
ALTER TABLE `detailbulletin`
  ADD PRIMARY KEY (`id_detailBulletin`),
  ADD KEY `trimestre` (`id_enseignement`),
  ADD KEY `id_trim` (`id_bulletin`);

--
-- Indexes for table `discipline`
--
ALTER TABLE `discipline`
  ADD PRIMARY KEY (`id_discipline`);

--
-- Indexes for table `ecole`
--
ALTER TABLE `ecole`
  ADD PRIMARY KEY (`id_ecole`);

--
-- Indexes for table `enseignement`
--
ALTER TABLE `enseignement`
  ADD PRIMARY KEY (`id_enseignement`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`id_evaluation`);

--
-- Indexes for table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`id_inscription`),
  ADD UNIQUE KEY `id_p` (`id_p`),
  ADD KEY `id_classe` (`id_classe`,`id_p`);

--
-- Indexes for table `liste_eval`
--
ALTER TABLE `liste_eval`
  ADD KEY `evaluation` (`id_p`,`id_evaluation`);

--
-- Indexes for table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`id_niveau`);

--
-- Indexes for table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id_personne`);

--
-- Indexes for table `trimestre`
--
ALTER TABLE `trimestre`
  ADD PRIMARY KEY (`id_trimestre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anneescolaire`
--
ALTER TABLE `anneescolaire`
  MODIFY `id_as` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bulletin`
--
ALTER TABLE `bulletin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `classe`
--
ALTER TABLE `classe`
  MODIFY `id_classe` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detailbulletin`
--
ALTER TABLE `detailbulletin`
  MODIFY `id_detailBulletin` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `discipline`
--
ALTER TABLE `discipline`
  MODIFY `id_discipline` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ecole`
--
ALTER TABLE `ecole`
  MODIFY `id_ecole` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enseignement`
--
ALTER TABLE `enseignement`
  MODIFY `id_enseignement` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `id_evaluation` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `id_inscription` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `niveau`
--
ALTER TABLE `niveau`
  MODIFY `id_niveau` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personne`
--
ALTER TABLE `personne`
  MODIFY `id_personne` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `trimestre`
--
ALTER TABLE `trimestre`
  MODIFY `id_trimestre` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
