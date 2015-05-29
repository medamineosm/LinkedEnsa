-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 29 Mai 2015 à 19:29
-- Version du serveur :  5.6.20
-- Version de PHP :  5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `linkedensa`
--

-- --------------------------------------------------------

--
-- Structure de la table `catalogue_ecoles`
--

CREATE TABLE IF NOT EXISTS `catalogue_ecoles` (
`id_ecole` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `catalogue_ecoles`
--

INSERT INTO `catalogue_ecoles` (`id_ecole`, `nom`, `adresse`, `telephone`, `image`) VALUES
(1, 'ENSA Khouribga', 'Bd Beni amir Khouribga', '0522212121', '');

-- --------------------------------------------------------

--
-- Structure de la table `catalogue_entreprises`
--

CREATE TABLE IF NOT EXISTS `catalogue_entreprises` (
`id_entreprise` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `catalogue_entreprises`
--

INSERT INTO `catalogue_entreprises` (`id_entreprise`, `nom`, `adresse`, `telephone`, `image`) VALUES
(1, 'Nawar IT', 'Berrechid', '0522212223', '');

-- --------------------------------------------------------

--
-- Structure de la table `competences`
--

CREATE TABLE IF NOT EXISTS `competences` (
`identifiant` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `etudiant` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `entreprises`
--

CREATE TABLE IF NOT EXISTS `entreprises` (
  `login` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE IF NOT EXISTS `etudiants` (
  `login` varchar(50) NOT NULL,
  `cne` varchar(12) NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `id_groupe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etudiants`
--

INSERT INTO `etudiants` (`login`, `cne`, `date_naissance`, `id_groupe`) VALUES
('Akrim29377591', '1129377591', NULL, 13),
('Hasnaoui29377549', '1129377549', NULL, 13),
('Kacimi29377935', '1129377935', NULL, 13),
('Meryem29377514', '1129377514', NULL, 13),
('Morabit29377653', '1129377653', NULL, 13),
('Mouad29377841', '1129377841', NULL, 13),
('Ouasmine29297718', '1129297718', NULL, 13),
('Soukaina29374589', '1129374589', NULL, 13);

-- --------------------------------------------------------

--
-- Structure de la table `experiences`
--

CREATE TABLE IF NOT EXISTS `experiences` (
`identifiant` int(11) NOT NULL,
  `entreprise` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `debut` date NOT NULL,
  `fin` date NOT NULL,
  `description` text NOT NULL,
  `en_cours` tinyint(1) NOT NULL,
  `etudiant` varchar(50) NOT NULL,
  `id_entreprise` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `experiences`
--

INSERT INTO `experiences` (`identifiant`, `entreprise`, `titre`, `debut`, `fin`, `description`, `en_cours`, `etudiant`, `id_entreprise`) VALUES
(1, 'Nawar IT', 'Stage de fin d''etudes', '2015-05-01', '2015-07-01', 'Stage de fin d etudes...', 1, 'Morabit29377653', 1);

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

CREATE TABLE IF NOT EXISTS `formations` (
`identifiant` int(11) NOT NULL,
  `ecole` varchar(255) DEFAULT NULL,
  `annee_debut` int(11) NOT NULL,
  `annee_fin` int(11) NOT NULL,
  `diplome` text NOT NULL,
  `description` text NOT NULL,
  `etudiant` varchar(50) NOT NULL,
  `id_ecole` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `formations`
--

INSERT INTO `formations` (`identifiant`, `ecole`, `annee_debut`, `annee_fin`, `diplome`, `description`, `etudiant`, `id_ecole`) VALUES
(3, 'ENSA Khouribga', 2014, 2016, 'diplome d''ingenieur', 'ecole a khouribga', 'Morabit29377653', 1);

-- --------------------------------------------------------

--
-- Structure de la table `groupes`
--

CREATE TABLE IF NOT EXISTS `groupes` (
`id_groupe` int(11) NOT NULL,
  `nom_groupe` varchar(50) NOT NULL,
  `filiere` varchar(50) NOT NULL,
  `niveau` varchar(20) NOT NULL,
  `promotion` varchar(10) NOT NULL,
  `createur` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `groupes`
--

INSERT INTO `groupes` (`id_groupe`, `nom_groupe`, `filiere`, `niveau`, `promotion`, `createur`) VALUES
(13, 'ENSAK 4', 'genie informatique', '4eme année', '2015', 'yunho');

-- --------------------------------------------------------

--
-- Structure de la table `langues`
--

CREATE TABLE IF NOT EXISTS `langues` (
`identifiant` int(11) NOT NULL,
  `niveau` varchar(30) NOT NULL,
  `etudiant` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `logins`
--

CREATE TABLE IF NOT EXISTS `logins` (
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `type_compte` enum('prof','etudiant','admin','entreprise') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `logins`
--

INSERT INTO `logins` (`login`, `password`, `nom`, `telephone`, `email`, `adresse`, `type_compte`) VALUES
('Akrim29377591', '9I81nxgvui', 'Akrim Ismail', NULL, 'ismail.akrim@gmail.com', NULL, 'etudiant'),
('Hasnaoui29377549', 'VSfbxLrigN', 'Hasnaoui Yassine', NULL, 'hasnaoui.yassine@gmail.com', NULL, 'etudiant'),
('Kacimi29377935', 'gt&jEIu1pj', 'Kacimi Hamza', NULL, 'kacimi.hamza@gmail.com', NULL, 'etudiant'),
('Meryem29377514', 'Sw8czG9WRO', 'Meryem Mazzi', NULL, 'dream_girl@gmail.com', NULL, 'etudiant'),
('Morabit29377653', '9kwEujgGq8', 'Morabit Mouad', NULL, 'mouad2005@hotmail.com', NULL, 'etudiant'),
('Mouad29377841', 'MNvuI$PDXv', 'Mouad Sahi', NULL, 'mouad.sahi@gmail.com', NULL, 'etudiant'),
('Ouasmine29297718', '5UcRei5DYd', 'Ouasmine Mohammed Amine', NULL, 'amine.ouasmine@gmail.com', NULL, 'etudiant'),
('Soukaina29374589', 'jZuZcHzm6b', 'Soukaina Mazzir', NULL, 'soukaina_mazzir@gmail.com', NULL, 'etudiant'),
('yunho', 'lolilol', 'Morabit Mouad', '0664968922', 'mouad2005@hotmail.com', 'Hay moulay abdellah rue 69 n 23', 'prof');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
`id_message` int(11) NOT NULL,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `objet` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `msg_lu` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `mots_cle`
--

CREATE TABLE IF NOT EXISTS `mots_cle` (
  `nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `mots_offres`
--

CREATE TABLE IF NOT EXISTS `mots_offres` (
  `id_offre` int(11) NOT NULL,
  `mot_cle` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `offres`
--

CREATE TABLE IF NOT EXISTS `offres` (
  `identifiant` int(11) NOT NULL,
  `date_offre` datetime NOT NULL,
  `date_expiration` date DEFAULT NULL,
  `etat_offre` enum('ouvert','ferme') NOT NULL,
  `description` text NOT NULL,
  `entreprise` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `offres_etudiants`
--

CREATE TABLE IF NOT EXISTS `offres_etudiants` (
  `id_offre` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `etat_offre` enum('attente','valide') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `professeurs`
--

CREATE TABLE IF NOT EXISTS `professeurs` (
  `login` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `professeurs`
--

INSERT INTO `professeurs` (`login`, `grade`) VALUES
('yunho', 'Professeur Assistant');

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

CREATE TABLE IF NOT EXISTS `projets` (
`identifiant` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `etudiant` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `projets`
--

INSERT INTO `projets` (`identifiant`, `nom`, `date`, `description`, `fonction`, `lieu`, `etudiant`) VALUES
(1, 'Projet fin d etudes', '2015-05-01', 'Projet de fin d etudes a la societé nawar...', 'Développeur', 'Nawar IT - Berrechid', 'Morabit29377653');

-- --------------------------------------------------------

--
-- Structure de la table `secteurs_activite`
--

CREATE TABLE IF NOT EXISTS `secteurs_activite` (
`identifiant` int(11) NOT NULL,
  `intitule` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `secteurs_entreprise`
--

CREATE TABLE IF NOT EXISTS `secteurs_entreprise` (
  `login` varchar(50) NOT NULL,
  `id_secteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `suggestions`
--

CREATE TABLE IF NOT EXISTS `suggestions` (
  `professeur` varchar(50) NOT NULL,
  `etudiant` varchar(50) NOT NULL,
  `id_offre` int(11) NOT NULL,
  `date_suggestion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `catalogue_ecoles`
--
ALTER TABLE `catalogue_ecoles`
 ADD PRIMARY KEY (`id_ecole`);

--
-- Index pour la table `catalogue_entreprises`
--
ALTER TABLE `catalogue_entreprises`
 ADD PRIMARY KEY (`id_entreprise`);

--
-- Index pour la table `competences`
--
ALTER TABLE `competences`
 ADD PRIMARY KEY (`identifiant`), ADD KEY `etudiant` (`etudiant`);

--
-- Index pour la table `entreprises`
--
ALTER TABLE `entreprises`
 ADD PRIMARY KEY (`login`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
 ADD PRIMARY KEY (`login`), ADD UNIQUE KEY `cne` (`cne`), ADD KEY `id_groupe` (`id_groupe`);

--
-- Index pour la table `experiences`
--
ALTER TABLE `experiences`
 ADD PRIMARY KEY (`identifiant`), ADD KEY `etudiant` (`etudiant`), ADD KEY `id_entreprise` (`id_entreprise`);

--
-- Index pour la table `formations`
--
ALTER TABLE `formations`
 ADD PRIMARY KEY (`identifiant`), ADD KEY `etudiant` (`etudiant`), ADD KEY `id_ecole` (`id_ecole`);

--
-- Index pour la table `groupes`
--
ALTER TABLE `groupes`
 ADD PRIMARY KEY (`id_groupe`), ADD UNIQUE KEY `nom_groupe` (`nom_groupe`), ADD KEY `createur` (`createur`);

--
-- Index pour la table `langues`
--
ALTER TABLE `langues`
 ADD PRIMARY KEY (`identifiant`), ADD KEY `etudiant` (`etudiant`);

--
-- Index pour la table `logins`
--
ALTER TABLE `logins`
 ADD PRIMARY KEY (`login`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
 ADD PRIMARY KEY (`id_message`), ADD KEY `source` (`source`), ADD KEY `destination` (`destination`);

--
-- Index pour la table `mots_cle`
--
ALTER TABLE `mots_cle`
 ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `mots_offres`
--
ALTER TABLE `mots_offres`
 ADD PRIMARY KEY (`id_offre`,`mot_cle`), ADD KEY `mot_cle` (`mot_cle`);

--
-- Index pour la table `offres`
--
ALTER TABLE `offres`
 ADD PRIMARY KEY (`identifiant`), ADD KEY `entreprise` (`entreprise`);

--
-- Index pour la table `offres_etudiants`
--
ALTER TABLE `offres_etudiants`
 ADD PRIMARY KEY (`id_offre`,`login`), ADD KEY `login` (`login`);

--
-- Index pour la table `professeurs`
--
ALTER TABLE `professeurs`
 ADD PRIMARY KEY (`login`);

--
-- Index pour la table `projets`
--
ALTER TABLE `projets`
 ADD PRIMARY KEY (`identifiant`), ADD KEY `etudiant` (`etudiant`);

--
-- Index pour la table `secteurs_activite`
--
ALTER TABLE `secteurs_activite`
 ADD PRIMARY KEY (`identifiant`);

--
-- Index pour la table `secteurs_entreprise`
--
ALTER TABLE `secteurs_entreprise`
 ADD PRIMARY KEY (`login`,`id_secteur`), ADD KEY `id_secteur` (`id_secteur`);

--
-- Index pour la table `suggestions`
--
ALTER TABLE `suggestions`
 ADD PRIMARY KEY (`professeur`,`etudiant`,`id_offre`), ADD KEY `etudiant` (`etudiant`), ADD KEY `id_offre` (`id_offre`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `catalogue_ecoles`
--
ALTER TABLE `catalogue_ecoles`
MODIFY `id_ecole` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `catalogue_entreprises`
--
ALTER TABLE `catalogue_entreprises`
MODIFY `id_entreprise` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `competences`
--
ALTER TABLE `competences`
MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `experiences`
--
ALTER TABLE `experiences`
MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `formations`
--
ALTER TABLE `formations`
MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `groupes`
--
ALTER TABLE `groupes`
MODIFY `id_groupe` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `langues`
--
ALTER TABLE `langues`
MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `projets`
--
ALTER TABLE `projets`
MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `secteurs_activite`
--
ALTER TABLE `secteurs_activite`
MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `competences`
--
ALTER TABLE `competences`
ADD CONSTRAINT `competences_ibfk_1` FOREIGN KEY (`etudiant`) REFERENCES `etudiants` (`login`);

--
-- Contraintes pour la table `entreprises`
--
ALTER TABLE `entreprises`
ADD CONSTRAINT `entreprises_ibfk_1` FOREIGN KEY (`login`) REFERENCES `logins` (`login`);

--
-- Contraintes pour la table `etudiants`
--
ALTER TABLE `etudiants`
ADD CONSTRAINT `etudiants_ibfk_1` FOREIGN KEY (`login`) REFERENCES `logins` (`login`),
ADD CONSTRAINT `etudiants_ibfk_2` FOREIGN KEY (`id_groupe`) REFERENCES `groupes` (`id_groupe`);

--
-- Contraintes pour la table `experiences`
--
ALTER TABLE `experiences`
ADD CONSTRAINT `experiences_ibfk_1` FOREIGN KEY (`etudiant`) REFERENCES `etudiants` (`login`),
ADD CONSTRAINT `experiences_ibfk_2` FOREIGN KEY (`id_entreprise`) REFERENCES `catalogue_entreprises` (`id_entreprise`);

--
-- Contraintes pour la table `formations`
--
ALTER TABLE `formations`
ADD CONSTRAINT `formations_ibfk_1` FOREIGN KEY (`etudiant`) REFERENCES `etudiants` (`login`),
ADD CONSTRAINT `formations_ibfk_2` FOREIGN KEY (`id_ecole`) REFERENCES `catalogue_ecoles` (`id_ecole`);

--
-- Contraintes pour la table `groupes`
--
ALTER TABLE `groupes`
ADD CONSTRAINT `groupes_ibfk_1` FOREIGN KEY (`createur`) REFERENCES `professeurs` (`login`);

--
-- Contraintes pour la table `langues`
--
ALTER TABLE `langues`
ADD CONSTRAINT `langues_ibfk_1` FOREIGN KEY (`etudiant`) REFERENCES `etudiants` (`login`);

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`source`) REFERENCES `logins` (`login`),
ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`destination`) REFERENCES `logins` (`login`);

--
-- Contraintes pour la table `mots_offres`
--
ALTER TABLE `mots_offres`
ADD CONSTRAINT `mots_offres_ibfk_1` FOREIGN KEY (`id_offre`) REFERENCES `offres` (`identifiant`),
ADD CONSTRAINT `mots_offres_ibfk_2` FOREIGN KEY (`mot_cle`) REFERENCES `mots_cle` (`nom`);

--
-- Contraintes pour la table `offres`
--
ALTER TABLE `offres`
ADD CONSTRAINT `offres_ibfk_1` FOREIGN KEY (`entreprise`) REFERENCES `entreprises` (`login`);

--
-- Contraintes pour la table `offres_etudiants`
--
ALTER TABLE `offres_etudiants`
ADD CONSTRAINT `offres_etudiants_ibfk_1` FOREIGN KEY (`id_offre`) REFERENCES `offres` (`identifiant`),
ADD CONSTRAINT `offres_etudiants_ibfk_2` FOREIGN KEY (`login`) REFERENCES `etudiants` (`login`);

--
-- Contraintes pour la table `professeurs`
--
ALTER TABLE `professeurs`
ADD CONSTRAINT `professeurs_ibfk_1` FOREIGN KEY (`login`) REFERENCES `logins` (`login`);

--
-- Contraintes pour la table `projets`
--
ALTER TABLE `projets`
ADD CONSTRAINT `projets_ibfk_1` FOREIGN KEY (`etudiant`) REFERENCES `etudiants` (`login`);

--
-- Contraintes pour la table `secteurs_entreprise`
--
ALTER TABLE `secteurs_entreprise`
ADD CONSTRAINT `secteurs_entreprise_ibfk_1` FOREIGN KEY (`login`) REFERENCES `logins` (`login`),
ADD CONSTRAINT `secteurs_entreprise_ibfk_2` FOREIGN KEY (`id_secteur`) REFERENCES `secteurs_activite` (`identifiant`);

--
-- Contraintes pour la table `suggestions`
--
ALTER TABLE `suggestions`
ADD CONSTRAINT `suggestions_ibfk_1` FOREIGN KEY (`professeur`) REFERENCES `professeurs` (`login`),
ADD CONSTRAINT `suggestions_ibfk_2` FOREIGN KEY (`etudiant`) REFERENCES `etudiants` (`login`),
ADD CONSTRAINT `suggestions_ibfk_3` FOREIGN KEY (`id_offre`) REFERENCES `offres` (`identifiant`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
