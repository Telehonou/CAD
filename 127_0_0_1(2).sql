-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 03 Mai 2018 à 17:57
-- Version du serveur :  10.1.21-MariaDB
-- Version de PHP :  7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `access_control`
--
CREATE DATABASE IF NOT EXISTS `access_control` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `access_control`;

-- --------------------------------------------------------

--
-- Structure de la table `fonctionalites`
--

CREATE TABLE `fonctionalites` (
  `id` int(11) NOT NULL,
  `fonctionalite` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(30) NOT NULL,
  `fonctionalite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `fonctionalites`
--
ALTER TABLE `fonctionalites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `fonctionalites`
--
ALTER TABLE `fonctionalites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Base de données :  `annonce`
--
CREATE DATABASE IF NOT EXISTS `annonce` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `annonce`;

-- --------------------------------------------------------

--
-- Structure de la table `a_annonces`
--

CREATE TABLE `a_annonces` (
  `ID` int(11) NOT NULL,
  `Rubrique` longtext,
  `Image` longtext,
  `Nom` longtext,
  `Prenom` longtext,
  `Telephone` longtext,
  `Mail` longtext,
  `Annonce` longtext,
  `Password` longtext,
  `Valid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `a_annonces`
--

INSERT INTO `a_annonces` (`ID`, `Rubrique`, `Image`, `Nom`, `Prenom`, `Telephone`, `Mail`, `Annonce`, `Password`, `Valid`) VALUES
(1, '<center>\\r\\n<table border=\\\\\"0\\\\\" cellpadding=\\\\\"0\\\\\" cellspacing=\\\\\"0\\\\\" width=\\\\\"95%\\\\\">\\r\\n  <tr>\\r\\n    <td bgcolor=\\\\\"black\\\\\">\\r\\n<table _border=\\\\\"0\\\\\" cellpadding=\\\\\"2\\\\\" cellspacing=\\\\\"1\\\\\" width_=\\\\\"100%\\\\\">\\r\\n <tr>\\r\\n    <td bgcolor=\\\\\"lightgreen\\\\\" width=\\\\\"30%\\\\\">\\r\\n     <b><i>Nom :</i></b>\\r\\n   </td>\\r\\n   <td bgcolor=\\\\\"lightgreen\\\\\" width=\\\\\"30%\\\\\">\\r\\n     <b><i>Prénom :</i></b>\\r\\n    </td>\\r\\n   <td bgcolor=\\\\-\"lightgreen\\\\\" widht=\\\\\"40\\\\\">\\r\\n      <b><i>Mail :</i></b>\\r\\n    </td>\\r\\n </tr>\\r\\n <tr>\\r\\n    <td bgcolor=\\\\\"lightblue\\\\\">\\r\\n      <b><font color=\\\\\"darkblue\\\\\">[Nom]</font></b>\\r\\n    </td>\\r\\n   <td bgcolor=\\\\\"lightblue\\\\\">\\r\\n      <b><font color=\\\\\"darkblue\\\\\">[Prenom]</font></b>\\r\\n   </td>\\r\\n   <td bgcolor=\\\\\"lightblue\\\\\">\\r\\n      <b><font color=\\\\\"darkblue\\\\\">[Mail]</font></b>\\r\\n   </td>\\r\\n </tr>\\r\\n <tr>\\r\\n    <td bgcolor=\\\\\"lightgreen\\\\\">\\r\\n     <b><i>Téléphone :</i></b>\\r\\n   </td>\\r\\n   <td bgcolor=\\\\\"lightgreen\\\\\">\\r\\n     <b><i>Image :</i></b>\\r\\n   </td>\\r\\n   <td rowspan=\\\\\"2\\\\\" bgcolor=\\\\\"#E8E8E8\\\\\">\\r\\n       \\r\\n   </td>\\r\\n </tr>\\r\\n <tr>\\r\\n    <td bgcolor=\\\\\"lightblue\\\\\">\\r\\n      <b><font color=\\\\\"darkblue\\\\\">[Telephone]-</font></b>\\r\\n    </td>\\r\\n   <td bgcolor=\\\\\"lightblue\\\\\">\\r\\n      <i><b><font color=\\\\\"darkblue\\\\\">[Image]</font></b></i>\\r\\n   </td>\\r\\n </tr>\\r\\n <tr>-\\r\\n    <td colspan=\\\\\"3\\\\\" bgcolor=\\\\\"lightgreen\\\\\">\\r\\n     [Message]\\r\\n   </td>\\r\\n </tr>\\r\\n</table>\\r\\n   </td>\\r\\n </tr>\\r\\n</table><br>', '<center>\\r\\n<table border=\\\\\"0\\\\\" cellpadding=\\\\\"0\\\\\" cellspacing=\\\\\"0\\\\\" width=\\\\\"95%\\\\\">\\r\\n  <tr>\\r\\n    <td bgcolor=\\\\\"black\\\\\">\\r\\n<table border=\\\\\"0\\\\\" cellpadding=\\\\\"2\\\\\" cellspacing=\\\\\"1\\\\\" width=\\\\\"100%\\\\\">\\r\\n <tr>\\r\\n    <td bgcolor=\\\\\"lightgreen\\\\\" width=\\\\\"30%\\\\\">\\r\\n     <b><i>Nom :</i></b>\\r\\n   </td>\\r\\n   <td bgcolor=\\\\\"lightgreen\\\\\" width=\\\\\"30%\\\\\">\\r\\n     <b><i>Prénom :</i></b>\\r\\n    </td>\\r\\n   <td bgcolor=\\\\\"lightgreen\\\\\" widht=\\\\\"40\\\\\">\\r\\n      <b><i>Mail :</i></b>\\r\\n    </td>\\r\\n </tr>\\r\\n <tr>\\r\\n    <td bgcolor=\\\\\"lightblue\\\\\">\\r\\n      <b><font color=\\\\\"darkblue\\\\\">[Nom]</font></b>\\r\\n    </td>\\r\\n   <td bgcolor=\\\\\"lightblue\\\\\">\\r\\n      <b><font color=\\\\\"darkblue\\\\\">[Prenom]</font></b>\\r\\n   </td>\\r\\n   <td bgcolor=\\\\\"lightblue\\\\\">\\r\\n      <b><font color=\\\\\"darkblue\\\\\">[Mail]</font></b>\\r\\n   </td>\\r\\n </tr>\\r\\n <tr>\\r\\n    <td bgcolor=\\\\\"lightgreen\\\\\">\\r\\n     <b><i>Téléphone :</i></b>\\r\\n   </td>\\r\\n   <td bgcolor=\\\\\"lightgreen\\\\\">\\r\\n     <b><i>Image :</i></b>\\r\\n   </td>\\r\\n   <td rowspan=\\\\\"2\\\\\" bgcolor=\\\\\"#E8E8E8\\\\\">\\r\\n       \\r\\n   </td>\\r\\n </tr>\\r\\n <tr>\\r\\n    <td bgcolor=\\\\\"lightblue\\\\\">\\r\\n      <b><font color=\\\\\"darkblue\\\\\">[Telephone]</font></b>\\r\\n    </td>\\r\\n   <td bgcolor=\\\\\"lightblue\\\\\">\\r\\n      <i><b><font color=\\\\\"darkblue\\\\\">[Image]</font></b></i>\\r\\n   </td>\\r\\n </tr>\\r\\n <tr>\\r\\n    <td colspan=\\\\\"3\\\\\" bgcolor=\\\\\"lightgreen\\\\\">\\r\\n     [Message]\\r\\n   </td>\\r\\n </tr>\\r\\n</table>\\r\\n   </td>\\r\\n </tr>\\r\\n</table><br>', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `rubriques`
--

CREATE TABLE `rubriques` (
  `ID` int(11) NOT NULL,
  `Nom` longtext,
  `Parent` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `template`
--

CREATE TABLE `template` (
  `ID` int(11) NOT NULL,
  `HTML` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` text NOT NULL,
  `signup_date` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `a_annonces`
--
ALTER TABLE `a_annonces`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `rubriques`
--
ALTER TABLE `rubriques`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `a_annonces`
--
ALTER TABLE `a_annonces`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `rubriques`
--
ALTER TABLE `rubriques`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `template`
--
ALTER TABLE `template`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Base de données :  `ats_07m16_db`
--
CREATE DATABASE IF NOT EXISTS `ats_07m16_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ats_07m16_db`;

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

CREATE TABLE `abonnement` (
  `id` int(11) NOT NULL,
  `type` varchar(18) NOT NULL,
  `volume` varchar(10) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `abonnement`
--

INSERT INTO `abonnement` (`id`, `type`, `volume`, `description`) VALUES
(1, 'Mensuel', '256/256', '120$ le mois'),
(2, 'Mensuel', '128/512', '220$ le mois');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `adresse` varchar(128) NOT NULL COMMENT 'json format',
  `contact` varchar(128) NOT NULL COMMENT 'json format'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `adresse`, `contact`) VALUES
(1, 'Marcellin', '{province : Nord-Kivu,ville : Goma,adresse :Himbi II, du Lac, 260}', '{tel : 0993803355,email : marcwabo20@gmail.com}'),
(2, 'Justin', '{province : Nord-Kivu,ville : Goma,adresse :Himbi II, du Lac, 260}', '{tel : 0993803355,email : marcwabo20@gmail.com}'),
(3, 'Taimos', '{province : Nord-Kivu,ville : Goma,adresse :Himbi II, du Lac, 260}', '{tel : 0993803355,email : marcwabo20@gmail.com}'),
(4, 'HAD ONGD', '{province : Nord-Kivu,ville : Goma,adresse :Kyeshero, Av Mulu, 5}', '{tel : 09998881166,email : hadongd@had.com}'),
(5, 'HAD ONGD', '{province : Nord-Kivu,ville : Goma,adresse :Kyeshero, Av Mulu, 5}', '{tel : 09998881166,email : hadongd@had.com}'),
(6, 'COTEC', '{province : Nord-Kivu,ville : Goma,adresse :Kyeshero, Av Mulu, 5}', '{tel : 09998881166,email : hadongd@had.com}'),
(7, 'HAD ONGD', '{province : Nord-Kivu,ville : Goma,adresse :Kyeshero, Av Mulu, 5}', '{tel : 09998881166,email : marcwabo20@gmail.com}'),
(8, 'ATOM System', '{province : Nord-Kivu,ville : Goma,adresse :Kyeshero, Av Mulu, 5}', '{tel : 09998881166,email : marcwabo20@gmail.com}'),
(9, 'Cyber Tropical', '{province : Nord-Kivu,ville : Goma,adresse :Kyeshero, Av Mulu, 5}', '{tel : 09998881166,email : marcwabo20@gmail.com}'),
(10, 'Cyber Tropical', '{province : Nord-Kivu,ville : Goma,adresse :Kyeshero, Av Mulu, 5}', '{tel : 09998881166,email : marcwabo20@gmail.com}'),
(11, 'Cyber Tropical', '{province : Nord-Kivu,ville : Goma,adresse :Kyeshero, Av Mulu, 5}', '{tel : 09998881166,email : marcwabo20@gmail.com}'),
(12, 'Cyber Tropical', '{province : Nord-Kivu,ville : Goma,adresse :Kyeshero, Av Mulu, 5}', '{tel : 09998881166,email : marcwabo20@gmail.com}'),
(13, 'Cyber Tropical', '{province : Nord-Kivu,ville : Goma,adresse :Kyeshero, Av Mulu, 5}', '{tel : 09998881166,email : marcwabo20@gmail.com}'),
(14, 'Cyber Tropical', '{province : Nord-Kivu,ville : Goma,adresse :Kyeshero, Av Mulu, 5}', '{tel : 09998881166,email : marcwabo20@gmail.com}'),
(15, 'IHUSI Hotel', '{province : Nord-Kivu,ville : Goma,adresse :Himbi II, du Lac, 260}', '{tel : 09998881166,email : ihusi@ihusi.org}'),
(16, 'Telehonou', '{province : Ouest,ville : Dschang,adresse :Mingmeto}', '{tel : 653360232,email : oliviertelehonou@gmail.com}');

-- --------------------------------------------------------

--
-- Structure de la table `facturation`
--

CREATE TABLE `facturation` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `client_id` int(11) NOT NULL,
  `abonnement_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `facturation`
--

INSERT INTO `facturation` (`id`, `date`, `client_id`, `abonnement_id`) VALUES
(1, '2016-05-11', 14, 2),
(2, '2016-05-12', 15, 1),
(3, '2018-01-22', 16, 2);

-- --------------------------------------------------------

--
-- Structure de la table `rapport`
--

CREATE TABLE `rapport` (
  `id` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `date` date NOT NULL,
  `abonnement_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `role` varchar(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(96) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `role`, `username`, `password`) VALUES
(1, 'Marcellin', 'su', 'marcw', 'fcacf366e100ec0f419f6a2c3999047df8328a4c'),
(2, 'Olivier', 'Admin', 'Oliver', 'fcacf366e100ec0f419f6a2c3999047df8328a4c'),
(3, 'Richie', 'Simple', 'rico', 'fcacf366e100ec0f419f6a2c3999047df8328a4c'),
(5, 'Diana', 'Admin', 'diana', 'fcacf366e100ec0f419f6a2c3999047df8328a4c'),
(6, 'Junior', 'Simple', 'junior', '8376b42fed6b66847eb95897e6643d6d49b146cb'),
(7, 'Telehonou', 'Simple', 'Telh', '7b8738d40a593675a87c63559627a326de4220b5');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `abonnement`
--
ALTER TABLE `abonnement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `facturation`
--
ALTER TABLE `facturation`
  ADD PRIMARY KEY (`id`,`client_id`,`abonnement_id`),
  ADD KEY `fk_facturation_client` (`client_id`),
  ADD KEY `fk_facturation_abonnement1` (`abonnement_id`);

--
-- Index pour la table `rapport`
--
ALTER TABLE `rapport`
  ADD PRIMARY KEY (`id`,`abonnement_id`),
  ADD KEY `fk_rapport_abonnement1` (`abonnement_id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `abonnement`
--
ALTER TABLE `abonnement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `facturation`
--
ALTER TABLE `facturation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `rapport`
--
ALTER TABLE `rapport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `facturation`
--
ALTER TABLE `facturation`
  ADD CONSTRAINT `fk_facturation_abonnement1` FOREIGN KEY (`abonnement_id`) REFERENCES `abonnement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_facturation_client` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `rapport`
--
ALTER TABLE `rapport`
  ADD CONSTRAINT `fk_rapport_abonnement1` FOREIGN KEY (`abonnement_id`) REFERENCES `abonnement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de données :  `base_test`
--
CREATE DATABASE IF NOT EXISTS `base_test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `base_test`;

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `Id_page` int(11) NOT NULL,
  `Titre` text NOT NULL,
  `Id_parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pages`
--

INSERT INTO `pages` (`Id_page`, `Titre`, `Id_parent`) VALUES
(0, 'index', 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`Id_page`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `Id_page` int(11) NOT NULL AUTO_INCREMENT;--
-- Base de données :  `cad`
--
CREATE DATABASE IF NOT EXISTS `cad` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cad`;

-- --------------------------------------------------------

--
-- Structure de la table `annonces`
--

CREATE TABLE `annonces` (
  `id_annonce` int(11) NOT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `body` text NOT NULL,
  `file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_cat` int(10) UNSIGNED NOT NULL,
  `nom_cat` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_cat` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id_cat`, `nom_cat`, `desc_cat`) VALUES
(1, 'Rapports  stage', 'Cette catÃ©gorie contient uniquement les rapports de stage'),
(2, 'Rapports de confÃ©rence', 'Cette catÃ©gorie contient uniquement les rapports de confÃ©rence'),
(3, 'MÃ©moires', 'Contient uniquement les mÃ©moires'),
(4, 'Livres ouvert au public', 'Contient uniquement les livre'),
(5, 'Supports de cour', 'Cette catÃ©gorie contient uniquement les supports de cours par dÃ©partement'),
(6, 'TD / epreuves', 'Cette catÃ©gorie contient uniquement les travaux diriger et des Ã©preuves  par dÃ©partement'),
(21, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `departements`
--

CREATE TABLE `departements` (
  `id_dpt` int(10) UNSIGNED NOT NULL,
  `code_dpt` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libel_dpt` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `departements`
--

INSERT INTO `departements` (`id_dpt`, `code_dpt`, `libel_dpt`, `created_at`, `updated_at`) VALUES
(1, 'GI', 'GÃ©nie informatique', NULL, NULL),
(3, 'GTR', 'GÃ©nie TÃ©lÃ©com et RÃ©seaux', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id_doc` int(10) UNSIGNED NOT NULL,
  `auteur` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_doc` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lien_doc` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ensignant_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `departement_id` int(11) DEFAULT NULL,
  `created_at` text COLLATE utf8mb4_unicode_ci,
  `updated_at` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fonctionalites`
--

CREATE TABLE `fonctionalites` (
  `id` int(11) NOT NULL,
  `fonctionalite` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `fonctionalites`
--

INSERT INTO `fonctionalites` (`id`, `fonctionalite`) VALUES
(1, '<nav class=\"navbar navbar-inverse navbar-fixed-top\"  role=\"navigation\">\r\n        <div class=\"navbar-header\">\r\n           <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\r\n               <span class=\"sr-only\">Toggle navigation</span>\r\n               <span class=\"icon-bar\"></span>\r\n               <span class=\"icon-bar\"></span>\r\n               <span class=\"icon-bar\"></span>\r\n           </button>\r\n           <a class=\"navbar-brand\" href=\"#accueil\"><img src=\"img/logo.png\" height=\"200%\"  class=\"img-circle\" width=\"120%\"></a>\r\n       </div>\r\n       <div class=\"collapse navbar-collapse\">\r\n           <ul class=\"nav navbar-nav\">\r\n               \r\n              \r\n\r\n               <li class=\"\"><a href=\'index.php\'>\r\n                    <span class=\"glyphicon glyphicon-home\"></span> Accueil</a>\r\n               </li>\r\n               <li><a href=\"#\">About</a></li>\r\n               <li><a href=\"index.php?q=contact/contacts\"><span class=\" glyphicon glyphicon-envelope\" >Contact</span></a></li>\r\n               <li class=\"nav-item dropdown\">\r\n                <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"dropdown01\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n                    <span class=\"glyphicon glyphicon-book\"></span> Document <span class=\"caret\"></span>\r\n                </a>\r\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown01\">\r\n                  <a class=\"dropdown-item\" href=\"index.php?q=document/nouveau\">\r\n                    <span class=\"glyphicon glyphicon-plus\"></span> Nouveau Document\r\n                  </a><br>\r\n                  <a class=\"dropdown-item\" href=\"index.php?q=document/lister\">\r\n                    <span class=\"glyphicon glyphicon-list-alt\"></span> Lister\r\n                  </a><br>\r\n                  <a class=\"dropdown-item\" href=\"index.php?q=document/gerer\">\r\n                    <span class=\"glyphicon glyphicon-edit\"></span> Gérer\r\n                  </a><br>\r\n\r\n                </div>\r\n              </li>\r\n              \r\n              <li class=\"nav-item dropdown\">\r\n                <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"dropdown01\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n                   <span class=\"glyphicon glyphicon-tower\"></span> Département <span class=\"caret\"></span>\r\n                </a>\r\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown01\">\r\n                    <a class=\"dropdown-item\" href=\"index.php?q=departement/nouveau\">\r\n                      <span class=\"glyphicon glyphicon-plus\"></span> Nouveau \r\n                  </a><br>\r\n                    <a class=\"dropdown-item\" href=\"index.php?q=departement/lister\">\r\n                        <span class=\"glyphicon glyphicon-list-alt\"></span> Gestion\r\n                    </a><br>\r\n                </div>\r\n              </li>\r\n              \r\n              <li class=\"nav-item dropdown\">\r\n                  <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"dropdown01\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n                      <span class=\"glyphicon glyphicon-leaf\"></span> Catégories <span class=\"caret\"></span>\r\n                  </a>\r\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown01\">\r\n                    <a class=\"dropdown-item\" href=\"index.php?q=categorie/nouveau\">\r\n                        <span class=\"glyphicon glyphicon-plus\"></span> Nouvelle \r\n                    </a><br>\r\n                    <a class=\"dropdown-item\" href=\"index.php?q=categorie/lister\">\r\n                        <span class=\"glyphicon glyphicon-play\"></span> Gestion\r\n                    </a><br>\r\n                </div>\r\n              </li>\r\n              <li class=\"nav-item dropdown\">\r\n                  <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"dropdown01\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n                      <span class=\"glyphicon glyphicon-flag\"></span> Annonces <span class=\"caret\"></span>\r\n                  </a>\r\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown01\">\r\n                    <a class=\"dropdown-item\" href=\"index.php?q=annonce/nouvelle\">\r\n                        <span class=\"glyphicon glyphicon-plus\"></span> Nouvelle \r\n                    </a><br>\r\n                    <a class=\"dropdown-item\" href=\"index.php?q=annonce/lister\">\r\n                        <span class=\"glyphicon glyphicon-play\"></span> Gestion\r\n                    </a><br>\r\n                </div>\r\n              </li>\r\n           </ul>\r\n\r\n            <form class=\"navbar-form navbar-left\" role=\"search\">\r\n              <div class=\"form-group\">\r\n                <input type=\"text\" class=\"form-control\" placeholder=\"Search\">\r\n              </div>\r\n              <button type=\"submit\" class=\"btn btn-default\"><span  class=\"glyphicon glyphicon-search\"></span></button>\r\n            </form>\r\n            <ul class=\"nav navbar-nav navbar-right\">\r\n        <!--<li><p class=\"navbar-text\">Already have an account?</p></li>-->\r\n        <li class=\"dropdown\">\r\n          <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"><span class=\"glyphicon glyphicon-user\"></span><b>Connexion</b> <span class=\"caret\"></span></a>\r\n      <ul id=\"login-dp\" class=\"dropdown-menu\">\r\n        <li>\r\n           <div class=\"row\">\r\n              <div class=\"col-md-12\">\r\n                Login via\r\n                <div class=\"social-buttons\">\r\n                  <a href=\"#\" class=\"btn btn-fb\"><i class=\"fa fa-facebook\"></i> Facebook</a>\r\n                  <a href=\"#\" class=\"btn btn-tw\"><i class=\"fa fa-twitter\"></i> Twitter</a>\r\n                </div>\r\n                               ou\r\n                 <form class=\"form\" role=\"form\" method=\"post\" action=\"login\" accept-charset=\"UTF-8\" id=\"login-nav\">\r\n                    <div class=\"form-group\">\r\n                       <label class=\"sr-only\" for=\"exampleInputEmail2\">addresse Email </label>\r\n                       <input type=\"email\" class=\"form-control\" id=\"exampleInputEmail2\" placeholder=\"Email address\" required>\r\n                    </div>\r\n                    <div class=\"form-group\">\r\n                       <label class=\"sr-only\" for=\"exampleInputPassword2\">Mot de passe</label>\r\n                       <input type=\"password\" class=\"form-control\" id=\"exampleInputPassword2\" placeholder=\"Password\" required>\r\n                                             <div class=\"help-block text-right\"><a href=\"\">Mot de passe oublié ?</a></div>\r\n                    </div>\r\n                    <div class=\"form-group\">\r\n                       <button type=\"submit\" class=\"btn btn-primary btn-block\">Connexion</button>\r\n                    </div>\r\n                    <div class=\"checkbox\">\r\n                       <label>\r\n                       <input type=\"checkbox\"> Rester connecté\r\n                       </label>\r\n                    </div>\r\n                 </form>\r\n              </div>\r\n              <div class=\"bottom text-center\">\r\n                Nouveau ici ? <a href=\"index.php?q=user/nouveau\"><b>S\'inscrire</b></a>\r\n              </div>\r\n           </div>\r\n        </li>\r\n      </ul>\r\n       </div>\r\n    </nav>'),
(2, '    <nav class=\"navbar navbar-inverse navbar-fixed-top\"  role=\"navigation\">\r\n        <div class=\"navbar-header\">\r\n           <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\r\n               <span class=\"sr-only\">Toggle navigation</span>\r\n               <span class=\"icon-bar\"></span>\r\n               <span class=\"icon-bar\"></span>\r\n               <span class=\"icon-bar\"></span>\r\n           </button>\r\n           <a class=\"navbar-brand\" href=\"#accueil\"><img src=\"img/logo.png\" height=\"200%\"  class=\"img-circle\" width=\"120%\"></a>\r\n       </div>\r\n       <div class=\"collapse navbar-collapse\">\r\n           <ul class=\"nav navbar-nav\">\r\n               \r\n              \r\n\r\n               <li class=\"\"><a href=\'index.php\'>\r\n                    <span class=\"glyphicon glyphicon-home\"></span> Accueil</a>\r\n               </li>\r\n               <li><a href=\"#\">About</a></li>\r\n               <li><a href=\"index.php?q=contact/contacts\"><span class=\" glyphicon glyphicon-envelope\" >Contact</span></a></li>\r\n               <li class=\"nav-item dropdown\">\r\n                <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"dropdown01\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n                    <span class=\"glyphicon glyphicon-book\"></span> Document <span class=\"caret\"></span>\r\n                </a>\r\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown01\">\r\n                  <a class=\"dropdown-item\" href=\"index.php?q=document/nouveau\">\r\n                    <span class=\"glyphicon glyphicon-plus\"></span> Ajouter un rapport\r\n                  </a><br>\r\n                  <a class=\"dropdown-item\" href=\"index.php?q=document/lister\">\r\n                    <span class=\"glyphicon glyphicon-list-alt\"></span> Lister\r\n                  </a><br>\r\n                  <a class=\"dropdown-item\" href=\"index.php?q=document/gerer\">\r\n                    <span class=\"glyphicon glyphicon-edit\"></span> Gérer\r\n                  </a><br>\r\n\r\n                </div>\r\n              </li>            \r\n              \r\n              <li class=\"nav-item dropdown\">\r\n                  <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"dropdown01\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n                      <span class=\"glyphicon glyphicon-flag\"></span> Annonces <span class=\"caret\"></span>\r\n                  </a>\r\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown01\">\r\n                    <a class=\"dropdown-item\" href=\"index.php?q=annonce/nouvelle\">\r\n                        <span class=\"glyphicon glyphicon-plus\"></span> Nouvelle \r\n                    </a><br>\r\n                    <a class=\"dropdown-item\" href=\"index.php?q=annonce/lister\">\r\n                        <span class=\"glyphicon glyphicon-play\"></span> Gestion\r\n                    </a><br>\r\n                </div>\r\n              </li>\r\n           </ul>\r\n\r\n            <form class=\"navbar-form navbar-left\" role=\"search\">\r\n              <div class=\"form-group\">\r\n                <input type=\"text\" class=\"form-control\" placeholder=\"Search\">\r\n              </div>\r\n              <button type=\"submit\" class=\"btn btn-default\"><span  class=\"glyphicon glyphicon-search\"></span></button>\r\n            </form>\r\n            <ul class=\"nav navbar-nav navbar-right\">\r\n        <!--<li><p class=\"navbar-text\">Already have an account?</p></li>-->\r\n        <li class=\"dropdown\">\r\n          <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"><span class=\"glyphicon glyphicon-user\"></span><b>Connexion</b> <span class=\"caret\"></span></a>\r\n      <ul id=\"login-dp\" class=\"dropdown-menu\">\r\n        <li>\r\n           <div class=\"row\">\r\n              <div class=\"col-md-12\">\r\n                Login via\r\n                <div class=\"social-buttons\">\r\n                  <a href=\"#\" class=\"btn btn-fb\"><i class=\"fa fa-facebook\"></i> Facebook</a>\r\n                  <a href=\"#\" class=\"btn btn-tw\"><i class=\"fa fa-twitter\"></i> Twitter</a>\r\n                </div>\r\n                               ou\r\n                 <form class=\"form\" role=\"form\" method=\"post\" action=\"login\" accept-charset=\"UTF-8\" id=\"login-nav\">\r\n                    <div class=\"form-group\">\r\n                       <label class=\"sr-only\" for=\"exampleInputEmail2\">addresse Email </label>\r\n                       <input type=\"email\" class=\"form-control\" id=\"exampleInputEmail2\" placeholder=\"Email address\" required>\r\n                    </div>\r\n                    <div class=\"form-group\">\r\n                       <label class=\"sr-only\" for=\"exampleInputPassword2\">Mot de passe</label>\r\n                       <input type=\"password\" class=\"form-control\" id=\"exampleInputPassword2\" placeholder=\"Password\" required>\r\n                                             <div class=\"help-block text-right\"><a href=\"\">Mot de passe oublié ?</a></div>\r\n                    </div>\r\n                    <div class=\"form-group\">\r\n                       <button type=\"submit\" class=\"btn btn-primary btn-block\">Connexion</button>\r\n                    </div>\r\n                    <div class=\"checkbox\">\r\n                       <label>\r\n                       <input type=\"checkbox\"> Rester connecté\r\n                       </label>\r\n                    </div>\r\n                 </form>\r\n              </div>\r\n              <div class=\"bottom text-center\">\r\n                Nouveau ici ? <a href=\"index.php?q=user/nouveau\"><b>S\'inscrire</b></a>\r\n              </div>\r\n           </div>\r\n        </li>\r\n      </ul>\r\n       </div>\r\n    </nav>'),
(3, '    <nav class=\"navbar navbar-inverse navbar-fixed-top\"  role=\"navigation\">\r\n        <div class=\"navbar-header\">\r\n           <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\r\n               <span class=\"sr-only\">Toggle navigation</span>\r\n               <span class=\"icon-bar\"></span>\r\n               <span class=\"icon-bar\"></span>\r\n               <span class=\"icon-bar\"></span>\r\n           </button>\r\n           <a class=\"navbar-brand\" href=\"#accueil\"><img src=\"img/logo.png\" height=\"200%\"  class=\"img-circle\" width=\"120%\"></a>\r\n       </div>\r\n       <div class=\"collapse navbar-collapse\">\r\n           <ul class=\"nav navbar-nav\">\r\n               \r\n              \r\n\r\n               <li class=\"\"><a href=\'index.php\'>\r\n                    <span class=\"glyphicon glyphicon-home\"></span> Accueil</a>\r\n               </li>\r\n               <li><a href=\"#\">About</a></li>\r\n               <li><a href=\"index.php?q=contact/contacts\"><span class=\" glyphicon glyphicon-envelope\" >Contact</span></a></li>\r\n               <li class=\"nav-item dropdown\">\r\n                <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"dropdown01\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n                    <span class=\"glyphicon glyphicon-book\"></span> Document <span class=\"caret\"></span>\r\n                </a>\r\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown01\">\r\n                  <a class=\"dropdown-item\" href=\"index.php?q=document/nouveau\">\r\n                    <span class=\"glyphicon glyphicon-plus\"></span> Ajouter un rapport\r\n                  </a><br>\r\n                  <a class=\"dropdown-item\" href=\"index.php?q=document/lister\">\r\n                    <span class=\"glyphicon glyphicon-list-alt\"></span> Lister\r\n                  </a><br>\r\n                  <a class=\"dropdown-item\" href=\"index.php?q=document/gerer\">\r\n                    <span class=\"glyphicon glyphicon-edit\"></span> Gérer\r\n                  </a><br>\r\n\r\n                </div>\r\n              </li>            \r\n              \r\n              <li class=\"nav-item dropdown\">\r\n                  <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"dropdown01\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n                      <span class=\"glyphicon glyphicon-flag\"></span> Annonces <span class=\"caret\"></span>\r\n                  </a>\r\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown01\">\r\n                    <a class=\"dropdown-item\" href=\"index.php?q=annonce/nouvelle\">\r\n                        <span class=\"glyphicon glyphicon-plus\"></span> Nouvelle \r\n                    </a><br>\r\n                    <a class=\"dropdown-item\" href=\"index.php?q=annonce/lister\">\r\n                        <span class=\"glyphicon glyphicon-play\"></span> Gestion\r\n                    </a><br>\r\n                </div>\r\n              </li>\r\n           </ul>\r\n\r\n            <form class=\"navbar-form navbar-left\" role=\"search\">\r\n              <div class=\"form-group\">\r\n                <input type=\"text\" class=\"form-control\" placeholder=\"Search\">\r\n              </div>\r\n              <button type=\"submit\" class=\"btn btn-default\"><span  class=\"glyphicon glyphicon-search\"></span></button>\r\n            </form>\r\n            <ul class=\"nav navbar-nav navbar-right\">\r\n        <!--<li><p class=\"navbar-text\">Already have an account?</p></li>-->\r\n        <li class=\"dropdown\">\r\n          <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"><span class=\"glyphicon glyphicon-user\"></span><b>Connexion</b> <span class=\"caret\"></span></a>\r\n      <ul id=\"login-dp\" class=\"dropdown-menu\">\r\n        <li>\r\n           <div class=\"row\">\r\n              <div class=\"col-md-12\">\r\n                Login via\r\n                <div class=\"social-buttons\">\r\n                  <a href=\"#\" class=\"btn btn-fb\"><i class=\"fa fa-facebook\"></i> Facebook</a>\r\n                  <a href=\"#\" class=\"btn btn-tw\"><i class=\"fa fa-twitter\"></i> Twitter</a>\r\n                </div>\r\n                               ou\r\n                 <form class=\"form\" role=\"form\" method=\"post\" action=\"login\" accept-charset=\"UTF-8\" id=\"login-nav\">\r\n                    <div class=\"form-group\">\r\n                       <label class=\"sr-only\" for=\"exampleInputEmail2\">addresse Email </label>\r\n                       <input type=\"email\" class=\"form-control\" id=\"exampleInputEmail2\" placeholder=\"Email address\" required>\r\n                    </div>\r\n                    <div class=\"form-group\">\r\n                       <label class=\"sr-only\" for=\"exampleInputPassword2\">Mot de passe</label>\r\n                       <input type=\"password\" class=\"form-control\" id=\"exampleInputPassword2\" placeholder=\"Password\" required>\r\n                                             <div class=\"help-block text-right\"><a href=\"\">Mot de passe oublié ?</a></div>\r\n                    </div>\r\n                    <div class=\"form-group\">\r\n                       <button type=\"submit\" class=\"btn btn-primary btn-block\">Connexion</button>\r\n                    </div>\r\n                    <div class=\"checkbox\">\r\n                       <label>\r\n                       <input type=\"checkbox\"> Rester connecté\r\n                       </label>\r\n                    </div>\r\n                 </form>\r\n              </div>\r\n              <div class=\"bottom text-center\">\r\n                Nouveau ici ? <a href=\"index.php?q=user/nouveau\"><b>S\'inscrire</b></a>\r\n              </div>\r\n           </div>\r\n        </li>\r\n      </ul>\r\n       </div>\r\n    </nav>'),
(4, '<nav class=\"navbar navbar-inverse navbar-fixed-top\"  role=\"navigation\">\r\n        <div class=\"navbar-header\">\r\n           <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\r\n               <span class=\"sr-only\">Toggle navigation</span>\r\n               <span class=\"icon-bar\"></span>\r\n               <span class=\"icon-bar\"></span>\r\n               <span class=\"icon-bar\"></span>\r\n           </button>\r\n           <a class=\"navbar-brand\" href=\"#accueil\"><img src=\"img/logo.png\" height=\"200%\"  class=\"img-circle\" width=\"120%\"></a>\r\n       </div>\r\n       <div class=\"collapse navbar-collapse\">\r\n           <ul class=\"nav navbar-nav\">\r\n               <li class=\"\"><a href=\'index.php\'>\r\n                    <span class=\"glyphicon glyphicon-home\"></span> Accueil</a>\r\n               </li>\r\n               <li><a href=\"#\">About</a></li>\r\n               <li><a href=\"index.php?q=contact/contacts\"><span class=\" glyphicon glyphicon-envelope\" >Contact</span></a></li>\r\n               <li class=\"nav-item dropdown\">\r\n                <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"dropdown01\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n                    <span class=\"glyphicon glyphicon-book\"></span> Document <span class=\"caret\"></span>\r\n                </a>\r\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown01\">\r\n                  <a class=\"dropdown-item\" href=\"index.php?q=document/lister\">\r\n                    <span class=\"glyphicon glyphicon-list-alt\"></span> Consulter Tout\r\n                  </a><br>\r\n\r\n                </div>\r\n              </li>\r\n              \r\n           </div>\r\n        </li>\r\n      </ul>\r\n       </div>\r\n    </nav>');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_04_25_155704_create_documents_table', 1),
(2, '2018_04_25_161940_create_enseignent_table', 1),
(3, '2018_04_25_162012_create_departement_table', 1),
(4, '2018_04_25_162051_create_categories_table', 1),
(5, '2018_04_25_163050_create_fonctions_table', 1),
(6, '2018_04_25_185931_create_url_table', 2),
(7, '2018_04_25_191105_create_urls_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `mod_modulegroupcode` varchar(25) NOT NULL,
  `mod_modulegroupname` varchar(50) NOT NULL,
  `mod_modulecode` varchar(25) NOT NULL,
  `mod_modulename` varchar(50) NOT NULL,
  `mod_modulegrouporder` int(3) NOT NULL,
  `mod_moduleorder` int(3) NOT NULL,
  `mod_modulepagename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `module`
--

INSERT INTO `module` (`mod_modulegroupcode`, `mod_modulegroupname`, `mod_modulecode`, `mod_modulename`, `mod_modulegrouporder`, `mod_moduleorder`, `mod_modulepagename`) VALUES
('GEST', 'Gestion', 'CAT', 'Catégories', 2, 3, 'categorie.php'),
('GEST', 'Gestion', 'DOC', 'Documents', 2, 1, 'document.php'),
('GEST', 'Gestion', 'DPT', 'Départements', 2, 4, 'departement.php'),
('GEST', 'Gestion', 'MOD', 'Modules', 2, 5, 'module.php'),
('GEST', 'Gestion', 'ROL', 'Rôles', 2, 6, 'role.php'),
('GEST', 'Gestion', 'USER', 'Utilisateurs', 2, 2, 'user.php'),
('PLAG', 'Plagiat', 'TEST', 'Test de plagiat', 3, 1, 'anlyse_doc.php');

-- --------------------------------------------------------

--
-- Structure de la table `role_rights`
--

CREATE TABLE `role_rights` (
  `rr_rolecode` varchar(50) NOT NULL,
  `rr_modulecode` varchar(50) NOT NULL,
  `rr_create` enum('yes','no') NOT NULL DEFAULT 'no',
  `rr_edit` enum('yes','no') NOT NULL DEFAULT 'no',
  `rr_delete` enum('yes','no') NOT NULL DEFAULT 'no',
  `rr_view` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `role_rights`
--

INSERT INTO `role_rights` (`rr_rolecode`, `rr_modulecode`, `rr_create`, `rr_edit`, `rr_delete`, `rr_view`) VALUES
('SUPERADMIN', 'DOC', 'yes', 'yes', 'yes', 'yes'),
('SUPERADMIN', 'USER', 'yes', 'yes', 'yes', 'yes'),
('SUPERADMIN', 'CAT', 'yes', 'yes', 'yes', 'yes'),
('SUPERADMIN', 'DPT', 'yes', 'yes', 'yes', 'yes'),
('SUPERADMIN', 'MOD', 'yes', 'yes', 'yes', 'yes'),
('SUPERADMIN', 'ROL', 'yes', 'yes', 'yes', 'yes'),
('SUPERADMIN', 'TEST', 'yes', 'yes', 'yes', 'yes'),
('ADMIN', 'DOC', 'yes', 'yes', 'yes', 'yes'),
('ADMIN', 'USER', 'no', 'no', 'no', 'yes'),
('ADMIN', 'CAT', 'no', 'no', 'no', 'no'),
('ADMIN', 'DPT', 'no', 'no', 'no', 'no'),
('ADMIN', 'MOD', 'no', 'no', 'no', 'no'),
('ADMIN', 'TEST', 'yes', 'no', 'no', 'yes'),
('ENSEG', 'DOC', 'yes', 'yes', 'yes', 'yes'),
('ENSEG', 'USER', 'no', 'no', 'no', 'yes'),
('ENSEG', 'CAT', 'no', 'no', 'no', 'no'),
('ENSEG', 'DPT', 'no', 'no', 'no', 'no'),
('ENSEG', 'MOD', 'no', 'no', 'no', 'no'),
('ENSEG', 'TEST', 'yes', 'no', 'no', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `role_rolecode` varchar(50) NOT NULL,
  `role_rolename` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `roles`
--

INSERT INTO `roles` (`role_rolecode`, `role_rolename`) VALUES
('ADMIN', 'Administrateur'),
('ENSEG', 'Enseignant'),
('SUPERADMIN', 'Super Admin');

-- --------------------------------------------------------

--
-- Structure de la table `system_users`
--

CREATE TABLE `system_users` (
  `u_userid` int(11) NOT NULL,
  `u_username` varchar(100) NOT NULL,
  `u_password` varchar(255) NOT NULL,
  `u_rolecode` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` int(15) NOT NULL,
  `avatar` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `system_users`
--

INSERT INTO `system_users` (`u_userid`, `u_username`, `u_password`, `u_rolecode`, `email`, `telephone`, `avatar`) VALUES
(1, 'Olivier', '123456', 'SUPERADMIN', 'oliviertelehonou@gmail.com', 653360232, ''),
(2, 'Jireh', 'Jireh', 'ADMIN', 'jireh@gmail.com', 0, ''),
(3, 'Kevine', 'Kevine', 'ENSEG', 'kevine@gmail.com\r\n', 0, ''),
(42, 'Junior TSAFACK', 'oliv', 'ENSEG', 'otsafack@yahoo.fr', 696913417, '');

-- --------------------------------------------------------

--
-- Structure de la table `urls`
--

CREATE TABLE `urls` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `urls`
--

INSERT INTO `urls` (`id`, `url`, `short`) VALUES
(1, 'http://google.com', 'olive'),
(2, 'http://facebook.com', '1JhX3'),
(3, 'http://yahoo.com', 'gojg9'),
(4, 'http://wikipedia.fr', '9ppgn');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` int(13) NOT NULL,
  `fonction` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `telephone`, `fonction`, `password`, `avatar`) VALUES
(1, 'TELEHONOU DONFACK Olivier Junior', 'oliviertelehonou@gmail.com', 0, 1, '', NULL),
(2, 'dfjkdfjkdfj', 'dskfkjsdfk@jdshfj.sdf', 653360232, 2, '', NULL),
(3, 'djfhjshdj', 'oliviertelehonou@gmail.com', 4587961, 3, '', NULL),
(4, 'Jireh', 'Jireh@Jireh.com', 6767853, 0, '', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `annonces`
--
ALTER TABLE `annonces`
  ADD PRIMARY KEY (`id_annonce`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_cat`),
  ADD UNIQUE KEY `categories_nom_cat_unique` (`nom_cat`);

--
-- Index pour la table `departements`
--
ALTER TABLE `departements`
  ADD PRIMARY KEY (`id_dpt`),
  ADD UNIQUE KEY `departements_libel_dpt_unique` (`libel_dpt`),
  ADD UNIQUE KEY `cide_dpt` (`code_dpt`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id_doc`),
  ADD UNIQUE KEY `documents_nom_doc_unique` (`nom_doc`);

--
-- Index pour la table `fonctionalites`
--
ALTER TABLE `fonctionalites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`mod_modulegroupcode`,`mod_modulecode`),
  ADD UNIQUE KEY `mod_modulecode` (`mod_modulecode`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_rolecode`);

--
-- Index pour la table `system_users`
--
ALTER TABLE `system_users`
  ADD PRIMARY KEY (`u_userid`),
  ADD KEY `u_rolecode` (`u_rolecode`);

--
-- Index pour la table `urls`
--
ALTER TABLE `urls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `annonces`
--
ALTER TABLE `annonces`
  MODIFY `id_annonce` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_cat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `departements`
--
ALTER TABLE `departements`
  MODIFY `id_dpt` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id_doc` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `fonctionalites`
--
ALTER TABLE `fonctionalites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `system_users`
--
ALTER TABLE `system_users`
  MODIFY `u_userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `urls`
--
ALTER TABLE `urls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `system_users`
--
ALTER TABLE `system_users`
  ADD CONSTRAINT `system_users_ibfk_1` FOREIGN KEY (`u_rolecode`) REFERENCES `roles` (`role_rolecode`) ON UPDATE CASCADE;
--
-- Base de données :  `control`
--
CREATE DATABASE IF NOT EXISTS `control` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `control`;

-- --------------------------------------------------------

--
-- Structure de la table `role_rights`
--

CREATE TABLE `role_rights` (
  `rr_rolecode` varchar(50) NOT NULL,
  `rr_modulecode` varchar(50) NOT NULL,
  `rr_create` enum('yes','no') NOT NULL DEFAULT 'no',
  `rr_edit` enum('yes','no') NOT NULL DEFAULT 'no',
  `rr_delete` enum('yes','no') NOT NULL DEFAULT 'no',
  `rr_view` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `role_rights`
--

INSERT INTO `role_rights` (`rr_rolecode`, `rr_modulecode`, `rr_create`, `rr_edit`, `rr_delete`, `rr_view`) VALUES
('SUPERADMIN', 'DOC', 'yes', 'yes', 'yes', 'yes'),
('SUPERADMIN', 'USER', 'yes', 'yes', 'yes', 'yes'),
('SUPERADMIN', 'CAT', 'yes', 'yes', 'yes', 'yes'),
('SUPERADMIN', 'DPT', 'yes', 'yes', 'yes', 'yes'),
('SUPERADMIN', 'MOD', 'yes', 'yes', 'yes', 'yes'),
('SUPERADMIN', 'ROL', 'yes', 'yes', 'yes', 'yes'),
('SUPERADMIN', 'TEST', 'yes', 'yes', 'yes', 'yes'),
('ADMIN', 'DOC', 'yes', 'yes', 'yes', 'yes'),
('ADMIN', 'USER', 'no', 'no', 'no', 'yes'),
('ADMIN', 'CAT', 'no', 'no', 'no', 'no'),
('ADMIN', 'DPT', 'no', 'no', 'no', 'no'),
('ADMIN', 'MOD', 'no', 'no', 'no', 'no'),
('ADMIN', 'TEST', 'yes', 'no', 'no', 'yes'),
('ENSEG', 'DOC', 'yes', 'yes', 'yes', 'yes'),
('ENSEG', 'USER', 'no', 'no', 'no', 'yes'),
('ENSEG', 'CAT', 'no', 'no', 'no', 'no'),
('ENSEG', 'DPT', 'no', 'no', 'no', 'no'),
('ENSEG', 'MOD', 'no', 'no', 'no', 'no'),
('ENSEG', 'TEST', 'yes', 'no', 'no', 'yes');
--
-- Base de données :  `copytracker`
--
CREATE DATABASE IF NOT EXISTS `copytracker` DEFAULT CHARACTER SET gb2312 COLLATE gb2312_chinese_ci;
USE `copytracker`;

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `filename` text NOT NULL,
  `author` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Contenu de la table `documents`
--

INSERT INTO `documents` (`id`, `filename`, `author`, `date`) VALUES
(1, 'rattrapagerolicenceir_2012.pdf.html', 'olivier', '2018-04-20'),
(2, 'rattrapagerolicenceir_2012.pdf.html', 'rapport', '2018-04-20'),
(3, 'examenrolicenceir_2012.pdf.html', 'junior', '2018-04-20'),
(4, 'ccrechercheoperationellelicenceir_2012.pdf.html', 'ttt', '2018-04-20');

-- --------------------------------------------------------

--
-- Structure de la table `text`
--

CREATE TABLE `text` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` int(11) NOT NULL,
  `id_doc` int(10) UNSIGNED NOT NULL,
  `id_para` int(10) UNSIGNED NOT NULL,
  `id_phrase` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- --------------------------------------------------------

--
-- Structure de la table `version`
--

CREATE TABLE `version` (
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Contenu de la table `version`
--

INSERT INTO `version` (`version`) VALUES
(1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Index pour la table `version`
--
ALTER TABLE `version`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `text`
--
ALTER TABLE `text`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Base de données :  `cour_tic`
--
CREATE DATABASE IF NOT EXISTS `cour_tic` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cour_tic`;
--
-- Base de données :  `cours_tic`
--
CREATE DATABASE IF NOT EXISTS `cours_tic` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cours_tic`;

-- --------------------------------------------------------

--
-- Structure de la table `chapitre`
--

CREATE TABLE `chapitre` (
  `ID_CHAP` int(11) NOT NULL,
  `ID_MOD` int(11) NOT NULL,
  `TITRE_CHAP_FR` varchar(255) DEFAULT NULL,
  `TITRE_CHAP_EN` varchar(255) NOT NULL,
  `CODE_CHAP` varchar(10) NOT NULL,
  `num` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `chapitre`
--

INSERT INTO `chapitre` (`ID_CHAP`, `ID_MOD`, `TITRE_CHAP_FR`, `TITRE_CHAP_EN`, `CODE_CHAP`, `num`) VALUES
(1, 1, 'Comprendre la notion d&rsquo;environnement Informatique', 'Understand the concept of computing environment', 'M1ch0', 0),
(2, 1, 'Les logiciels d&rsquo;application d&rsquo;un ordinateur', 'Computer\'s software', 'M1ch5', 5),
(5, 1, 'Syst&egrave;me Informatiques', 'Computer System', 'M1ch6', 6),
(4, 1, 'Pr&eacute;sentation de l&rsquo;ordinateur', 'Presentation of the computer', 'M1ch1', 1),
(6, 1, 'Les unit&eacute;s p&eacute;riph&eacute;riques  de l&rsquo;ordinateur', 'The peripheral units of the computer', 'M1ch2', 2);

-- --------------------------------------------------------

--
-- Structure de la table `langue`
--

CREATE TABLE `langue` (
  `ID_LANG` int(11) NOT NULL,
  `CODE_LANG` varchar(25) NOT NULL,
  `LIB_LANG` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `langue`
--

INSERT INTO `langue` (`ID_LANG`, `CODE_LANG`, `LIB_LANG`) VALUES
(1, 'FR', 'francais'),
(2, 'EN', 'anglais');

--
-- Déclencheurs `langue`
--
DELIMITER $$
CREATE TRIGGER `Update_Code_Lang_Def` AFTER UPDATE ON `langue` FOR EACH ROW update module,langue
set module.CODE_LANG_DEF = langue.CODE_LANG
WHERE module.ID_LANG = langue.ID_LANG
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `ID_MOD` int(11) NOT NULL,
  `LIBELLE_MOD_FR` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LIBELLE_MOD_EN` varchar(255) NOT NULL,
  `CODE_MOD` varchar(10) NOT NULL,
  `CODE_LANG_DEF` varchar(25) NOT NULL,
  `ID_LANG` int(11) NOT NULL,
  `num` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `module`
--

INSERT INTO `module` (`ID_MOD`, `LIBELLE_MOD_FR`, `LIBELLE_MOD_EN`, `CODE_MOD`, `CODE_LANG_DEF`, `ID_LANG`, `num`) VALUES
(1, '6 eme', 'From 1', 'M1', '', 0, NULL),
(2, 'ARCHITECTURE, MAINTENANCE ET TABLEUR ', 'STRUCTURE, MAINTENANCE AND SPREADSHEET ', '3&egrave;m', '', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `rubrique`
--

CREATE TABLE `rubrique` (
  `ID_CONT` int(11) NOT NULL,
  `ID_SOUS_SEC` int(11) NOT NULL,
  `TITRE_FR` text NOT NULL,
  `TITRE_EN` text NOT NULL,
  `TEXTE_RUB_FR` text,
  `TEXTE_RUB_EN` text NOT NULL,
  `FICHIER_FLASH_FR` varchar(50) NOT NULL,
  `FICHIER_FLASH_EN` varchar(50) NOT NULL,
  `IMG` varchar(255) DEFAULT NULL,
  `CODE_RUB` varchar(10) NOT NULL,
  `QUIZ` tinyint(1) NOT NULL,
  `num` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `rubrique`
--

INSERT INTO `rubrique` (`ID_CONT`, `ID_SOUS_SEC`, `TITRE_FR`, `TITRE_EN`, `TEXTE_RUB_FR`, `TEXTE_RUB_EN`, `FICHIER_FLASH_FR`, `FICHIER_FLASH_EN`, `IMG`, `CODE_RUB`, `QUIZ`, `num`) VALUES
(1, 1, 'Introduction', 'Introduction', '<strong>L&rsquo;environnement informatique</strong> est l&rsquo;ensemble des outils, des personnes et des moyens utilis&eacute;s dans le domaine de l&rsquo;informatique.', '<strong>The computer environment</strong> is the set of tools, people and means used in the field of computing.', '1488889219.swf', '1488889219.swf', '1488889219.jpg', 'sss1', 0, 1),
(3, 3, 'Les outils informatiques', 'Computer tools', 'Il existe plusieurs outils informatiques parmi lesquels :<br />\r\n<br />\r\n&bull; <strong>L&rsquo;appareil photo</strong> il permet de prendre des photos <br />\r\n&bull; <strong>Le vid&eacute;o projecteur</strong> il permet de faire des projections de l&rsquo;ordinateur<br />\r\n&bull; <strong>L&rsquo;ordinateur de bureau</strong> <br />\r\n&bull; <strong>Le t&eacute;l&eacute;phone portable</strong> qui permet de t&eacute;l&eacute;phoner<br />\r\n&bull; <strong>L&rsquo;imprimante</strong> qui permet de faire la sortie sur papier des donn&eacute;es de l&rsquo;ordinateur<br />\r\n&bull;<strong> Le scanner</strong> permet de num&eacute;riser les images<br />\r\n&bull; <strong>Le lecteur CD</strong> qui permet de lire des donn&eacute;es stocker sur un cd<br />\r\n&bull; <strong>Le baladeur</strong> qui permet d&rsquo;&eacute;couter de la musique n&rsquo;importe o&ugrave;, etc...<br />\r\n', 'There are several IT tools including:<br />\r\n<br />\r\n&bull;<strong> The camera</strong> allows you to take pictures<br />\r\n&bull; <strong>The video projector</strong> allows to make projections of the computer<br />\r\n&bull; <strong>The desktop computer</strong><br />\r\n&bull; <strong>The mobile phone</strong> that allows you to<br />\r\n&bull; <strong>The printer</strong> that makes it possible to output the data on the computer<br />\r\n&bull; <strong>The scanner</strong> can be used to scan images<br />\r\n&bull; <strong>The CD player</strong> that can play data on a CD<br />\r\n&bull; <strong>Walkman</strong> that allows you to listen to music anywhere etc ....<br />\r\n', '1488891283.swf', '1488891283.swf', '1488891283.jpg', 'sss2', 0, 2),
(4, 2, 'Les outils informatiques', 'IT tools', 'Il existe plusieurs outils informatiques parmi lesquels :<br />\r\n<br />\r\n&bull; <strong>L&rsquo;appareil photo</strong> il permet de prendre des photos <br />\r\n&bull; <strong>Le vid&eacute;o projecteur</strong> il permet de faire des projections de l&rsquo;ordinateur<br />\r\n&bull; <strong>L&rsquo;ordinateur de bureau</strong> <br />\r\n&bull;<strong> Le t&eacute;l&eacute;phone portable</strong> qui permet de t&eacute;l&eacute;phoner<br />\r\n&bull; <strong>L&rsquo;imprimante</strong> qui permet de faire la sortie sur papier des donn&eacute;es de l&rsquo;ordinateur<br />\r\n&bull; <strong>Le scanner</strong> permet de num&eacute;riser les images<br />\r\n&bull; <strong>Le lecteur CD</strong> qui permet de lire des donn&eacute;es stocker sur un cd<br />\r\n&bull;<strong> Le baladeur</strong> qui permet d&rsquo;&eacute;couter de la musique n&rsquo;importe o&ugrave; etc....', 'There are several IT tools including:<br />\r\n<br />\r\n&bull; <strong>The camera</strong> allows you to take pictures<br />\r\n&bull;<strong> The video projector</strong> allows to make projections of the computer<br />\r\n&bull; <strong>The desktop computer</strong><br />\r\n&bull; <strong>The mobile phone</strong> that allows you to<br />\r\n&bull; <strong>The printer</strong> that makes it possible to output the data on the computer<br />\r\n&bull; <strong>The scanner</strong> can be used to scan images<br />\r\n&bull; <strong>The CD player</strong> that can play data on a CD<br />\r\n&bull; <strong>Walkman</strong> that allows you to listen to music anywhere etc ....<br />\r\n', '1488892525.swf', '1488892525.swf', '1488892525.jpg', 'sss2', 0, 1),
(5, 2, 'Les personnes', 'The people', '<strong>- Les utilisateurs :</strong> Ce sont ceux qui utilisent les outils informatiques. <br />\r\n<strong>Exemple :</strong> maman utilise l&rsquo;appareil photo et papa utilise un ordinateur de bureau. <br />\r\n<br />\r\n<strong>- Les fabricants</strong> sont ceux qui fabriquent les outils <br />\r\n<strong>Exemple :</strong> lorsque vous avez un t&eacute;l&eacute;phone ou un ordinateur vous avez le nom du fabriquant sur l&rsquo;appareil.<br />\r\n<br />\r\n<strong>- Les mainteneurs :</strong> Ce sont ceux qui d&eacute;pannent les outils informatiques lorsqu&rsquo;ils sont en panne. <br />\r\n<strong>Exemple :</strong> Le d&eacute;panneur de t&eacute;l&eacute;phones portables<br />\r\n', '<strong>- Users:</strong> These are the ones who use the computer tools.<br />\r\n<strong>Example:</strong> Mom uses the camera and Dad uses a desktop computer.<br />\r\n<br />\r\n<strong>- Manufacturers</strong> are those who manufacture tools<br />\r\n<strong>Example:</strong> When you have a phone or a computer you have the name of the manufacturer on the device.<br />\r\n<br />\r\n<strong>- Maintainers:</strong> These are the ones who troubleshoot computer tools when they are down.<br />\r\n<strong>Example:</strong> Mobile phone store', '1488893393.swf', '1488893393.swf', '1488893393.jpg', 'sss3', 0, 2),
(6, 2, 'Les moyens', 'Ways', 'Les moyens sont ceux qui permettent de faciliter la communication quel que soit l&rsquo;endroit o&ugrave; l&rsquo;on se trouve. Parmi ces moyens il existe : <br />\r\n<strong>&bull; Le r&eacute;seau t&eacute;l&eacute;phonique :</strong> gr&acirc;ce auquel des personnes peuvent communiquer par le t&eacute;l&eacute;phone. <br />\r\n<strong>&bull; Le r&eacute;seau informatique :</strong> qui a pour but de permettre la communication et l&rsquo;&eacute;change d&rsquo;information dans un espace pr&eacute;cis. <br />\r\n<strong>&bull; Le r&eacute;seau internet :</strong> gr&acirc;ce auquel les personnes peuvent communiquer &agrave; travers une connexion internet c&rsquo;est-&agrave;-dire dans un espace vaste.<br />\r\n', 'The means are those which make it possible to facilitate the communication whatever the place where one is. Among these means there are:<br />\r\n<strong>&bull; The telephone network:</strong> through which people can communicate over the telephone.<br />\r\n<strong>&bull; The computer network:</strong> the purpose of which is to enable communication and exchange of information in a specific space.<br />\r\n<strong>&bull; The Internet network:</strong> through which people can communicate through an internet connection, that is to say in a vast space.<br />\r\n', '1488896349.swf', '1488896349.swf', '1488896349.jpg', 'sss4', 0, 3),
(8, 4, 'R&eacute;sum&eacute;', 'Summary', '<strong>L&rsquo;environnement informatique</strong> est l&rsquo;ensemble des outils, des personnes et des moyens utilis&eacute;s dans le domaine de l&rsquo;informatique. L&rsquo;ordinateur est un outil parmi plusieurs du syst&egrave;me informatique.', '<strong>The computer environment</strong> is the set of tools, people and means used in the field of computing. The computer is a tool among many of the computer system.', '1488903331.swf', '1488903331.swf', '1488903331.jpg', 'sss1', 0, 1),
(9, 6, 'D&eacute;finition', 'Definition', '<strong>A savoir :</strong>L&rsquo;ordinateur est l&rsquo;outil principal dans l&rsquo;environnement du syst&egrave;me informatique.<br />\r\nUn <strong>ordinateur</strong> est une machine permettant de manipuler les images les textes les sons, les nombres de fa&ccedil;on automatique et rationnelle.<br />\r\n', '<strong>Namely:</strong> The computer is the main tool in the environment of the computer system.<br />\r\nA <strong>computer</strong> is a machine allowing to manipulate the images the texts the sounds, the numbers automatically and rationally.', '1488973415.swf', '1488973415.swf', '1488973415.jpg', 'sss1', 0, 1),
(10, 6, 'Exemples', 'Examples', 'On dit qu&rsquo;une machine est<strong> automatique</strong> si elle n&rsquo;a pas besoin de l&rsquo;action de <br />\r\nL&rsquo;homme pour fonctionner et fournir des r&eacute;sultats.<br />\r\n<strong>Exemple :</strong> Une montre<br />\r\nOn dit qu&rsquo;une machine est <strong>rationnelle</strong> si elle permet d&rsquo;obtenir pour un probl&egrave;me quelconque le meilleur r&eacute;sultat en moins de temps.<br />\r\n<strong>Exemple</strong> : Pour effectuer cet op&eacute;ration 4&times;2, on peut soit compter les doigts, soit utiliser la table de multiplication.  La m&eacute;thode qui nous permet d&rsquo;obtenir le r&eacute;sultat en moins de temps est la table de multiplication c&rsquo;est donc la m&eacute;thode la plus rationnelle.<br />\r\n', 'A machine is said to be <strong>automatic</strong> if it does not need the action of<br />\r\nMan to function and deliver results.<br />\r\n<strong>Example:</strong> A watch<br />\r\nA machine is said to be <strong>rational</strong> if it makes it possible to obtain for any problem the best result in less time.<br />\r\n<strong>Example:</strong> To perform this 4 &times; 2 operation, one can either count the fingers or use the multiplication table. The method that allows us to get the result in less time is the multiplication table is therefore the most rational method.', '1488974561.swf', '1488974561.swf', '1488974561.jpg', 'sss2', 0, 2),
(11, 7, 'Ordinateurs de bureau', 'Desktop Computers', 'Les <strong>ordinateurs</strong> de bureau (en anglais <strong>desktop computers</strong>), compos&eacute;s d\'un bo&icirc;tier renfermant une carte m&egrave;re et permettant de raccorder les diff&eacute;rents p&eacute;riph&eacute;riques tels que l&rsquo;&eacute;cran et le clavier.', '<strong>Desktop computers</strong>, consisting of a motherboard-based enclosure for connecting various peripherals such as the display and the keyboard.', '1488976362.swf', '1488976362.swf', '1488976362.jpg', 'sss1', 0, 1),
(12, 7, 'Ordinateurs portables', 'Laptop', '    Un <strong>ordinateur portable</strong> (en anglais laptop ou notebook) est un ordinateur int&eacute;grant l\'ensemble des &eacute;l&eacute;ments dont il a besoin pour fonctionner, <strong>dont une alimentation &eacute;lectrique sur batterie</strong>, un <strong>&eacute;cran</strong> et un <strong>clavier</strong>, dans un<strong> bo&icirc;tier</strong> de taille pas tr&egrave;s grande.<br />\r\n    Donc un ordinateur portable est compos&eacute; d\'une seule pi&egrave;ce ayant un &eacute;cran d&eacute;pliable, un clavier et une souris.<br />\r\n', '    A laptop is a computer with all the elements it needs to operate, including a <strong>battery-powered</strong> power supply, a <strong>screen</strong> and a <strong>keyboar</strong>d, in a box that is not very large.<br />\r\n    So a laptop is made up of a single piece with a foldable screen, a <strong>keyboard</strong> and a <strong>mouse</strong>.', '1488976958.swf', '1488976958.swf', '1488976958.jpg', 'sss2', 0, 2),
(15, 10, 'Les agendas &eacute;lectroniques : Pr&eacute;sentation', 'The Electronic Agendas: Presentation', '    Les <strong>agendas &eacute;lectroniques</strong>, ou assistant personnels sont des ordinateurs de poche ils facilitent la gestion de l&rsquo;emploi du temps personnel.', '    <strong>The electronic diaries</strong>, or personal assistant are handheld computers they facilitate the management of the personal schedule.', '1488978782.swf', '1488978782.swf', '1488978782.jpg', 'sss1', 0, 1),
(18, 12, 'Introduction', 'Introduction', 'L&rsquo;ordinateur est compos&eacute; de deux parties : <br />\r\n&bull; La partie logicielle appel&eacute;e en anglais <strong>software</strong> <br />\r\n&bull; La partie mat&eacute;rielle appel&eacute;e en anglais <strong>hardware</strong><br />\r\n', 'The computer is composed of two parts:<br />\r\n&bull; The <strong>software</strong> part <br />\r\n&bull; The <strong>hardware</strong> part ', '1488980539.swf', '1488980539.swf', '1488980539.jpg', 'sss1', 0, 1),
(14, 9, 'Les tablettes PC : Pr&eacute;sentation', 'Tablet PCs: Overview', '    Les <strong>tablettes PC</strong> en anglais Tablet PC, &eacute;galement appel&eacute;es ardoises &eacute;lectroniques, sont compos&eacute;es d&rsquo;une pi&egrave;ce ayant un &eacute;cran tactile ainsi qu\'un certain nombre de p&eacute;riph&eacute;riques.', '    <strong>Tablet PCs</strong>, also known as electronic slates, are made up of a piece with a touch screen and a number of devices.', '1488977904.swf', '1488977904.swf', '1488977904.jpg', 'sss1', 0, 1),
(17, 11, 'Les serveurs : Pr&eacute;sentation', 'Servers: Overview', '    Ces ordinateurs souvent appel&eacute;s ordinateurs centraux poss&egrave;dent une grande puissance et des capacit&eacute;s de stockage gigantesques elles sont utilis&eacute;es dans de grandes entreprises pour effectuer des op&eacute;rations lourdes de calcul ou de traitement de donn&eacute;es volumineuses.', '    These computers, often referred to as central computers, have great power and huge storage capacities are used in large companies to perform heavy computational or data processing operations.', '1488979516.swf', '1488979516.swf', '1488979516.jpg', 'sss1', 0, 1),
(19, 8, 'D&eacute;finition', 'Definition', 'Un logiciel d&rsquo;application est un outil informatique con&ccedil;u pour permettre &agrave; l&rsquo;utilisateur d&rsquo;effectuer une t&acirc;che pr&eacute;cise avec son ordinateur.<br />\r\nPar <u>exemple</u>, nous avons NOTEPAD++ qui est un &eacute;diteur et permet ici d&rsquo;&eacute;crire du code HTML et de l&rsquo;interpr&egrave;te par le navigateur.<br />\r\n', 'An application software is a computer tool designed to allow the user to perform a specific task with his or her computer.<br />\r\nFor <u>example</u>, we have NOTEPAD ++ which is an editor and allows here to write HTML and the interpreter by the browser.', '1488981285.swf', '1488981285.swf', '1488981285.jpg', 'sss1', 0, 1),
(20, 14, 'Pr&eacute;sentation', 'Presentation', '    La partie mat&eacute;rielle est compos&eacute;e de l&rsquo;unit&eacute; centrale, et des p&eacute;riph&eacute;riques.', '    The hardware part consists of the central unit, and peripherals.', '1488985069.swf', '1488985069.swf', '1488985069.jpg', 'sss1', 0, 1),
(22, 15, 'cat&eacute;gories de logiciel d&rsquo;application', 'Application software categories', 'On distingue plusieurs cat&eacute;gories de logiciel d&rsquo;application : <br />\r\nLes logiciels de bureautique, les logiciels d&rsquo;infographie, les logiciels de montage vid&eacute;o, les logiciels de programmation les logiciels de montage photo, les didacticiels, les ludiciels, les logiciels de calcul. <br />\r\n', 'There are several categories of application software:<br />\r\nDesktop software, computer graphics software, video editing software, programming software, photo editing software, tutorials, computer game software, computer software.', '1488985471.swf', '1488985471.swf', '1488985471.jpg', 'sss1', 0, 1),
(23, 16, ' Composants d&rsquo;un syst&egrave;me informatique', ' Components of a computer system', '<strong>Un syst&egrave;me informatique</strong> comporte des logiciels et des composants mat&eacute;riels n&eacute;cessaires pour le traitement de l&rsquo;information que veut effectuer l&rsquo;utilisateur.', '<strong>A computer system</strong> comprises software and hardware components necessary for processing the information that the user wishes to carry out.', '1488986052.swf', '1488986052.swf', '1488986052.jpg', 'sss1', 0, 1),
(24, 14, 'L&rsquo;unit&eacute; centrale', 'Central unit', '  <strong>  L&rsquo;unit&eacute; centrale</strong> encore appel&eacute; boitier est la boite m&eacute;tallique contenant tous les organes fonctionnels de l&rsquo;ordinateur. On peut trouver des unit&eacute;s centrales de diff&eacute;rentes tailles et de diff&eacute;rentes formes provenant de plusieurs fabriquant diff&eacute;rents.', '<strong>The central unit</strong> still called the case is the metal box containing all the functional organs of the computer. Central units of different sizes and shapes can be found from several different manufacturers.', '1488986600.swf', '1488986600.swf', '1488986600.jpg', 'sss2', 0, 2),
(48, 27, 'Les tableurs', 'Spreadsheets', '<strong>Les tableurs</strong> sont des logiciels qui permettent de faire des calculs et de les pr&eacute;sent&eacute;s sous forme de tableau.il permettent d&rsquo;&eacute;tablir les factures, des listes ordonn&eacute;es, des bulletins de notes.<br />\r\nPar <u>exemple</u>, nous avons OpenOffice.<br />\r\n', '<strong>Spreadsheets</strong> are software that allow you to make calculations and present them in tabular form. They make it possible to establish invoices, ordered lists, notes.<br />\r\nFor <u>example</u>, we have OpenOffice.', '1488997934.swf', '1488997934.swf', '1488997934.jpg', 'sss3', 0, 3),
(49, 28, 'R&eacute;sum&eacute;', 'Summary', '    <strong>Un syst&egrave;me informatique</strong> est un ensemble d&rsquo;&eacute;quipements informatiques et des logiciels qui interviennent dans le processus de traitement de l&rsquo;information. Dans un syst&egrave;me informatique, les donn&eacute;es sont introduites avec des unit&eacute;s d&rsquo;entr&eacute;es, puis trait&eacute;es par le syst&egrave;me central et sauvegard&eacute;es dans des unit&eacute;s de stockage ou diffus&eacute;es &agrave; l&rsquo;ext&eacute;rieur &agrave; l&rsquo;aide des unit&eacute;s de sortie.', '    <strong>A computer system</strong> is a set of computer equipment and software that is involved in the information processing process. In a computer system, the data is input with input units and then processed by the central system and saved in storage units or externally broadcast using the output units', '1488998420.swf', '1488998420.swf', '1488998420.jpg', 'sss1', 0, 1),
(44, 27, ' D&eacute;finition', ' Definition', '<strong>Les logiciels de bureautique</strong> sont des logiciels qui permettent de faciliter les activit&eacute;s dans un bureau. Les logiciels de bureautique sont: les texteurs, les tableurs, les logiciels de publication, les logiciels de pr&eacute;sentation.<br />\r\nPar <u>exemple</u>, nous avons les outils de travail tel que Microsoft Word<br />\r\n', '<strong>Desktop software</strong> is software that makes it easier to work in an office. The office automation software is: texts, spreadsheets, publishing software, presentation software.<br />\r\nFor <u>example</u>, we have work tools such as Microsoft Word', '1488995920.swf', '1488995920.swf', '1488995920.jpg', 'sss1', 0, 1),
(45, 16, 'Quelques composants mat&eacute;riels d&rsquo;un syst&egrave;me informatique', ' Some hardware components of a computer system', '&bull;	<strong>L&rsquo;unit&eacute; centrale</strong> : C&rsquo;est le si&egrave;ge de traitement l&rsquo;information<br />\r\n&bull;	<strong>Moniteur</strong> : Permet de visualiser les informations de l&rsquo;ordinateur<br />\r\n&bull;	<strong>Le microphone</strong> : Permet d&rsquo;introduire du son dans l&rsquo;ordinateur<br />\r\n&bull;	<strong>La photocopieuse</strong> : permet multiplier des documents en grande quantit&eacute;<br />\r\n&bull;	<strong>Les baffles ou haut-parleurs</strong> : Permettent de ressortir du son de l&rsquo;ordinateur<br />\r\n', '<br />\r\n&bull; <strong>Central unit</strong>: This is the information processing headquarters<br />\r\n&bull; <strong>Monitor</strong>: View computer information<br />\r\n&bull; <strong>Microphone</strong>: Allows to insert sound into the computer<br />\r\n&bull; <strong>The photocopier</strong> : allows you to multiply documents in large quantities<br />\r\n&bull;<strong> Speakers or speakers</strong>: Allows you to exit the sound of the computer', '1488996558.swf', '1488996558.swf', '1488996558.jpg', 'sss2', 0, 2),
(28, 14, 'Les p&eacute;riph&eacute;riques', 'peripheral devices', 'On appelle <strong>p&eacute;riph&eacute;rique</strong> d&rsquo;un ordinateur tout composant qu&rsquo;on peut connecter &agrave; l&rsquo;unit&eacute; centrale. Les p&eacute;riph&eacute;riques d&rsquo;un ordinateur sont ces organes de sens. Les p&eacute;riph&eacute;riques de base sont le moniteur le clavier, la souris.<br />\r\n<strong>&bull; Le moniteur (&eacute;cran)</strong> permet l&rsquo;affichage des images et du texte.<br />\r\n<strong>&bull; Le clavier</strong> permet de saisir du texte.<br />\r\n<strong>&bull; La souris</strong> permet de s&eacute;lectionner les &eacute;l&eacute;ments sur l&rsquo;&eacute;cran.<br />\r\n<strong>Remarque :</strong> l&rsquo;ordinateur portable comporte les m&ecirc;mes parties mais avec des tailles plus petites et ses parties sont directement interconnect&eacute; &agrave; la carte m&egrave;re.<br />\r\n', 'A <strong>device of a computer</strong> is any component that can be connected to the central processing unit. The peripherals of a computer are these sense organs. The basic devices are the keyboard monitor, the mouse.<br />\r\n&bull; <strong>The monitor (screen)</strong> allows images and text to be displayed.<br />\r\n&bull; <strong>The keyboard</strong> allows you to enter text.<br />\r\n&bull; <strong>The mouse</strong> is used to select items on the screen.<br />\r\nNote: The laptop has the same parts but with smaller sizes and its parts are directly interconnected to the motherboard.<br />\r\n', '1488987334.swf', '1488987334.swf', '1488987334.jpg', 'sss3', 0, 3),
(46, 27, 'Les texteurs', 'The texters', ' <strong>Les texteurs</strong> sont des logiciels de saisie de texte. Ils permettent de produire des textes et de les rendre agr&eacute;able.<br />\r\nPar <u>exemple</u>, nous avons Microsoft Word, qui permet la mise en forme des textes tels qu&rsquo;un rapport de r&eacute;union<br />\r\n', '<strong>Textmakers</strong> are text input software. They make it possible to produce texts and make them enjoyable.<br />\r\nFor <u>example</u>, we have Microsoft Word, which allows the formatting of texts such as a meeting report', '1488996656.swf', '1488996656.swf', '1488996656.jpg', 'sss2', 0, 2),
(47, 25, 'Principe', ' Principle', '    <strong>L&rsquo;ordinateur fonctionne de la mani&egrave;re suivante</strong> : il re&ccedil;oit les donn&eacute;es par des p&eacute;riph&eacute;riques d&rsquo;entr&eacute;es. Ces donn&eacute;es sont transmises &agrave; l&rsquo;unit&eacute; centrale pour le traitement. Apr&egrave;s le traitement, les r&eacute;sultats sont diffus&eacute;s &agrave; l&rsquo;ext&eacute;rieur par les unit&eacute;s de sortie. Dans l&rsquo;unit&eacute; centrale, c&rsquo;est le processeur qui traite les donn&eacute;es stock&eacute;es dans la m&eacute;moire centrale. Le sch&eacute;ma ci-dessous pr&eacute;sente le principe de fonctionnement d&rsquo;un ordinateur.  ', '<br />\r\n    The computer operates as follows: it receives data from input devices. These data are transmitted to the CPU for processing. After the treatment, the results are broadcast outdoors by the output units. In the CPU, the processor processes the data stored in the central memory. The diagram below shows the operating principle of a computer.', '1488997435.swf', '1488997435.swf', '1488997435.jpg', 'sss1', 0, 1),
(30, 18, 'Partie logicielle de l&rsquo;ordinateur', 'Software part of the computer', ' <strong>La partie logicielle</strong> de l&rsquo;ordinateur est l&rsquo;intelligence de l&rsquo;ordinateur.  Elle est constitu&eacute;e du programme de base (syst&egrave;me d&rsquo;exploitation exemple : Windows 10) et des programmes d&rsquo;application <strong>(exemple : bloc-notes qui permet la saisie de texte)</strong>. On appelle <strong>programme</strong> un ensemble d&rsquo;ordres compris et ex&eacute;cut&eacute;s par l&rsquo;ordinateur.', '<strong>The software part of the computer</strong> is the intelligence of the computer. It consists of the basic program<strong> (operating system example: Windows 10)</strong> and application programs <strong>(example: notepad that allows text input).</strong> A <strong>program</strong> is called a set of orders understood and executed by the computer.', '1488987853.swf', '1488987853.swf', '1488987853.jpg', 'sss1', 0, 1),
(41, 24, 'Pr&eacute;sentation des diff&eacute;rents types de p&eacute;riph&eacute;riques', 'Overview of Device Types', 'On distingue principalement <strong>les p&eacute;riph&eacute;riques d&rsquo;entr&eacute;e, les p&eacute;riph&eacute;riques de sortie et les p&eacute;riph&eacute;riques mixtes.</strong>', 'There are mainly <strong>input devices, output devices and mixed devices</strong>.', '1488993051.swf', '1488993051.swf', '1488993051.jpg', 'sss1', 0, 1),
(42, 26, 'Pr&eacute;sentation des diff&eacute;rents types de p&eacute;riph&eacute;riques', 'Overview of Device Types', 'On distingue principalement<strong> les p&eacute;riph&eacute;riques d&rsquo;entr&eacute;e, les p&eacute;riph&eacute;riques de sortie et les p&eacute;riph&eacute;riques mixtes.</strong>', 'There are mainly <strong>input devices, output devices and mixed devices.</strong>', '1488994312.swf', '1488994312.swf', '1488994312.jpg', 'sss1', 0, 1),
(32, 19, 'R&eacute;sum&eacute;', 'Summary', ' <strong>Un ordinateur</strong> est une machine permettant de manipuler les donn&eacute;es de fa&ccedil;on automatique et rationnelle.  On distingue plusieurs familles d&rsquo;ordinateurs parmi lesquelles ; <strong>les ordinateurs personnels les serveurs, les tablettes, les assistants personnels</strong>. Un <strong>ordinateur</strong> est form&eacute; d&rsquo;une partie logicielle et d&rsquo;une partie mat&eacute;rielle.  La partie mat&eacute;rielle d&rsquo;un ordinateur personnel est constitu&eacute; de l&rsquo;unit&eacute; centrale et des p&eacute;riph&eacute;riques.  La partie logicielle d&rsquo;un ordinateur est constitu&eacute;e par le programme de base et les programmes d&rsquo;application.', '<strong>A computer</strong> is a machine for manipulating data automatically and rationally. There are several families of computers among which; <strong>Personal computers servers, tablets, personal assistants</strong>. A computer consists of a software part and a hardware part. The hardware part of a personal computer consists of the central unit and peripherals. The software part of a computer consists of the basic program and the application programs.', '1488988416.swf', '1488988416.swf', '1488988416.jpg', 'sss1', 0, 1),
(33, 16, 'Quelques logiciels constituant un syst&egrave;me informatique', 'Some software constituting a computer system', '&bull;<strong>Edition de texte</strong> : Saisie de textes simples, sans mise en page sophistiqu&eacute;e <br />\r\nExemples : Bloc-notes, SimpleText (MAC)&hellip;<br />\r\n<br />\r\n&bull;<strong>Traitement de texte</strong> : Saisie de texte avec mise en page sophistiqu&eacute;e, insertion d\'images et de tableaux, etc. <br />\r\nExemple : Word, Latex <br />\r\n<br />\r\n&bull;	<strong>Logiciels graphiques</strong> : Dessins et images <br />\r\nExemple: Paint Shop Pro (PC), Adobe Photoshop (PC et Mac), Adobe Illustrator (PC et Mac) <br />\r\n<br />\r\n&bull;<strong>Tableurs</strong> : R&eacute;alisation de tableaux de calculs (factures, bulletins de salaire, etc&hellip; )<br />\r\nExemple : Excel, Lotus<br />\r\n<br />\r\n&bull;<strong>Logiciels de bases de Donn&eacute;es</strong> : R&eacute;alisation de listes structur&eacute;es d\'&eacute;l&eacute;ments et leur exploitation. <br />\r\nExemple : DBase (PC), Access (PC) <br />\r\n<br />\r\n&bull;<strong>Syst&egrave;me d&rsquo;exploitation</strong> : gestion des ressources d&rsquo;un ordinateur<br />\r\nExemple : OS/2 (con&ccedil;u par la firme IBM) <br />\r\n', '<br />\r\n&bull; <strong>Text editing</strong>: Simple text input without sophisticated layout<br />\r\nExamples: Notepad, SimpleText (MAC) ...<br />\r\n<br />\r\n&bull; <strong>Text processing</strong>: Text input with sophisticated layout, insertion of pictures and tables, etc.<br />\r\nExample: Word, Latex<br />\r\n<br />\r\n&bull; <strong>Graphics software</strong>: Drawings and images<br />\r\nExample: Paint Shop Pro (PC), Adobe Photoshop (PC and Mac), Adobe Illustrator (PC and Mac)<br />\r\n<br />\r\n&bull;<strong> Spreadsheets</strong>: Creation of spreadsheets (invoices, pay slips, etc ...)<br />\r\nExample: Excel, Lotus<br />\r\n<br />\r\n&bull; <strong>Database software</strong>: Realization of structured lists of elements and their exploitation.<br />\r\nExample: DBase (PC), Access (PC)<br />\r\n<br />\r\n&bull;<strong> Operating system</strong>: managing a computer\'s resources<br />\r\nExample: OS / 2 (designed by IBM)', '1488988715.swf', '1488988715.swf', '1488988715.jpg', 'sss3', 0, 3),
(56, 30, 'Le clavier', 'The keyboard', '<strong>C&rsquo;est un p&eacute;riph&eacute;rique &agrave; touches</strong> qui permet de saisir des caract&egrave;res (lettres, chiffres, symboles...). <br />\r\nSuivant la disposition des 6 premi&egrave;res touches du bloc alphab&eacute;tique, on distingue 02 types : <br />\r\n[b]les claviers fran&ccedil;ais ou AZERTY. <br />\r\n les claviers anglais ou QWERTY.[/b] <br />\r\nSuivant le nombre de touches, on distingue plusieurs types de clavier :<br />\r\n[b]&bull; Le clavier Standard (plus ou moins 82 touches) <br />\r\n&bull; Le clavier &Eacute;tendu (entre 100 et 110 touches)[/b] <br />\r\n', 'It is <strong>a device with keys</strong> that allows to enter characters (letters, numbers, symbols ...).<br />\r\nDepending on the layout of the first 6 keys of the alphabetical block, there are two types:<br />\r\n[b] French or QWERTY keyboards.<br />\r\n English keyboards or QWERTY.[/b]<br />\r\nDepending on the number of keys, there are several types of keyboard:<br />\r\n[b]&bull; The Standard keyboard (plus or minus 82 keys)<br />\r\n&bull; The extended keyboard (between 100 and 110 keys)[/b]', '1489048623.swf', '1489048623.swf', '1489048623.jpg', 'sss2', 0, 2),
(54, 24, 'Les p&eacute;riph&eacute;riques mixtes', 'Mixed peripherals', 'Encore appel&eacute; <strong>p&eacute;riph&eacute;riques d&rsquo;entr&eacute;e-sortie</strong>, les p&eacute;riph&eacute;riques mixtes permettent aux utilisateurs d&rsquo;introduire et de ressortir les informations de l&rsquo;ordinateur. Ce sont g&eacute;n&eacute;ralement les m&eacute;moires de masse parmi lesquelles on peut citer <strong>CD-ROM, DVD, Disque Dur, Bandes magn&eacute;tiques, disquettes, disque amovible (USB), etc&hellip;.</strong>', 'Again called <strong>input-output devices</strong>, mixed devices allow users to introduce and retrieve information from the computer. These are usually mass storage memories, i<strong>ncluding CD-ROM, DVD, Hard Disk, Magnetic tapes, floppy disks, removable disk (USB), etc ....</strong>', '1489046990.swf', '1489046990.swf', '1489046990.jpg', 'sss4', 0, 4),
(55, 30, 'Le moniteur', 'The monitor', '    C&rsquo;est<strong> un p&eacute;riph&eacute;rique de sortie</strong> permettant de visualiser les informations provenant de l&rsquo;unit&eacute; centrale et des autres p&eacute;riph&eacute;riques. Les moniteurs sont souvent caract&eacute;ris&eacute;s par les donn&eacute;es suivantes :<br />\r\n <br />\r\n<strong>&bull; La r&eacute;solution:</strong> elle se mesure en pixels par pouce carr&eacute;. Elle est actuellement comprise entre 640x480 et 1600x1200. <br />\r\n<strong>&bull; La dimension ou taille de l&rsquo;&eacute;cran :</strong> elle se mesure en \"pouces\" <strong>(1pouce = 2,54cm)</strong> et correspond &agrave; la mesure de la diagonale de l\'&eacute;cran.On trouve les dimensions suivantes : <strong>15\", 17\", 19\", 20\", etc.</strong> <br />\r\n<strong>&bull; La fr&eacute;quence de balayage :</strong> C\'est le nombre d\'images qui sont affich&eacute;es par seconde, on l\'appelle aussi rafra&icirc;chissement, elle est exprim&eacute;e en Hertz. Plus cette valeur est &eacute;lev&eacute;e meilleur est le confort visuel (on ne voit pas l\'image scintiller), il faut donc qu\'elle soit sup&eacute;rieure &agrave;<strong> 67 Hz (limite inf&eacute;rieure &agrave; partir de laquelle l&rsquo;&oelig;il remarque v&eacute;ritablement l\'image \"clignoter\".</strong><br />\r\n', 'It is an<strong> output device</strong> for viewing information from the CPU and other peripherals. The monitors are often characterized by the following data:<br />\r\n<strong>&bull; Resolution:</strong> it is measured in pixels per square inch. It is currently between 640x480 and 1600x1200.<br />\r\n<strong>&bull; The size or size of the screen:</strong> it is measured in \"inch\"<strong> (1 inch = 2.54cm)</strong> and corresponds to the measurement of the diagonal of the screen. The following dimensions are available: <em>15 \", 17\", 19 \", 20\", etc.</em><br />\r\n<strong>&bull; Scan frequency:</strong> This is the number of frames that are displayed per second, it is also called refresh, it is expressed in Hertz. The higher the value, the better the visual comfort (the flickering image is not visible), it must therefore be greater than<strong> 67 Hz</strong> <strong>(lower limit from which the eye actually notices the \"blink\" .</strong>', '1489048132.swf', '1489048132.swf', '1489048132.jpg', 'sss1', 0, 1),
(53, 24, 'Les p&eacute;riph&eacute;riques de sortie', 'Output Devices', '    Un <strong>p&eacute;riph&eacute;rique de sortie</strong> est une unit&eacute; permettant &agrave; l&rsquo;utilisateur de ressortir les informations de l&rsquo;ordinateur. <br />\r\nParmi ces p&eacute;riph&eacute;riques, on peut citer :[b] &eacute;cran, imprimantes, hauts parleurs, graveurs de CD/DVD, table tra&ccedil;ante, les perforateurs de cartes, les perforateurs de bandes, etc&hellip;.<br />\r\n[/b]', '<strong>An output device</strong> is a unit that allows the user to retrieve information from the computer.<br />\r\nAmong these devices are: <strong>screen, printers, loudspeakers, CD / DVD writers, plotters, card punchers, tape punchers, etc ....</strong>', '1489046542.swf', '1489046542.swf', '1489046542.jpg', 'sss3', 0, 3),
(50, 27, 'Les logiciels de publication', 'Publishing software', '<strong>Les  logiciels de publication</strong> servent &agrave; pr&eacute;senter des billets d&rsquo;invitation, des cartes de veux, les cartes de f&eacute;licitation.<br />\r\nPar <u>exemple</u>, nous avons Microsoft Publisher.<br />\r\n<br />\r\n', '<strong>Publishing software</strong> is used to present invitation tickets, wish cards, congratulatory cards.<br />\r\nFor <u>example</u>, we have Microsoft Publisher.', '1488998961.swf', '1488998961.swf', '1488998961.jpg', 'sss4', 0, 4),
(52, 24, 'Les p&eacute;riph&eacute;riques d&rsquo;entr&eacute;e', 'Input Devices', '    <strong>Un p&eacute;riph&eacute;rique d&rsquo;entr&eacute;e</strong> est une unit&eacute; permettant &agrave; l&rsquo;utilisateur d&rsquo;introduire les donn&eacute;es dans l&rsquo;ordinateur. Quelques exemples de p&eacute;riph&eacute;riques d&rsquo;entr&eacute;e sont : <strong>cam&eacute;scope num&eacute;rique, Scanneur, lecteur de disquette, lecteur de CD/DVD, lecteur optique, souris, crayon optique, &eacute;cran tactile, manette de jeux, camera, microphone, etc&hellip;</strong>', '<strong>An input device</strong> is a unit that allows the user to enter the data into the computer. Some examples of input devices are: <strong>digital camcorder, scanner, floppy disk drive, CD / DVD drive, optical drive, mouse, optical pencil, touchscreen, joystick, camera, microphone, etc.</strong>', '1489045984.swf', '1489045984.swf', '1489045984.jpg', 'sss2', 0, 2),
(40, 21, 'D&eacute;finition', 'Definition', '<strong>Un p&eacute;riph&eacute;rique</strong> est un composant qui permet &agrave; l&rsquo;utilisateur de communiquer avec l&rsquo;ordinateur. L&rsquo;ensemble des p&eacute;riph&eacute;riques est connect&eacute; &agrave; l&rsquo;unit&eacute; centrale. C&rsquo;est ainsi qu&rsquo;on distingue plusieurs types de p&eacute;riph&eacute;riques.', '<strong>A device</strong>is a component that allows the user to communicate with the computer. All of the peripherals are connected to the central unit. Several types of peripherals are distinguished.', '1488992392.swf', '1488992392.swf', '1488992392.jpg', 'sss1', 0, 1),
(57, 30, 'Description du clavier', 'Keyboard Description', 'Un clavier comporte  :<br />\r\n[b]Les touches de fonctions :<br />\r\nLes lettres de l\'alphabet :<br />\r\nLes touches sp&eacute;ciales<br />\r\nLes touches multiples<br />\r\nLe pav&eacute; de direction[/b]<br />\r\nLe pav&eacute; num&eacute;rique rendu actif par la touche <strong>Verrnum</strong> (contr&ocirc;l&eacute;e par un voyant vert).<br />\r\n', 'A keyboard includes:<br />\r\n[b]The function keys:<br />\r\nLetters of the alphabet :<br />\r\nSpecial keys<br />\r\nMultiple keys<br />\r\nThe steering wheel[/b]<br />\r\nThe keypad made active by the <strong>Verrnum key</strong> (controlled by a green LED).', '1489049445.swf', '1489049445.swf', '1489049445.jpg', 'sss3', 0, 3),
(58, 30, 'La souris', 'The mouse', '    C&rsquo;est sans doute le p&eacute;riph&eacute;rique le plus intuitif vous permettant de communiquer avec votre ordinateur. Elle se pr&eacute;sente sous la forme d\'un bo&icirc;tier comprenant de un &agrave; trois boutons. Sur l\'&eacute;cran de l\'ordinateur un curseur (g&eacute;n&eacute;ralement une fl&egrave;che) suit les mouvements de la souris. Ces mouvements sont mesur&eacute;s selon deux axes par le roulement d\'une bille ou par un faisceau laser.<br />\r\nAinsi, lorsque l\'on d&eacute;place la souris sur la surface de son tapis (ou de la table) on peut voir le curseur reproduire ce m&ecirc;me d&eacute;placement &agrave; l\'&eacute;cran, on peut donc imaginer la souris comme un p&eacute;riph&eacute;rique servant &agrave; \"toucher\" l\'&eacute;cran. Par leur interm&eacute;diaire, vous pouvez effectuer cinq op&eacute;rations principales : <br />\r\n<strong>&bull; Clic :</strong> Par une pression sur le bouton gauche de votre souris sur un &eacute;l&eacute;ment, il vous permet d&rsquo;effectuer un choix, une commande ou d&rsquo;activer un menu. <br />\r\n<strong>&bull; Clic droit :</strong> Par une pression sur le bouton droit de votre souris sur un &eacute;l&eacute;ment, il vous permet d&rsquo;ouvrir un menu contextuel le concernant. <br />\r\n<strong>&bull; Double-clic :</strong> Par deux pressions rapides sur le bouton gauche de la souris, <br />\r\nle double-clic vous permet d&rsquo;ouvrir un &eacute;l&eacute;ment, un logiciel&hellip; <br />\r\n<strong>&bull; Cliquez d&eacute;placez :</strong> Cliquez avec le bouton gauche sur un &eacute;l&eacute;ment (ic&ocirc;ne, dossier,&hellip;) et restez appuy&eacute;. D&eacute;placez votre souris, l&rsquo;&eacute;l&eacute;ment se positionnera &agrave; l&rsquo;endroit o&ugrave; vous rel&acirc;chez le bouton de votre souris. <br />\r\n<strong>&bull; La roulette ou molette :</strong> <br />\r\n<strong>La souris &agrave; roulette facilite grandement la lecture</strong> de documents longs et de sites web. Habituellement les documents et sites web sont trop grands pour &ecirc;tre affich&eacute;s d&rsquo;un seul tenant &agrave; l&rsquo;&eacute;cran.<br />\r\n Ils sont donc associ&eacute;s &agrave; un ascenseur permettant de faire d&eacute;filer leurs contenus progressivement. Toutefois cela a rapidement oblig&eacute; les utilisateurs &agrave; constamment se concentrer sur l&rsquo;ascenseur plut&ocirc;t que sur le document.<br />\r\n<strong>Ainsi la roulette corrige le probl&egrave;me</strong> en proposant de faire d&eacute;filer les documents par une simple rotation de cette derni&egrave;re. Les modifications concernant la souris et son pointeur s\'effectuent dans le Panneau de configuration.<br />\r\n', 'This is<strong> probably the most intuitive device to communicate with your computer.</strong> It is in the form of a housing comprising one to three buttons. On the computer screen a cursor (usually an arrow) follows the movements of the mouse. These movements are measured in two axes by the rolling of a ball or by a laser beam.<br />\r\nThus, when the mouse is moved on the surface of its carpet (or table), the cursor can be seen to reproduce the same displacement on the screen, so the mouse can be imagined as a peripheral device used to \"touch\" the l \'screen. Through them, you can perform five main operations:<br />\r\n&bull; Click:<strong></strong> By pressing the left mouse button on an item, it allows you to make a choice, a command or activate a menu.<br />\r\n<strong>&bull; Right click:</strong> By pressing the right mouse button on an item, it allows you to open a context menu about it.<br />\r\n<strong>&bull; Double-click:</strong> By two quick presses on the left mouse button,<br />\r\nDouble-clicking allows you to open an item, a software ...<br />\r\n<strong>&bull; Click Move:</strong> Left click on an item (icon, folder, ...) and hold it down. Move your mouse, the item will position where you release the mouse button.<br />\r\n<strong>&bull; The wheel or wheel:</strong><br />\r\n<strong>The mouse with a roller makes it easy to read long documents and websites.</strong> Usually documents and websites are too large to be displayed in one piece on the screen.<br />\r\n&nbsp;They are therefore associated with an elevator allowing to scroll their contents gradually. However this quickly forced users to constantly focus on the elevator rather than on the document.<br />\r\nThus, the roulette corrects the problem by proposing to scroll the documents by a simple rotation of the latter. Changes to the mouse and its pointer are made in the Control Panel.<br />\r\n', '1489050956.swf', '1489050956.swf', '1489050956.jpg', 'sss4', 0, 4),
(59, 30, 'Le scanner', 'The scanner', '<strong>C&rsquo;est un p&eacute;riph&eacute;rique permettant de num&eacute;riser des documents &agrave; partir d\'un format \"papier\" et de g&eacute;n&eacute;rer des documents au format \"&eacute;lectronique ou num&eacute;rique\"</strong> qu\'il est possible d\'enregistrer dans la m&eacute;moire de l\'ordinateur. Le scanner est caract&eacute;ris&eacute; par sa qualit&eacute; de num&eacute;risation (r&eacute;solution). <br />\r\nSignalons aussi l&rsquo;existence d&rsquo;appareils qui remplissent &agrave; la fois les fonctions de scanner, d&rsquo;imprimante de photocopieur et m&ecirc;me de t&eacute;l&eacute;copieur<br />\r\n', '<strong>It is a device for scanning documents from a \"paper\" format and for generating documents in \"electronic or digital\" format</strong> that can be stored in the computer memory. The scanner is characterized by its digitization quality (resolution).<br />\r\nAlso note the existence of devices that fulfill both the functions of scanner, copier printer and even fax machine', '1489051530.swf', '1489051530.swf', '1489051530.jpg', 'sss5', 0, 5),
(60, 31, 'R&eacute;sum&eacute;', 'Summary', '<strong>Les p&eacute;riph&eacute;riques sont des organes permettant &agrave; l&rsquo;utilisateur de communiquer avec l&rsquo;ordinateur.</strong>On distingue fondamentalement trois types de p&eacute;riph&eacute;rique qui sont <strong>les p&eacute;riph&eacute;riques d&rsquo;entr&eacute;e, les p&eacute;riph&eacute;riques de sortie et les p&eacute;riph&eacute;riques mixtes.</strong>', 'Devices are devices that allow the user to communicate with the computer. There are basically three types of devices that <strong>are input devices, output devices, and mixed devices.</strong>', '1489052362.swf', '1489052362.swf', '1489052362.jpg', 'sss1', 0, 1),
(61, 32, 'Pr&eacute;sentation des diff&eacute;rents types de p&eacute;riph&eacute;riques', 'Overview of Device Types', 'On distingue principalement <strong>les p&eacute;riph&eacute;riques d&rsquo;entr&eacute;e, les p&eacute;riph&eacute;riques de sortie et les p&eacute;riph&eacute;riques mixtes.</strong>', 'There are mainly <strong>input devices, output devices and mixed devices.</strong>', '1489056671.swf', '1489056671.swf', '1489056671.jpg', 'sss1', 0, 1),
(62, 32, 'Les p&eacute;riph&eacute;riques d&rsquo;entr&eacute;e', 'Input Devices', '<strong>Un p&eacute;riph&eacute;rique d&rsquo;entr&eacute;e</strong> est une unit&eacute; permettant &agrave; l&rsquo;utilisateur d&rsquo;introduire les donn&eacute;es dans l&rsquo;ordinateur. Quelques exemples de p&eacute;riph&eacute;riques d&rsquo;entr&eacute;e sont : <strong>cam&eacute;scope num&eacute;rique, Scanneur, lecteur de disquette, lecteur de CD/DVD, lecteur optique, souris, crayon optique, &eacute;cran tactile, manette de jeux, camera, microphone, etc&hellip;</strong>', 'An input device is a unit that allows the user to enter the data into the computer. Some examples of input devices are: <strong>digital camcorder, scanner, floppy disk drive, CD / DVD drive, optical drive, mouse, optical pencil, touchscreen, joystick, camera, microphone, etc.</strong><strong></strong>', '1489058203.swf', '1489058203.swf', '1489058203.jpg', 'sss2', 0, 2),
(63, 32, 'Les p&eacute;riph&eacute;riques de sortie', 'Output Devices', '<strong>Un p&eacute;riph&eacute;rique de sortie</strong> est une unit&eacute; permettant &agrave; l&rsquo;utilisateur de ressortir les informations de l&rsquo;ordinateur. <br />\r\nParmi ces p&eacute;riph&eacute;riques, on peut citer :<strong> &eacute;cran, imprimantes, hauts parleurs, graveurs de CD/DVD, table tra&ccedil;ante, les perforateurs de cartes, les perforateurs de bandes, etc&hellip;.</strong><br />\r\n', '<strong>An output device</strong> is a unit that allows the user to retrieve information from the computer.<br />\r\nAmong these devices are:<strong> screen, printers, loudspeakers, CD / DVD writers, plotters, card punchers, tape punchers, etc ....</strong>', '1489058551.swf', '1489058551.swf', '1489058551.jpg', 'sss3', 0, 3),
(64, 32, 'Les p&eacute;riph&eacute;riques mixtes', 'Mixed peripherals', '    Encore appel&eacute; <strong>p&eacute;riph&eacute;riques d&rsquo;entr&eacute;e-sortie,</strong> les p&eacute;riph&eacute;riques mixtes permettent aux utilisateurs d&rsquo;introduire et de ressortir les informations de l&rsquo;ordinateur. Ce sont g&eacute;n&eacute;ralement les m&eacute;moires de masse parmi lesquelles on peut citer <strong>CD-ROM, DVD, Disque Dur, Bandes magn&eacute;tiques, disquettes, disque amovible (USB), etc&hellip;.</strong>', 'Again called <strong>input-output devices</strong>, mixed devices allow users to introduce and retrieve information from the computer. <strong>These are usually mass storage memories, including CD-ROM, DVD, Hard Disk, Magnetic tapes, floppy disks, removable disk (USB), etc ....</strong><br />\r\n', '1489058753.swf', '1489058753.swf', '1489058753.jpg', 'sss4', 0, 4),
(65, 27, 'Les logiciels de  Pr&eacute;sentation', 'Presentation Software', 'Les logiciels de pr&eacute;sentation sont utilis&eacute;s pour les pr&eacute;sentations visuelles assist&eacute;es par ordinateur. Ils sont souvent utilis&eacute;s dans les r&eacute;unions, les s&eacute;minaires de formation, les expos&eacute;s, les discours', 'Presentation software is used for computer-assisted visual presentations. They are often used in meetings, training seminars, lectures, speeches', '1489061445.swf', '1489061445.swf', '1489061445.jpg', 'sss5', 0, 5);

-- --------------------------------------------------------

--
-- Structure de la table `section`
--

CREATE TABLE `section` (
  `ID_SEC` int(11) NOT NULL,
  `ID_CHAP` int(11) NOT NULL,
  `LIBELLE_SEC_FR` varchar(255) DEFAULT NULL,
  `LIBELLE_SEC_EN` varchar(255) NOT NULL,
  `CODE_SEC` varchar(10) NOT NULL,
  `num` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `section`
--

INSERT INTO `section` (`ID_SEC`, `ID_CHAP`, `LIBELLE_SEC_FR`, `LIBELLE_SEC_EN`, `CODE_SEC`, `num`) VALUES
(1, 1, 'C&rsquo;est quoi l&rsquo;environnement informatique ?', 'What is the IT environment?', 'M1ch0s1', 1),
(2, 1, 'R&eacute;sum&eacute;', 'Summary', 'M1ch0s2', 2),
(3, 3, 'De quoi est compos&eacute; un syst&egrave;me d&rsquo;exploitation', ' What is an operating system', 'M1ch6s1', 1),
(4, 4, 'C&rsquo;est quoi un ordinateur ?', 'What is a computer?', 'M1ch1s1', 1),
(5, 4, 'Les familles d&rsquo;ordinateurs', 'Families of computers', 'M1ch1s2', 2),
(6, 2, 'C&rsquo;est quoi un logiciel d&rsquo;application ?', 'What is an application software?', 'M1ch5s1', 1),
(7, 4, 'Quelles sont les parties d&rsquo;un ordinateur personnel ?', 'What are the parts of a personal computer?', 'M1ch1s3', 3),
(8, 5, 'De quoi est compos&eacute; un syst&egrave;me informatique', ' What is a computer system', 'M1ch6s1', 1),
(9, 2, 'Quel sont les cat&eacute;gories de logiciel d&rsquo;application ?', 'What are the application software categories?', 'M1ch5s2', 2),
(10, 4, 'R&eacute;sum&eacute;', 'Summary', 'M1ch1s4', 4),
(11, 6, 'C&rsquo;est quoi un p&eacute;riph&eacute;rique ?', 'What is a device?', 'M1ch2s1', 1),
(12, 2, 'R&eacute;sum&eacute; et Travaux pratiques', 'Summary and Practical Works', 'M1ch5s3', 3),
(13, 5, 'Quel est le principe de fonctionnement d&rsquo;un ordinateur', 'What is the operating principle of a computer', 'M1ch6s2', 2),
(14, 6, 'Les diff&eacute;rents types de p&eacute;riph&eacute;riques ', 'Different types of peripherals', 'M1ch2s2', 2),
(16, 5, 'R&eacute;sum&eacute;', 'summary', 'M1ch6s3', 3),
(17, 6, '&Eacute;tude d&eacute;taill&eacute;e de quelques p&eacute;riph&eacute;riques', 'Detailed study of some devices', 'M1ch2s3', 3),
(18, 6, 'R&eacute;sum&eacute;', 'Summary', 'M1ch2s4', 4);

-- --------------------------------------------------------

--
-- Structure de la table `sous_section`
--

CREATE TABLE `sous_section` (
  `ID_SOUS_SEC` int(11) NOT NULL,
  `ID_SEC` int(11) NOT NULL,
  `LIBELLE_SOUS_SEC_FR` varchar(255) DEFAULT NULL,
  `LIBELLE_SOUS_SEC_EN` varchar(255) NOT NULL,
  `CODE_SOUS_SEC` varchar(10) NOT NULL,
  `num` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sous_section`
--

INSERT INTO `sous_section` (`ID_SOUS_SEC`, `ID_SEC`, `LIBELLE_SOUS_SEC_FR`, `LIBELLE_SOUS_SEC_EN`, `CODE_SOUS_SEC`, `num`) VALUES
(1, 1, 'Introduction', 'Introduction', 'M1ch0ss1', 1),
(2, 1, 'Environnement informatique', 'IT environment', 'M1ch0ss2', 2),
(4, 2, 'R&eacute;sum&eacute;', 'Summary', 'M1ch0ss1', 1),
(30, 17, '&Eacute;tude d&eacute;taill&eacute;e de quelques p&eacute;riph&eacute;riques', 'Detailed study of some devices', 'M1ch2ss1', 1),
(6, 4, 'Pr&eacute;sentation', 'Presentation', 'M1ch1ss1', 1),
(7, 5, 'Les ordinateurs personnels', 'Personal computers', 'M1ch1ss1', 1),
(8, 6, 'Le logiciel d&rsquo;application ', 'Application software', 'M1ch5ss1', 1),
(9, 5, 'Les tablettes PC', 'Tablet PCs', 'M1ch1ss2', 2),
(10, 5, 'Les agendas &eacute;lectroniques', 'The Electronic Agendas', 'M1ch1ss3', 3),
(11, 5, 'Les serveurs', 'Servers', 'M1ch1ss4', 4),
(12, 7, 'Introduction', 'Introduction', 'M1ch1ss1', 1),
(14, 7, 'Partie mat&eacute;rielle de l&rsquo;ordinateur : Hardware', 'Hardware part of the computer', 'M1ch1ss2', 2),
(15, 9, 'Quel sont les cat&eacute;gories de logiciel d&rsquo;application ?', 'What are the application software categories?', 'M1ch5ss1', 1),
(16, 8, 'Composants d&rsquo;un syst&egrave;me informatique', 'Components of a computer system', 'M1ch6ss1', 1),
(18, 7, ' Logicielle de l&rsquo;ordinateur', 'Computer software', 'M1ch1ss3', 3),
(19, 10, 'R&eacute;sum&eacute;', 'Summary', 'M1ch1ss1', 1),
(20, 9, 'Les didacticiels', 'Tutorials', 'M1ch5ss3', 3),
(21, 11, 'Introduction', 'Introduction', 'M1ch2ss1', 1),
(22, 12, 'R&eacute;sum&eacute;', 'Summary', 'M1ch5ss1', 1),
(27, 9, 'Les logiciels  bureautiques', 'Office software', 'M1ch5ss2', 2),
(32, 14, 'Quels sont les diff&eacute;rents types de p&eacute;riph&eacute;riques ?', 'What are the different types of peripherals?', 'M1ch2ss1', 1),
(25, 13, 'Principe de fonctionnement d&rsquo;un ordinateur', 'Principle of operation of a computer', 'M1ch6ss1', 1),
(28, 16, 'R&eacute;sum&eacute; et travaux pratiques', 'Summary and practical work', 'M1ch6ss1', 1),
(31, 18, 'R&eacute;sum&eacute;', 'Summary', 'M1ch2ss1', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tp`
--

CREATE TABLE `tp` (
  `id_tp` int(11) NOT NULL,
  `id_contenue` int(11) NOT NULL,
  `titre_FR` varchar(100) NOT NULL,
  `titre_EN` varchar(100) NOT NULL,
  `chemin_FR` varchar(100) NOT NULL,
  `chemin_EN` varchar(100) NOT NULL,
  `code_tp` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tp`
--

INSERT INTO `tp` (`id_tp`, `id_contenue`, `titre_FR`, `titre_EN`, `chemin_FR`, `chemin_EN`, `code_tp`) VALUES
(1, 7, '0.2.1.2	Travaux pratiques connais-tu maintenant l&rsquo;environnement informatique ?', '0.2.1.2	Travaux pratiques connais-tu maintenant l&rsquo;environnement informatique ?', '1488900984.pdf', '1488900984.pdf', 'M1tpchap0'),
(2, 8, 'Travaux pratiques connais-tu maintenant l&rsquo;environnement informatique ?', 'Travaux pratiques connais-tu maintenant l&rsquo;environnement informatique ?', '1488903331.pdf', '1488903331.pdf', 'M1tpchap0'),
(3, 32, 'Travaux pratique : les types d&rsquo;ordinateurs ', 'Travaux pratique : les types d&rsquo;ordinateurs ', '1488988416.pdf', '1488988416.pdf', 'TPch1'),
(4, 49, ' Syst&egrave;me Informatique', ' Syst&egrave;me Informatique', '1488999180.pdf', '1488999180.pdf', 'tpN6'),
(5, 60, 'Travaux pratiques : Les p&eacute;riph&eacute;riques informatiques', 'Travaux pratiques : Les p&eacute;riph&eacute;riques informatiques', '1489052362.pdf', '1489052362.pdf', 'TPch2');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `chapitre`
--
ALTER TABLE `chapitre`
  ADD PRIMARY KEY (`ID_CHAP`),
  ADD KEY `FK_CHAPITRE_MODULE` (`ID_MOD`);

--
-- Index pour la table `langue`
--
ALTER TABLE `langue`
  ADD PRIMARY KEY (`ID_LANG`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`ID_MOD`);

--
-- Index pour la table `rubrique`
--
ALTER TABLE `rubrique`
  ADD PRIMARY KEY (`ID_CONT`),
  ADD KEY `FK_CONTENU_SOUS_SECTION` (`ID_SOUS_SEC`);

--
-- Index pour la table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`ID_SEC`),
  ADD KEY `FK_SECTION_CHAPITRE` (`ID_CHAP`);

--
-- Index pour la table `sous_section`
--
ALTER TABLE `sous_section`
  ADD PRIMARY KEY (`ID_SOUS_SEC`),
  ADD KEY `FK_SOUS_SECTION_SECTION` (`ID_SEC`);

--
-- Index pour la table `tp`
--
ALTER TABLE `tp`
  ADD PRIMARY KEY (`id_tp`,`id_contenue`),
  ADD KEY `id_contenue` (`id_contenue`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `chapitre`
--
ALTER TABLE `chapitre`
  MODIFY `ID_CHAP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `langue`
--
ALTER TABLE `langue`
  MODIFY `ID_LANG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `ID_MOD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `rubrique`
--
ALTER TABLE `rubrique`
  MODIFY `ID_CONT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT pour la table `section`
--
ALTER TABLE `section`
  MODIFY `ID_SEC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `sous_section`
--
ALTER TABLE `sous_section`
  MODIFY `ID_SOUS_SEC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `tp`
--
ALTER TABLE `tp`
  MODIFY `id_tp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;--
-- Base de données :  `docmanager`
--
CREATE DATABASE IF NOT EXISTS `docmanager` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `docmanager`;

-- --------------------------------------------------------

--
-- Structure de la table `adocumentfolder`
--

CREATE TABLE `adocumentfolder` (
  `doc_id` varchar(50) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `file_attached` varchar(150) DEFAULT NULL,
  `precision` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ecompanie`
--

CREATE TABLE `ecompanie` (
  `comp_id` int(11) NOT NULL,
  `comp_nom` varchar(150) DEFAULT NULL,
  `comp_contact` varchar(250) DEFAULT NULL,
  `comp_contact_email` varchar(150) DEFAULT NULL,
  `comp_contact_tel` varchar(100) DEFAULT NULL,
  `comp_statut` binary(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ecompanie`
--

INSERT INTO `ecompanie` (`comp_id`, `comp_nom`, `comp_contact`, `comp_contact_email`, `comp_contact_tel`, `comp_statut`) VALUES
(1, 'AC WebSolution', '00', 'contact@awaclid.com', '', 0x31);

-- --------------------------------------------------------

--
-- Structure de la table `edocument`
--

CREATE TABLE `edocument` (
  `doc_id` varchar(50) NOT NULL DEFAULT '',
  `doc_title` varchar(250) NOT NULL,
  `doc_detail` text,
  `doc_keyword` varchar(250) DEFAULT NULL,
  `doc_owner` varchar(150) DEFAULT NULL,
  `doc_prepared_by` varchar(100) DEFAULT NULL,
  `doc_reviewed_by` varchar(100) DEFAULT NULL,
  `doc_approved_by` varchar(100) DEFAULT NULL,
  `doc_creat_date` date DEFAULT NULL,
  `doc_sign_date` date DEFAULT NULL,
  `doc_nbr_page` int(11) DEFAULT NULL,
  `doc_status` binary(1) DEFAULT NULL,
  `typdoc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `edomaine`
--

CREATE TABLE `edomaine` (
  `dom_id` int(11) NOT NULL,
  `dom_nom` varchar(50) DEFAULT NULL,
  `dom_description` text,
  `dom_autorisation` varchar(250) DEFAULT NULL,
  `dom_niveau` varchar(25) DEFAULT NULL,
  `dom_statut` binary(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `edomaine`
--

INSERT INTO `edomaine` (`dom_id`, `dom_nom`, `dom_description`, `dom_autorisation`, `dom_niveau`, `dom_statut`) VALUES
(1, 'SA', 'Super Admin', '0111100001111111111111111', NULL, 0x31),
(2, 'UserAdmin', 'UserAdmin', '0111100000000111110001000', NULL, 0x31);

-- --------------------------------------------------------

--
-- Structure de la table `eemploye`
--

CREATE TABLE `eemploye` (
  `emp_id` int(11) NOT NULL,
  `emp_nom` varchar(100) DEFAULT NULL,
  `emp_prenom` varchar(100) DEFAULT NULL,
  `emp_titre` varchar(10) DEFAULT NULL,
  `emp_designation` varchar(250) DEFAULT NULL,
  `emp_email` varchar(150) DEFAULT NULL,
  `emp_tel` varchar(50) DEFAULT NULL,
  `emp_num_pass` varchar(25) DEFAULT NULL,
  `emp_attach_pass` varchar(150) DEFAULT NULL,
  `emp_groupe` varchar(25) DEFAULT NULL,
  `emp_statut` binary(1) DEFAULT '1',
  `nat_id` int(11) DEFAULT NULL,
  `comp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `eemploye`
--

INSERT INTO `eemploye` (`emp_id`, `emp_nom`, `emp_prenom`, `emp_titre`, `emp_designation`, `emp_email`, `emp_tel`, `emp_num_pass`, `emp_attach_pass`, `emp_groupe`, `emp_statut`, `nat_id`, `comp_id`) VALUES
(1, 'Awa', 'Clid', 'Mr.', 'PM', 'awaclid@awaclid.com', '', '', '', 'IT', 0x31, 1, 1),
(2, 'Telehonou', 'Olivier', 'Mr', 'CD', 'oliviertelehonou@gmail.com', '653360232', NULL, NULL, 'IT', 0x31, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `efolder`
--

CREATE TABLE `efolder` (
  `folder_id` int(11) NOT NULL,
  `folder_name` varchar(50) NOT NULL,
  `folder_descript` text,
  `folder_status` binary(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `efolder`
--

INSERT INTO `efolder` (`folder_id`, `folder_name`, `folder_descript`, `folder_status`) VALUES
(1, 'Licence', 'Toutes les licence', 0x31),
(2, 'Certificat', 'Tous les certifs', 0x31);

-- --------------------------------------------------------

--
-- Structure de la table `enationalite`
--

CREATE TABLE `enationalite` (
  `nat_id` int(11) NOT NULL,
  `nat_design` varchar(150) DEFAULT NULL,
  `nat_country` varchar(150) DEFAULT NULL,
  `nat_statut` binary(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `enationalite`
--

INSERT INTO `enationalite` (`nat_id`, `nat_design`, `nat_country`, `nat_statut`) VALUES
(1, 'Congolaise', 'Congo', 0x31),
(2, 'Camerounais', 'Cameroun', 0x01);

-- --------------------------------------------------------

--
-- Structure de la table `etypdoc`
--

CREATE TABLE `etypdoc` (
  `typdoc_id` int(11) NOT NULL,
  `typdoc_title` varchar(150) NOT NULL,
  `typdoc_descript` text,
  `typdoc_status` binary(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etypdoc`
--

INSERT INTO `etypdoc` (`typdoc_id`, `typdoc_title`, `typdoc_descript`, `typdoc_status`) VALUES
(1, 'Licence Windows', 'Licence Windows', 0x31),
(2, 'Certif Oracle', 'Certif Oracle', 0x31);

-- --------------------------------------------------------

--
-- Structure de la table `eutilisateur`
--

CREATE TABLE `eutilisateur` (
  `util_id` varchar(100) NOT NULL,
  `util_pwd` varchar(100) DEFAULT NULL,
  `util_statut` binary(1) DEFAULT '1',
  `dom_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `eutilisateur`
--

INSERT INTO `eutilisateur` (`util_id`, `util_pwd`, `util_statut`, `dom_id`, `emp_id`) VALUES
('admin', 'admin', 0x31, 1, 1),
('olivier', 'olivier', 0x31, 1, 2),
('user', 'user', 0x31, 2, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adocumentfolder`
--
ALTER TABLE `adocumentfolder`
  ADD PRIMARY KEY (`doc_id`,`folder_id`),
  ADD KEY `folder_id` (`folder_id`);

--
-- Index pour la table `ecompanie`
--
ALTER TABLE `ecompanie`
  ADD PRIMARY KEY (`comp_id`);

--
-- Index pour la table `edocument`
--
ALTER TABLE `edocument`
  ADD PRIMARY KEY (`doc_id`),
  ADD KEY `doc_id` (`doc_id`),
  ADD KEY `typdoc_id` (`typdoc_id`);

--
-- Index pour la table `edomaine`
--
ALTER TABLE `edomaine`
  ADD PRIMARY KEY (`dom_id`);

--
-- Index pour la table `eemploye`
--
ALTER TABLE `eemploye`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `nat_id` (`nat_id`),
  ADD KEY `comp_id` (`comp_id`);

--
-- Index pour la table `efolder`
--
ALTER TABLE `efolder`
  ADD PRIMARY KEY (`folder_id`);

--
-- Index pour la table `enationalite`
--
ALTER TABLE `enationalite`
  ADD PRIMARY KEY (`nat_id`);

--
-- Index pour la table `etypdoc`
--
ALTER TABLE `etypdoc`
  ADD PRIMARY KEY (`typdoc_id`);

--
-- Index pour la table `eutilisateur`
--
ALTER TABLE `eutilisateur`
  ADD PRIMARY KEY (`util_id`),
  ADD KEY `dom_id` (`dom_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `ecompanie`
--
ALTER TABLE `ecompanie`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `edomaine`
--
ALTER TABLE `edomaine`
  MODIFY `dom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `eemploye`
--
ALTER TABLE `eemploye`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `efolder`
--
ALTER TABLE `efolder`
  MODIFY `folder_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `enationalite`
--
ALTER TABLE `enationalite`
  MODIFY `nat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `etypdoc`
--
ALTER TABLE `etypdoc`
  MODIFY `typdoc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `adocumentfolder`
--
ALTER TABLE `adocumentfolder`
  ADD CONSTRAINT `adocumentfolder_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `edocument` (`doc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `adocumentfolder_ibfk_2` FOREIGN KEY (`folder_id`) REFERENCES `efolder` (`folder_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `edocument`
--
ALTER TABLE `edocument`
  ADD CONSTRAINT `edocument_ibfk_1` FOREIGN KEY (`typdoc_id`) REFERENCES `etypdoc` (`typdoc_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `eemploye`
--
ALTER TABLE `eemploye`
  ADD CONSTRAINT `eemploye_ibfk_1` FOREIGN KEY (`nat_id`) REFERENCES `enationalite` (`nat_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `eemploye_ibfk_2` FOREIGN KEY (`comp_id`) REFERENCES `ecompanie` (`comp_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `eutilisateur`
--
ALTER TABLE `eutilisateur`
  ADD CONSTRAINT `eutilisateur_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `eemploye` (`emp_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `eutilisateur_ibfk_3` FOREIGN KEY (`dom_id`) REFERENCES `edomaine` (`dom_id`) ON DELETE SET NULL ON UPDATE CASCADE;
--
-- Base de données :  `docs`
--
CREATE DATABASE IF NOT EXISTS `docs` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `docs`;

-- --------------------------------------------------------

--
-- Structure de la table `_souscategories`
--

CREATE TABLE `_souscategories` (
  `id_souscategorie` int(11) NOT NULL DEFAULT '0',
  `id_document` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `_souscategories`
--

INSERT INTO `_souscategories` (`id_souscategorie`, `id_document`) VALUES
(1, 1),
(4, 1),
(4, 2),
(6, 1),
(23, 2);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(255) NOT NULL DEFAULT '',
  `desc_categorie` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id_categorie`, `nom_categorie`, `desc_categorie`) VALUES
(1, 'RAPPORT ', NULL),
(2, 'MEMOIRES', NULL),
(13, 'DOC_OUVERT_AU_PUBLIC', NULL),
(14, 'DOCUMENT_ADMINISTRATIF', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id_document` int(11) NOT NULL,
  `nom_document` varchar(255) NOT NULL DEFAULT '',
  `desc_document` varchar(255) NOT NULL DEFAULT '',
  `date_parution_document` date NOT NULL DEFAULT '0000-00-00',
  `date_archivage_document` date DEFAULT '0000-00-00',
  `source_document` varchar(255) NOT NULL DEFAULT '',
  `archive_document` tinyint(1) NOT NULL DEFAULT '0',
  `numero_document` int(11) DEFAULT '0',
  `motscles_document` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `fichiers`
--

CREATE TABLE `fichiers` (
  `id_fichier` int(11) NOT NULL,
  `adresse_fichier` text,
  `lien_fichier` varchar(100) DEFAULT '',
  `extension_fichier` varchar(10) DEFAULT '',
  `id_document` int(11) NOT NULL DEFAULT '0',
  `nom_fichier` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `souscategories`
--

CREATE TABLE `souscategories` (
  `id_souscategorie` int(11) NOT NULL,
  `nom_souscategorie` varchar(255) NOT NULL DEFAULT '',
  `desc_souscategorie` text,
  `id_categorie` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `souscategories`
--

INSERT INTO `souscategories` (`id_souscategorie`, `nom_souscategorie`, `desc_souscategorie`, `id_categorie`) VALUES
(1, 'Auchan', NULL, 1),
(4, 'Leclerc', NULL, 1),
(6, 'Carrefour', NULL, 1),
(8, 'Casino', NULL, 1),
(23, 'Autres enseignes', NULL, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `_souscategories`
--
ALTER TABLE `_souscategories`
  ADD PRIMARY KEY (`id_souscategorie`,`id_document`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id_document`);

--
-- Index pour la table `fichiers`
--
ALTER TABLE `fichiers`
  ADD PRIMARY KEY (`id_fichier`);

--
-- Index pour la table `souscategories`
--
ALTER TABLE `souscategories`
  ADD PRIMARY KEY (`id_souscategorie`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id_document` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `fichiers`
--
ALTER TABLE `fichiers`
  MODIFY `id_fichier` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `souscategories`
--
ALTER TABLE `souscategories`
  MODIFY `id_souscategorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;--
-- Base de données :  `documents`
--
CREATE DATABASE IF NOT EXISTS `documents` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `documents`;

-- --------------------------------------------------------

--
-- Structure de la table `_souscategories`
--

CREATE TABLE `_souscategories` (
  `id_souscategorie` int(11) NOT NULL DEFAULT '0',
  `id_document` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `_souscategories`
--

INSERT INTO `_souscategories` (`id_souscategorie`, `id_document`) VALUES
(1, 1),
(4, 1),
(4, 2),
(6, 1),
(23, 2);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(255) NOT NULL DEFAULT '',
  `desc_categorie` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id_categorie`, `nom_categorie`, `desc_categorie`) VALUES
(1, 'RAPPORT ', NULL),
(2, 'MEMOIRES', NULL),
(13, 'DOC_OUVERT_AU_PUBLIC', NULL),
(14, 'DOCUMENT_ADMINISTRATIF', NULL),
(15, 'AUTRE', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id_document` int(11) NOT NULL,
  `nom_document` varchar(255) NOT NULL DEFAULT '',
  `desc_document` varchar(255) NOT NULL DEFAULT '',
  `date_parution_document` date NOT NULL DEFAULT '0000-00-00',
  `date_archivage_document` date DEFAULT '0000-00-00',
  `source_document` varchar(255) NOT NULL DEFAULT '',
  `archive_document` tinyint(1) NOT NULL DEFAULT '0',
  `numero_document` int(11) DEFAULT '0',
  `motscles_document` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `documents`
--

INSERT INTO `documents` (`id_document`, `nom_document`, `desc_document`, `date_parution_document`, `date_archivage_document`, `source_document`, `archive_document`, `numero_document`, `motscles_document`) VALUES
(1, 'olivier', 'rapport de stage', '2018-04-01', '2018-04-03', 'IUT', 1, 2, 'DOCUMENTS');

-- --------------------------------------------------------

--
-- Structure de la table `fichiers`
--

CREATE TABLE `fichiers` (
  `id_fichier` int(11) NOT NULL,
  `adresse_fichier` text,
  `lien_fichier` varchar(100) DEFAULT '',
  `extension_fichier` varchar(10) DEFAULT '',
  `id_document` int(11) NOT NULL DEFAULT '0',
  `nom_fichier` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `souscategories`
--

CREATE TABLE `souscategories` (
  `id_souscategorie` int(11) NOT NULL,
  `nom_souscategorie` varchar(255) NOT NULL DEFAULT '',
  `desc_souscategorie` text,
  `id_categorie` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `souscategories`
--

INSERT INTO `souscategories` (`id_souscategorie`, `nom_souscategorie`, `desc_souscategorie`, `id_categorie`) VALUES
(1, 'Rapport_stage', NULL, 1),
(4, 'Rapport_conference', NULL, 1),
(6, 'Memoire_fin_etude', NULL, 2),
(8, 'Support_cour', NULL, 13),
(23, 'TD', NULL, 13),
(24, 'Communique', NULL, 14),
(25, 'divers', NULL, 15),
(26, 'divers', NULL, 15),
(27, 'Circulaire', NULL, 14);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `_souscategories`
--
ALTER TABLE `_souscategories`
  ADD PRIMARY KEY (`id_souscategorie`,`id_document`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id_document`);

--
-- Index pour la table `fichiers`
--
ALTER TABLE `fichiers`
  ADD PRIMARY KEY (`id_fichier`);

--
-- Index pour la table `souscategories`
--
ALTER TABLE `souscategories`
  ADD PRIMARY KEY (`id_souscategorie`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id_document` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `fichiers`
--
ALTER TABLE `fichiers`
  MODIFY `id_fichier` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `souscategories`
--
ALTER TABLE `souscategories`
  MODIFY `id_souscategorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;--
-- Base de données :  `emploi_temps2017`
--
CREATE DATABASE IF NOT EXISTS `emploi_temps2017` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `emploi_temps2017`;

-- --------------------------------------------------------

--
-- Structure de la table `annee`
--

CREATE TABLE `annee` (
  `id_an` int(11) NOT NULL,
  `anne` varchar(11) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `annee`
--

INSERT INTO `annee` (`id_an`, `anne`) VALUES
(21, '2016 - 2017'),
(22, '2017 - 2018'),
(23, '2018 - 2019'),
(24, '2019 - 2020'),
(25, '2020 - 2021');

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `ID_CLASS` int(11) NOT NULL,
  `COD_CLASS` varchar(128) NOT NULL,
  `LIBEL_CLASS` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `classe`
--

INSERT INTO `classe` (`ID_CLASS`, `COD_CLASS`, `LIBEL_CLASS`) VALUES
(1, 'L1', 'Licence 1'),
(2, 'L2', 'Licence 2'),
(3, 'L3', 'Licence 3'),
(4, 'M1', 'Master 1'),
(5, 'M2', 'Master 2');

-- --------------------------------------------------------

--
-- Structure de la table `cursus`
--

CREATE TABLE `cursus` (
  `ID_CUR` int(11) NOT NULL,
  `INTITULE_C` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cursus`
--

INSERT INTO `cursus` (`ID_CUR`, `INTITULE_C`) VALUES
(1, 'Licence'),
(2, 'MASTER'),
(3, 'DOCTORA');

-- --------------------------------------------------------

--
-- Structure de la table `cursus_classe`
--

CREATE TABLE `cursus_classe` (
  `ID_CUR` int(11) NOT NULL,
  `ID_CLASS` int(11) NOT NULL,
  `COD_CLASS` varchar(128) NOT NULL,
  `ID_CC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cursus_departement`
--

CREATE TABLE `cursus_departement` (
  `ID_CUR` int(11) NOT NULL,
  `ID_DPT` int(11) NOT NULL,
  `CODE_CLASSE` char(6) NOT NULL,
  `ID_CD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cursus_option`
--

CREATE TABLE `cursus_option` (
  `ID_OP` int(11) NOT NULL,
  `CODE_OP` char(255) NOT NULL,
  `ID_CUR` int(11) NOT NULL,
  `ID_CO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `ID_DPT` int(11) NOT NULL,
  `CODE_CLASSE` char(6) NOT NULL,
  `LIBELLE_F` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `departement`
--

INSERT INTO `departement` (`ID_DPT`, `CODE_CLASSE`, `LIBELLE_F`) VALUES
(1, 'PH', 'PHYSIQUE'),
(2, 'MI', 'MATHEMATIQUE - INFORMATIQUE'),
(3, 'CH', 'CHIMIE'),
(4, 'ST', 'SCIENCES DE LA TERRE'),
(5, 'SBM', 'SCIENCES BIOMEDICALE'),
(6, 'BA', 'BIOLOGIE ANIMALE'),
(7, 'BV', 'BIOLOGIE VEGETALE'),
(8, 'BC', 'BIOCHIMIE'),
(9, 'MA', 'MATHEMATIQUES'),
(10, 'IN', 'INFORMATIQUE');

-- --------------------------------------------------------

--
-- Structure de la table `enseigant`
--

CREATE TABLE `enseigant` (
  `ID_PROF` int(11) NOT NULL,
  `NOM_PROF` varchar(30) CHARACTER SET utf8 NOT NULL,
  `ADRESSE` varchar(30) CHARACTER SET utf8 NOT NULL,
  `TELEPHONE` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `enseigant`
--

INSERT INTO `enseigant` (`ID_PROF`, `NOM_PROF`, `ADRESSE`, `TELEPHONE`) VALUES
(1, 'M. TELEHONOU ', 'oliviertelehonou@gmail.com', 653360232),
(2, 'Pr YEMELE', 'YEMELE@gmail.com', 696913417),
(3, 'Dr AZANGUEZET', 'azango@gmail.com', 697622021),
(5, 'M. AGBOR', 'AGBOR@GMAIL.COM', 653214789),
(6, 'Dr TEGUEZEM', 'teguezem@yahoo.fr', 684752125),
(7, 'Dr PONY LUCAS', 'lucpony@gmail.com', 687895412),
(8, 'Dr BIAPA', 'BIAP@YAHOO.FR', 694511458),
(9, 'Dr KOUITCHEU', 'KOUITCHEU@GMAIL.COM', 652145762),
(10, 'Dr DZOYEM', 'dzo@yahoo.fr', 652145765),
(11, 'Pr KUETE', 'kuete@gmail.com', 672458963),
(12, 'Pr KUIATE', 'kuiate@gmail.com', 672458964),
(13, 'M. CHEDJOU', 'rocelinchedjou@gmail.com', 656479335),
(14, 'Dr SADEM', 'sadem@gmail.com', 654789231),
(15, 'Dr NSANGOU', 'sangou@yahoo.fr', 687951423),
(16, 'Dr TSOPMBENG', 'tsop@yahoo.fr', 698745214),
(17, 'Dr KAKTCHAM', 'kak@gmail.com', 697458963),
(18, 'Dr TCHOUALAG', 'tchou@yahoo.com', 657892133),
(19, 'Dr SIMO TALLA', 'simotalla@gmail.com', 678941236),
(20, 'Dr TAGNE F', 'tagne@yahoo.fr', 668974222),
(21, 'Dr BOMGNI', 'bom@gmail.com', 668977142),
(22, 'Dr TSOPMBENG', 'tsop@yahoo.fr', 668977142),
(23, 'Dr KAMDEM', 'kamdem@gmail.com', 698721123),
(24, 'Dr NSANGOU', 'sangou@gmail.com', 684412355),
(25, 'Pr NGUETSOP', 'nguetso@yahoo.com', 698452111),
(26, 'Pr WOMENI', 'women@gmail.com', 678254100),
(27, 'Pr ZAMBOU', 'women@gmail.com', 678254100),
(28, 'Pr TELEFO', 'telef@yahoo.fr', 678254452),
(29, 'Pr WABO', 'WAB@GMAIL.COM', 698254452),
(30, 'Pr GATSING', 'gats@gmail.com', 698278452),
(31, 'Pr TCHOFFO', 'tchof@yahoo.fr', 689722331),
(32, 'Pr LELE', 'lel@gmail.com', 689724331),
(33, 'Pr TALLA', 'talla@yahoo.fr', 674123695),
(34, 'M. SEINO', 'sei@gmail.com', 654123695),
(35, 'M. NGAMENI', 'ngameni@gmail.com', 664123695),
(36, 'Dr SOH', 'soh@gmail.com', 664489695),
(37, 'Dr TCHOUPE', 'tchoupe@gmail.com', 689785412);

-- --------------------------------------------------------

--
-- Structure de la table `enseignant_salle_matiere`
--

CREATE TABLE `enseignant_salle_matiere` (
  `ID_OCCUPATION` int(11) NOT NULL,
  `ID_PROF` int(11) NOT NULL,
  `ID_SAL` int(11) NOT NULL,
  `ID_MAT` int(11) NOT NULL,
  `ANNEE` int(11) NOT NULL,
  `SEMESTRE` int(11) NOT NULL,
  `JOURS` int(11) NOT NULL,
  `HEURE_DEBUT` int(11) NOT NULL,
  `DEPARTEMENT` int(11) NOT NULL,
  `CURSUS` int(11) NOT NULL,
  `OPTIONS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `enseignant_salle_matiere`
--

INSERT INTO `enseignant_salle_matiere` (`ID_OCCUPATION`, `ID_PROF`, `ID_SAL`, `ID_MAT`, `ANNEE`, `SEMESTRE`, `JOURS`, `HEURE_DEBUT`, `DEPARTEMENT`, `CURSUS`, `OPTIONS`) VALUES
(1, 1, 1, 18, 23, 3, 1, 2, 2, 1, 0),
(5, 2, 2, 2, 22, 3, 4, 3, 1, 1, 0),
(6, 1, 1, 3, 22, 2, 1, 2, 2, 1, 0),
(10, 3, 1, 2, 22, 3, 2, 4, 2, 1, 0),
(11, 2, 1, 12, 22, 4, 3, 1, 3, 1, 0),
(12, 1, 1, 11, 22, 3, 5, 6, 6, 1, 0),
(13, 1, 1, 7, 22, 7, 6, 5, 9, 2, 0),
(14, 1, 1, 21, 22, 3, 5, 3, 4, 1, 6),
(15, 5, 3, 100, 21, 1, 1, 1, 6, 1, 29),
(16, 3, 2, 7, 22, 3, 6, 1, 2, 1, 0),
(16, 6, 3, 3, 21, 1, 1, 2, 6, 1, 29),
(17, 3, 1, 7, 22, 7, 4, 3, 2, 1, 0),
(17, 6, 3, 3, 21, 1, 1, 5, 4, 1, 5),
(18, 2, 1, 8, 22, 4, 3, 4, 1, 1, 0),
(18, 7, 3, 3, 21, 1, 2, 1, 8, 1, 36),
(19, 2, 2, 59, 21, 3, 6, 1, 2, 1, 0),
(19, 7, 3, 3, 21, 1, 3, 2, 3, 1, 8),
(20, 2, 1, 16, 22, 5, 4, 2, 2, 1, 0),
(20, 7, 3, 3, 21, 1, 3, 3, 1, 1, 1),
(21, 2, 1, 16, 22, 5, 4, 3, 2, 1, 0),
(21, 7, 3, 3, 21, 1, 4, 2, 2, 1, 11),
(22, 2, 1, 16, 22, 5, 4, 5, 2, 1, 0),
(22, 9, 3, 101, 21, 5, 4, 3, 8, 1, 37),
(23, 2, 2, 16, 21, 5, 2, 5, 2, 1, 0),
(23, 10, 3, 102, 21, 5, 4, 4, 8, 1, 37),
(24, 1, 1, 10, 21, 4, 3, 1, 2, 1, 0),
(24, 11, 3, 103, 21, 5, 4, 5, 8, 1, 37),
(25, 1, 1, 10, 21, 4, 4, 1, 2, 1, 0),
(25, 8, 3, 104, 21, 5, 5, 1, 8, 1, 37),
(26, 2, 2, 19, 22, 6, 5, 5, 1, 1, 1),
(26, 12, 3, 105, 21, 5, 5, 2, 8, 1, 37),
(27, 14, 4, 62, 21, 3, 4, 1, 1, 1, 1),
(28, 31, 4, 67, 21, 3, 4, 2, 1, 1, 1),
(29, 18, 4, 58, 21, 3, 5, 4, 1, 1, 1),
(30, 19, 4, 59, 21, 3, 5, 5, 1, 1, 1),
(31, 19, 4, 59, 21, 3, 6, 4, 1, 1, 1),
(32, 33, 4, 50, 21, 3, 6, 2, 1, 1, 1),
(34, 23, 4, 53, 21, 3, 6, 3, 1, 1, 1),
(35, 23, 4, 53, 21, 3, 4, 3, 1, 1, 1),
(36, 20, 4, 107, 21, 3, 4, 4, 2, 1, 11),
(37, 37, 4, 107, 21, 3, 4, 5, 2, 1, 11),
(38, 36, 4, 108, 21, 3, 4, 6, 2, 1, 11);

-- --------------------------------------------------------

--
-- Structure de la table `heures`
--

CREATE TABLE `heures` (
  `id_h` int(11) NOT NULL,
  `heure` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `heures`
--

INSERT INTO `heures` (`id_h`, `heure`) VALUES
(1, '08H00 - 10H00'),
(2, '10H00 - 12H00'),
(3, '12H00 - 14H00'),
(4, '14H00 - 16H00'),
(5, '16H00 - 18H00'),
(6, '18H00 - 20H00');

-- --------------------------------------------------------

--
-- Structure de la table `inscriptions`
--

CREATE TABLE `inscriptions` (
  `numero` int(10) UNSIGNED NOT NULL,
  `login` varchar(20) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `pseudo` varchar(20) NOT NULL,
  `icq` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `commentaires` varchar(200) NOT NULL,
  `question` varchar(1) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `domaine` varchar(200) NOT NULL,
  `navigateur` varchar(200) NOT NULL,
  `dateYMDheure` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `jours`
--

CREATE TABLE `jours` (
  `id_jrs` int(11) NOT NULL,
  `jours` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `jours`
--

INSERT INTO `jours` (`id_jrs`, `jours`) VALUES
(1, 'Lundi'),
(2, 'Mardi'),
(3, 'Mercredi'),
(4, 'Jeudi'),
(5, 'Vendredi'),
(6, 'Samedi');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `ID_MAT` int(11) NOT NULL,
  `CODE_UV` char(32) NOT NULL,
  `SEMESTRE` char(255) NOT NULL,
  `LIBEL_UV` char(255) CHARACTER SET utf8 NOT NULL,
  `TYP_UV` varchar(128) NOT NULL,
  `OPTIONS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `matiere`
--

INSERT INTO `matiere` (`ID_MAT`, `CODE_UV`, `SEMESTRE`, `LIBEL_UV`, `TYP_UV`, `OPTIONS`) VALUES
(1, 'PHY98', '8', 'Electronique des systÃ¨mes de communication', 'Obligatoire', 2),
(2, 'PHY98', '8', 'TÃ©lÃ©communication', 'Obligatoire', 2),
(3, 'ETD', '1', 'Ethique et développement', 'Obligatoire', 1),
(4, 'PHY99', '8', 'TÃ©lÃ©communication', 'Obligatoire', 2),
(5, 'PHY100', '8', 'Microprocesseurs et MicrocontrÃ´leur', 'Obligatoire', 2),
(6, 'PHY101', '8', 'Projet', 'Obligatoire', 2),
(7, 'PHY74', '8', 'Traitement du signal', 'Obligatoire', 2),
(8, 'PHY111', '8', 'Electronique II', 'Obligatoire', 2),
(9, 'PHY110', '8', 'Electronique de puissance', 'Obligatoire', 2),
(10, 'DSC06', '7', 'Droit des sociÃ©tÃ©s commerciales', 'Obligatoire', 2),
(11, 'GEST06', '7', 'Gestion des affaires et du montage des projets', 'Obligatoire', 2),
(12, 'MAT51', '7', 'EDP et Fonction spÃ©ciales', 'Obligatoire', 2),
(13, 'PHY93', '7', 'conception assistÃ©e par ordinateur(CAO)', 'Obligatoire', 2),
(14, 'PHY94', '7', 'physique des composants Ã  sem-conducteur', 'Obligatoire', 2),
(15, 'PHY96', '8', 'Automatique I', 'Obligatoire', 2),
(16, 'PHY97', '7', 'Automatique II', 'Obligatoire', 2),
(17, 'PHY27', '6', 'Signaux,Circuit et SystÃ¨mes', 'Obligatoire', 2),
(18, 'PHY28', '6', 'Automatique industrielle et Avertissement Continue', 'Obligatoire', 2),
(19, 'PHY29', '6', 'Electrotechnique', 'Obligatoire', 2),
(20, 'LAA18', '6', 'Anglais scientifique III', 'Optionnelle', 2),
(21, 'LAF18', '6', 'FranÃ§ais scientifique III', 'Optionnelle', 2),
(22, 'INF38', '6', 'Programmation III', 'Obligatoire', 2),
(23, 'PHY23', '6', 'Thermodynamique statique', 'Obligatoire', 2),
(24, 'PHY33', '6', 'MÃ©canique des milieux continus', 'Obligatoire', 2),
(25, 'SPOIII', '6', 'Sports', 'Optionnelle', 2),
(26, 'ACCIII', '6', 'ActivitÃ© culturelles', 'Optionnelle', 1),
(27, 'PHY103', '6', 'SystÃ¨me dynamique et chaos', 'Obligatoire', 2),
(28, 'PHY104', '9', 'Electronique III', 'Obligatoire', 2),
(29, 'PHY105', '9', 'RÃ©seaux et neurones', 'Obligatoire', 2),
(30, 'PHY106', '9', 'Mesures Ã©lectroniqueet instrumentation', 'Obligatoire', 2),
(31, 'PHY107', '9', 'FPGA', 'Obligatoire', 0),
(32, 'PHY108', '9', 'mÃ©thodolie et initiation a la recherche', 'Obligatoire', 0),
(33, 'PHY17', '9', 'Vibration et phÃ©nomÃ¨nes de propagation', 'Obligatoire', 0),
(34, 'PHY18', '9', 'Vibration lunmineuse et optique cohÃ©rente', 'Obligatoire', 0),
(35, 'PHY19', '9', 'Physique du solide I', 'Obligatoire', 0),
(36, 'PHY20', '9', 'MÃ©canique quantique I', 'Obligatoire', 0),
(37, 'PHY22', '5', 'Electronque', 'Obligatoire', 0),
(38, 'MAT39', '5', 'Equation de la physique mathÃ©matique', 'Obligatoire', 0),
(39, 'PHY21', '5', 'Travaux Pratique Physique III', 'Obligatoire', 0),
(40, 'MAT18', '4', 'statistique', 'Obligatoire', 0),
(41, 'MAT15', '4', 'ProbabilitÃ©', 'Obligatoire', 0),
(42, 'CHI16', '4', 'Chimie organique structurale et analytique', 'Obligatoire', 0),
(43, 'CHI14', '4', 'MÃ©canisme rÃ©actionne', 'Obligatoire', 0),
(44, 'ACC17', '4', 'ActivitÃ© culturelles', 'Optionnelle', 0),
(45, 'SPO17', '4', 'Sports', 'Optionnelle', 0),
(46, 'ENT17', '4', 'Entrepreneuriat', 'Obligatoire', 0),
(47, 'CHI21', '4', 'Chimie Mirale Descriptive et Structurale', 'Obligatoire', 0),
(48, 'INF18', '4', 'introduction au calculs scientifique', 'Obligatoire', 0),
(49, 'MAT22', '4', 'Analyse III', 'Obligatoire', 0),
(50, 'PHY09', '3', 'MÃ©canique du solide', 'Obligatoire', 0),
(51, 'PHY10', '3', 'Introduction Ã  la mÃ©canique des Fluides', 'Obligatoire', 0),
(52, 'PHY16', '4', 'Electronique de base', 'Obligatoire', 0),
(53, 'PHY11', '3', 'Thermodynamique Physique', 'Obligatoire', 0),
(54, 'PHY15', '4', 'Introduction a la physique quantique', 'Obligatoire', 0),
(55, 'LAA17', '3', 'Anglais Scientifique II', 'Optionnelle', 0),
(56, 'LAF17', '3', 'FranÃ§ais Scientifique II', 'Optionnelle', 0),
(57, 'PHY14', '4', 'TP de Physique II', 'Obligatoire', 0),
(58, 'MAT 19', '3', 'AlgÃ¨bre III', 'Obligatoire', 0),
(59, 'INF16', '2', 'Programation', 'Obligatoire', 0),
(60, 'PHY04', '2', 'TP de Physique I', 'Obligatoire', 0),
(61, 'LAF16', '3', 'FranÃ§ais scientifique I', 'Optionnelle', 0),
(62, 'PHY 12', '3', 'ElectromagnÃ©tisme et relativitÃ©', 'Obligatoire', 0),
(63, 'LAA 16', '2', 'Anglais scientifique i', 'Optionnelle', 0),
(64, 'MAT06', '2', 'Algerbre et GÃ©omÃ©trie II', 'Obligatoire', 0),
(65, 'MAT05', '2', 'Analyse II', 'Obligatoire', 0),
(66, 'ETD 16', '2', 'Etique et DÃ©veloppement', 'Obligatoire', 0),
(67, 'PHY 13', '3', 'Physique atomique et nuclÃ©aire', 'Obligatoire', 0),
(68, 'ACC16', '2', 'ActivitÃ© culturelles', 'Optionnelle', 0),
(69, 'SPO16', '2', 'Sports', 'Optionnelle', 0),
(70, 'PHY 24', '6', 'RÃ©sistance des matÃ©riaux', 'Obligatoire', 0),
(71, 'PHY05', '2', 'Optique GÃ©omÃ©trique', 'Obligatoire', 0),
(72, 'PHY 25', '6', 'MÃ©canique des fluides', 'Obligatoire', 0),
(73, 'PHY 26', '6', 'Transfert thermique', 'Obligatoire', 0),
(74, 'LAA 18', '6', 'Anglais Scientifique III', 'Optionnelle', 0),
(75, 'LAF18', '6', 'FranÃ§ais Scientifique III', 'Optionnelle', 0),
(76, 'PHY03', '2', 'MagnÃ©tostatique et thÃ©orie des circuits linÃ©aires', 'Obligatoire', 0),
(77, 'CHI 08', '2', 'Chimie Organique des Principales Fonctions', 'Obligatoire', 0),
(78, 'INF38', '6', 'Programmation III', 'Obligatoire', 0),
(79, 'CHI 06', '2', 'Chimie Organique des Principales Fonctions', 'Optionnelle', 0),
(80, 'PHY23', '6', 'Thermodynamique Statique', 'Obligatoire', 0),
(81, 'PHY33', '6', 'MÃ©canique des milieu continus', 'Obligatoire', 0),
(82, 'CHI 08', '2', 'Equilibre en solution et cinÃ©tique chimique', 'Obligatoire', 0),
(83, 'INF05', '2', 'Initiation al programmation web', 'Optionnelle', 0),
(84, 'PHY30', '6', 'MÃ©canique thÃ©orique', 'Obligatoire', 0),
(85, 'PHY31', '6', 'Solid state Ohysics state II', 'Obligatoire', 0),
(86, 'PHY32', '6', 'MÃ©canique quantique II', 'Obligatoire', 0),
(87, 'INF38', '6', 'Programmation III', 'Obligatoire', 0),
(88, 'PHY23', '6', 'Thermodynamique Statistique', 'Obligatoire', 0),
(89, 'PHY33', '6', 'MÃ©canique des milieu continus', 'Obligatoire', 0),
(90, 'PHY17', '5', 'Vibrations et PhÃ©nomÃ¨nes de propagation', 'Obligatoire', 0),
(91, 'PHY18', '5', 'Vibration lumineuse et optique cohÃ©rente', 'Obligatoire', 4),
(92, 'PHY19', '5', 'Physique du solide I', 'Obligatoire', 4),
(93, 'PHY20', '5', 'MÃ©canique Quantique I', 'Obligatoire', 4),
(94, 'PHY22', '5', 'Electronique', 'Obligatoire', 4),
(95, 'MAT39', '5', 'Equations de la Physique MathÃ©matique', 'Obligatoire', 4),
(96, 'PHY21', '5', 'Travaux Pratique de Physique II', 'Obligatoire', 4),
(97, 'PHY109', '10', 'These', 'Obligatoire', 2),
(98, 'PHY06', '1', 'Physique gÃ©nÃ©rale', 'Obligatoire', 1),
(99, 'BCH 09', '4', 'Microbiologie GÃ©nÃ©rale', 'Obligatoire', 1),
(100, 'LAA 01', '1', 'Anglais Scientifique I', 'Optionnelle', 1),
(101, 'BCH 14', '5', 'MÃ©tabolisme des lipides', 'Obligatoire', 40),
(102, 'BCH 15', '5', 'MÃ©tabolisme des acides aminÃ©es et des bases azotÃ©es', 'Obligatoire', 40),
(103, 'BCH 17', '5', 'Enzymologie II et BioÃ©nergÃ©tique', 'Obligatoire', 40),
(104, 'BCH 13', '5', 'MÃ©tabolisme des Glucides', 'Obligatoire', 24),
(105, 'BCH 16', '5', 'Enzymologie I', 'Obligatoire', 24),
(106, 'TD INF 16', '3', 'Travaux dirigÃ©s Programmation', 'Obligatoire', 1),
(107, 'INF 09', '3', 'Algorithmique et structure des donnÃ©es', 'Obligatoire', 1),
(108, 'TD INF 10', '3', 'TD introduction Ã  l\'architechture des ordinateur', 'Obligatoire', 1);

-- --------------------------------------------------------

--
-- Structure de la table `matiere_semestre_option`
--

CREATE TABLE `matiere_semestre_option` (
  `ID_SEM` int(11) NOT NULL,
  `ID_OP` int(11) NOT NULL,
  `CODE_OP` char(255) NOT NULL,
  `ID_MAT` int(11) NOT NULL,
  `CODE_UV` char(32) NOT NULL,
  `ID_MSO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `mois`
--

CREATE TABLE `mois` (
  `id_mois` int(11) NOT NULL,
  `moi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `mois`
--

INSERT INTO `mois` (`id_mois`, `moi`) VALUES
(1, 'Janvier'),
(2, 'FÃ©vrier'),
(3, 'Mars'),
(4, 'Avril'),
(5, 'Mai'),
(6, 'Juin'),
(7, 'Juillet'),
(8, 'AoÃ»t'),
(9, 'Septembre'),
(10, 'Octobre'),
(11, 'Novembre'),
(12, 'DÃ©cembre');

-- --------------------------------------------------------

--
-- Structure de la table `options`
--

CREATE TABLE `options` (
  `ID_OP` int(11) NOT NULL,
  `INTITULE` char(255) NOT NULL,
  `id_dpt` int(11) NOT NULL,
  `CODE_OP` char(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `options`
--

INSERT INTO `options` (`ID_OP`, `INTITULE`, `id_dpt`, `CODE_OP`) VALUES
(1, 'Tronc Commun', 1, 'TC'),
(2, 'Electronic', 1, 'ELECT'),
(3, 'MÃ©canique EnergÃ©tique', 1, 'MEN'),
(4, 'MatiÃ¨re CondensÃ©e', 1, 'MC'),
(5, 'Tronc Commun', 4, 'TC'),
(6, 'Hydrologie et AmÃ©nagement des Ressources en Eau', 4, 'HAR'),
(7, 'GÃ©otechnique et Valorisation des MatÃ©riaux', 4, 'GVM'),
(8, 'Tronc Commun', 3, 'TC'),
(9, 'Chimie Inorganique', 3, 'CIN'),
(10, 'Chimie Organique', 3, 'COR'),
(11, 'Tronc Commun', 2, 'TC'),
(12, 'Informatique fondamentale', 2, 'INF'),
(13, 'MathÃ©matiques AppliquÃ©es', 2, 'MAPP'),
(14, 'RÃ©seaux et Services DistribuÃ©s', 10, 'RSD'),
(15, 'AlgÃ¨bre', 9, 'ALG'),
(16, 'Analyse', 9, 'ANAL'),
(17, 'Tronc Commun', 7, 'TC'),
(18, 'Biologie', 7, 'BIOLO'),
(19, 'Physiologie', 7, 'PHYSIO'),
(20, 'BiodiversitÃ© Environnement VÃ©gÃ©taux Tropicaux', 7, 'BEVT'),
(21, 'Physiologieet Biotecnologie VÃ©gÃ©tales', 7, 'PBV'),
(22, 'SystÃ©matique et Ecologie VÃ©gÃ©tales', 7, 'SEV'),
(23, 'Tronc Commun', 5, 'TC'),
(24, 'Biologie Clinique', 5, 'AM'),
(25, 'Imagerie MÃ©dicale', 5, 'IM'),
(26, 'SantÃ© Publique et EpidÃ©miologie', 5, 'SPE'),
(27, 'EpidÃ©miologie et SantÃ© Publique', 5, 'ESP'),
(28, 'KinÃ©sithÃ©rapie', 5, 'KINE'),
(29, 'Tronc Commun', 6, 'TC'),
(30, 'Physiologie', 6, 'PHYSIO'),
(31, 'Zoologie', 6, 'ZOOL'),
(32, 'Zoologie', 6, 'ZOOL'),
(33, 'Ecologie et Gestion de la Vie Sauvage', 6, 'ECOL'),
(34, 'Parasitologie', 6, 'PARAS'),
(35, 'Physiologie', 6, 'PHYSIO'),
(36, 'Tronc Commun', 8, 'TC'),
(37, 'Biologie Clinique', 8, 'BIO_CLINI'),
(38, 'Biochimie et Technologie Alimentaire', 8, 'BTA'),
(39, 'Pharmacologie', 8, 'PHARMACO'),
(40, 'Biochimie clinique', 8, 'BIO_CLINI'),
(41, 'Nutrition et sÃ©curitÃ© Alimentaire', 8, 'NUT_SEC'),
(42, 'Pharmacologie', 8, 'PHARMACO');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `ID_SAL` int(11) NOT NULL,
  `COD_SALLE` char(12) NOT NULL,
  `LIEU` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `salle`
--

INSERT INTO `salle` (`ID_SAL`, `COD_SALLE`, `LIEU`) VALUES
(1, 'AMPHI 1000', 'Campus A'),
(2, 'AMPHI 600', 'Campus C'),
(3, 'AMPHI 453', 'Campus A'),
(4, 'AMPHI 351', 'Campus C');

-- --------------------------------------------------------

--
-- Structure de la table `semaine`
--

CREATE TABLE `semaine` (
  `id_semaine` int(11) NOT NULL,
  `semaine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `semaine`
--

INSERT INTO `semaine` (`id_semaine`, `semaine`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `semestre`
--

CREATE TABLE `semestre` (
  `ID_SEM` int(11) NOT NULL,
  `LIBEL_SEMESTRE` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `semestre`
--

INSERT INTO `semestre` (`ID_SEM`, `LIBEL_SEMESTRE`) VALUES
(1, 'Semestre LMD1'),
(2, 'Semestre LMD 2'),
(3, 'Semestre LMD 3'),
(4, 'Semestre LMD 4'),
(5, 'Semestre LMD 5'),
(6, 'Semestre LMD 6'),
(7, 'Semestre LMD 7'),
(8, 'Semestre LMD 8'),
(9, 'Semestre LMD 9'),
(10, 'Semestre LMD 10'),
(11, 'Semestre LMD 11'),
(12, 'Semestre LMD 12');

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

CREATE TABLE `statut` (
  `id_stat` int(11) NOT NULL,
  `libel_stat` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `statut`
--

INSERT INTO `statut` (`id_stat`, `libel_stat`) VALUES
(1, 'Doyen'),
(2, 'Vis Doyen'),
(3, 'Chef de département'),
(4, 'Professeur');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `code_id` varchar(4) NOT NULL COMMENT 'code d''indentification de l''utilisateur',
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `statuts` text NOT NULL,
  `signup_date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `code_id`, `username`, `password`, `email`, `telephone`, `statuts`, `signup_date`) VALUES
(1, 'WLN3', '', '', '', '', '', 0),
(2, 'UHRD', '', '', '', '', '', 0),
(3, 'ESPF', '', '', '', '', '', 0),
(4, 'ERMD', '', '', '', '', '', 0),
(5, 'RUUA', '', '', '', '', '', 0),
(6, 'LM4T', '', '', '', '', '', 0),
(7, 'KE77', '', '', '', '', '', 0),
(8, '4X4L', '', '', '', '', '', 0),
(9, 'CRY9', '', '', '', '', '', 0),
(10, 'XF6H', '', '', '', '', '', 0),
(11, 'D24T', '', '', '', '', '', 0),
(12, 'UDM3', '', '', '', '', '', 0),
(13, 'AW27', '', '', '', '', '', 0),
(14, 'AJWH', '', '', '', '', '', 0),
(15, 'UDS3', '', '', '', '', '', 0),
(16, 'FH3K', '', '', '', '', '', 0),
(17, '5UNA', '', '', '', '', '', 0),
(18, '4SLU', '', '', '', '', '', 0),
(19, 'EPLJ', '', '', '', '', '', 0),
(20, 'X2WH', '', '', '', '', '', 0),
(21, 'PNDF', '', '', '', '', '', 0),
(22, '2X4Y', '', '', '', '', '', 0),
(23, 'A5HV', '', '', '', '', '', 0),
(24, 'LU5F', '', '', '', '', '', 0),
(25, 'L569', '', '', '', '', '', 0),
(26, 'B47D', '', '', '', '', '', 0),
(27, 'B288', '', '', '', '', '', 0),
(28, '6EBF', '', '', '', '', '', 0),
(29, '3B01', '', '', '', '', '', 0),
(30, '9067', '', '', '', '', '', 0),
(31, '2A83', '', '', '', '', '', 0),
(32, '2444', '', '', '', '', '', 0),
(33, 'P710', '', '', '', '', '', 0),
(34, '1567', '', '', '', '', '', 0),
(35, 'J704', '', '', '', '', '', 0),
(36, '8746', '', '', '', '', '', 0),
(37, '7DB3', '', '', '', '', '', 0),
(38, '9527', '', '', '', '', '', 0),
(39, '8C4A', '', '', '', '', '', 0),
(40, 'FB57', '', '', '', '', '', 0),
(41, '757A', '', '', '', '', '', 0),
(42, '7EB5', '', '', '', '', '', 0),
(43, 'D527', '', '', '', '', '', 0),
(44, '717A', '', '', '', '', '', 0),
(45, '822A', '', '', '', '', '', 0),
(46, '8B00', '', '', '', '', '', 0),
(47, '0317', '', '', '', '', '', 0),
(48, '1677', '', '', '', '', '', 0),
(49, '20OJ', '', '', '', '', '', 0),
(50, 'TDKO', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `statuts` text NOT NULL,
  `signup_date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `telephone`, `statuts`, `signup_date`) VALUES
(1, 'Olivier', 'oLIVIER1', 'oliviertelehonou@gmail.com', '6533602323', 'Professeur', 1491246036);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `annee`
--
ALTER TABLE `annee`
  ADD PRIMARY KEY (`id_an`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`ID_CLASS`,`COD_CLASS`);

--
-- Index pour la table `cursus`
--
ALTER TABLE `cursus`
  ADD PRIMARY KEY (`ID_CUR`);

--
-- Index pour la table `cursus_classe`
--
ALTER TABLE `cursus_classe`
  ADD PRIMARY KEY (`ID_CUR`,`ID_CLASS`,`COD_CLASS`,`ID_CC`),
  ADD KEY `FK_CURSUS_CLASSE_CLASSE` (`ID_CLASS`,`COD_CLASS`);

--
-- Index pour la table `cursus_departement`
--
ALTER TABLE `cursus_departement`
  ADD PRIMARY KEY (`ID_CUR`,`ID_DPT`,`CODE_CLASSE`,`ID_CD`),
  ADD KEY `FK_CURSUS_DEPARTEMENT_DEPARTEMENT` (`ID_DPT`,`CODE_CLASSE`);

--
-- Index pour la table `cursus_option`
--
ALTER TABLE `cursus_option`
  ADD PRIMARY KEY (`ID_OP`,`CODE_OP`,`ID_CUR`,`ID_CO`),
  ADD KEY `FK_CURSUS_OPTION_CURSUS` (`ID_CUR`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`ID_DPT`,`CODE_CLASSE`);

--
-- Index pour la table `enseigant`
--
ALTER TABLE `enseigant`
  ADD PRIMARY KEY (`ID_PROF`);

--
-- Index pour la table `enseignant_salle_matiere`
--
ALTER TABLE `enseignant_salle_matiere`
  ADD PRIMARY KEY (`ID_OCCUPATION`,`ID_PROF`,`ID_SAL`,`ID_MAT`),
  ADD KEY `FK_ENSEIGNANT_SALLE_MATIERE_ENSEIGANT` (`ID_PROF`),
  ADD KEY `FK_ENSEIGNANT_SALLE_MATIERE_SALLE` (`ID_SAL`),
  ADD KEY `FK_ENSEIGNANT_SALLE_MATIERE_MATIERE` (`ID_MAT`);

--
-- Index pour la table `heures`
--
ALTER TABLE `heures`
  ADD PRIMARY KEY (`id_h`);

--
-- Index pour la table `inscriptions`
--
ALTER TABLE `inscriptions`
  ADD PRIMARY KEY (`numero`),
  ADD UNIQUE KEY `numero` (`numero`);

--
-- Index pour la table `jours`
--
ALTER TABLE `jours`
  ADD PRIMARY KEY (`id_jrs`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`ID_MAT`,`CODE_UV`);

--
-- Index pour la table `matiere_semestre_option`
--
ALTER TABLE `matiere_semestre_option`
  ADD PRIMARY KEY (`ID_SEM`,`ID_OP`,`CODE_OP`,`ID_MAT`,`CODE_UV`,`ID_MSO`),
  ADD KEY `FK_MATIERE_SEMESTRE_OPTION_OPTIONS` (`ID_OP`,`CODE_OP`),
  ADD KEY `FK_MATIERE_SEMESTRE_OPTION_MATIERE` (`ID_MAT`,`CODE_UV`);

--
-- Index pour la table `mois`
--
ALTER TABLE `mois`
  ADD PRIMARY KEY (`id_mois`);

--
-- Index pour la table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`ID_OP`,`CODE_OP`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`ID_SAL`,`COD_SALLE`);

--
-- Index pour la table `semaine`
--
ALTER TABLE `semaine`
  ADD PRIMARY KEY (`id_semaine`);

--
-- Index pour la table `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`ID_SEM`);

--
-- Index pour la table `statut`
--
ALTER TABLE `statut`
  ADD PRIMARY KEY (`id_stat`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_id` (`code_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `annee`
--
ALTER TABLE `annee`
  MODIFY `id_an` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `ID_CLASS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `cursus`
--
ALTER TABLE `cursus`
  MODIFY `ID_CUR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `ID_DPT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `enseigant`
--
ALTER TABLE `enseigant`
  MODIFY `ID_PROF` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `enseignant_salle_matiere`
--
ALTER TABLE `enseignant_salle_matiere`
  MODIFY `ID_OCCUPATION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT pour la table `heures`
--
ALTER TABLE `heures`
  MODIFY `id_h` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `inscriptions`
--
ALTER TABLE `inscriptions`
  MODIFY `numero` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `jours`
--
ALTER TABLE `jours`
  MODIFY `id_jrs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `ID_MAT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT pour la table `mois`
--
ALTER TABLE `mois`
  MODIFY `id_mois` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `options`
--
ALTER TABLE `options`
  MODIFY `ID_OP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
  MODIFY `ID_SAL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `semaine`
--
ALTER TABLE `semaine`
  MODIFY `id_semaine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `semestre`
--
ALTER TABLE `semestre`
  MODIFY `ID_SEM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `statut`
--
ALTER TABLE `statut`
  MODIFY `id_stat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `cursus_classe`
--
ALTER TABLE `cursus_classe`
  ADD CONSTRAINT `cursus_classe_ibfk_1` FOREIGN KEY (`ID_CUR`) REFERENCES `cursus` (`ID_CUR`),
  ADD CONSTRAINT `cursus_classe_ibfk_2` FOREIGN KEY (`ID_CLASS`,`COD_CLASS`) REFERENCES `classe` (`ID_CLASS`, `COD_CLASS`);

--
-- Contraintes pour la table `cursus_departement`
--
ALTER TABLE `cursus_departement`
  ADD CONSTRAINT `cursus_departement_ibfk_1` FOREIGN KEY (`ID_CUR`) REFERENCES `cursus` (`ID_CUR`),
  ADD CONSTRAINT `cursus_departement_ibfk_2` FOREIGN KEY (`ID_DPT`,`CODE_CLASSE`) REFERENCES `departement` (`ID_DPT`, `CODE_CLASSE`);

--
-- Contraintes pour la table `cursus_option`
--
ALTER TABLE `cursus_option`
  ADD CONSTRAINT `cursus_option_ibfk_1` FOREIGN KEY (`ID_OP`,`CODE_OP`) REFERENCES `options` (`ID_OP`, `CODE_OP`),
  ADD CONSTRAINT `cursus_option_ibfk_2` FOREIGN KEY (`ID_CUR`) REFERENCES `cursus` (`ID_CUR`);

--
-- Contraintes pour la table `matiere_semestre_option`
--
ALTER TABLE `matiere_semestre_option`
  ADD CONSTRAINT `matiere_semestre_option_ibfk_1` FOREIGN KEY (`ID_SEM`) REFERENCES `semestre` (`ID_SEM`),
  ADD CONSTRAINT `matiere_semestre_option_ibfk_2` FOREIGN KEY (`ID_OP`,`CODE_OP`) REFERENCES `options` (`ID_OP`, `CODE_OP`),
  ADD CONSTRAINT `matiere_semestre_option_ibfk_3` FOREIGN KEY (`ID_MAT`,`CODE_UV`) REFERENCES `matiere` (`ID_MAT`, `CODE_UV`);
--
-- Base de données :  `exercice3`
--
CREATE DATABASE IF NOT EXISTS `exercice3` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `exercice3`;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom_client` varchar(30) NOT NULL,
  `prenom_client` varchar(30) NOT NULL,
  `adresse` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `prenom_client`, `adresse`) VALUES
(1, 'MENKAM', 'Francis', 'Bandjoun'),
(2, 'NOUMSI', 'charleine', 'Douala'),
(3, 'KENFAK', 'Flora', 'Bafoussam'),
(22, 'dsds', 'dsds', 'dsds'),
(24, 'gf', 'gfgf', 'gfg'),
(26, 'Cx', 'c', 'cx'),
(31, 'vdfd', 'menkam2', 'fdf'),
(33, 'vfdf', 'fdfd', 'fdf'),
(38, 'dsd', 'dsd', 'dsd'),
(40, 'ffd', 'fdfd78', 'fdf'),
(43, 'Beltoise', 'Mefoute', 'bangangte'),
(44, 'talla', 'bernard', 'douala'),
(46, 'menk', 'yes', 'france'),
(47, 'hp', 'hp', 'doul'),
(48, 'hp', 'hp', 'doul'),
(49, 'hp', 'hp', 'doul'),
(50, 'menkam35', 'francis35', 'baf35'),
(51, 'menkam35', 'francis35', 'baf35'),
(52, 'MENKAM2', 'Francis2', 'Bafoussam'),
(54, 'intel', 'inside', 'chine'),
(55, 'voiture', 'toyota', 'dla'),
(56, 'test1', 'test2', 'test3'),
(57, 'chiegang', 'annie', 'bangangte'),
(60, 'chiegang', 'ann', 'Bandjoun'),
(61, 'ef', 'eer', 'er'),
(62, 'rgf', 'efedc', 'ds');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `date_commande` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `id_client`, `date_commande`) VALUES
(3, 3, '2017-12-11'),
(4, 1, '2017-12-25'),
(9, 2, '2018-01-19'),
(11, 2, '2018-01-10'),
(12, 1, '2018-01-18'),
(13, 1, '2018-01-18'),
(14, 1, '2018-01-18'),
(15, 3, '2018-01-14'),
(16, 3, '2018-01-13'),
(17, 2, '2018-01-13'),
(18, 3, '2018-01-03'),
(19, 1, '2018-01-12'),
(22, 43, '2018-01-22'),
(23, 44, '2018-01-22'),
(24, 52, '2018-01-23'),
(25, 2, '2018-01-23'),
(26, 2, '2018-01-23'),
(27, 57, '2018-01-23');

-- --------------------------------------------------------

--
-- Structure de la table `commande_concerne_produit`
--

CREATE TABLE `commande_concerne_produit` (
  `id_commande` int(11) NOT NULL,
  `refproduit` varchar(20) NOT NULL,
  `qte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commande_concerne_produit`
--

INSERT INTO `commande_concerne_produit` (`id_commande`, `refproduit`, `qte`) VALUES
(9, 'rt45', 1);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `refproduit` varchar(20) NOT NULL,
  `libelle` varchar(30) NOT NULL,
  `prix` int(11) NOT NULL,
  `qte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`refproduit`, `libelle`, `prix`, `qte`) VALUES
('rt45', 'Broli', 1200, 5000),
('rtg45', 'sucre', 700, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_client_2` (`id_client`);

--
-- Index pour la table `commande_concerne_produit`
--
ALTER TABLE `commande_concerne_produit`
  ADD PRIMARY KEY (`id_commande`,`refproduit`),
  ADD KEY `refproduit` (`refproduit`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`refproduit`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `commande_concerne_produit`
--
ALTER TABLE `commande_concerne_produit`
  ADD CONSTRAINT `commande_concerne_produit_ibfk_1` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commande_concerne_produit_ibfk_2` FOREIGN KEY (`refproduit`) REFERENCES `produit` (`refproduit`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de données :  `facture`
--
CREATE DATABASE IF NOT EXISTS `facture` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `facture`;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `ID` int(11) NOT NULL,
  `TVA-C` varchar(60) DEFAULT NULL,
  `nom` varchar(60) NOT NULL DEFAULT '',
  `adresse1` varchar(60) NOT NULL DEFAULT '',
  `adresse2` varchar(60) NOT NULL DEFAULT '',
  `telephone` varchar(60) NOT NULL DEFAULT '',
  `mail` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `ID` int(11) NOT NULL,
  `fournisseur` varchar(60) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `fromage`
--

CREATE TABLE `fromage` (
  `ID` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL DEFAULT '',
  `prix` decimal(5,2) NOT NULL DEFAULT '0.00',
  `TVA` tinyint(4) NOT NULL DEFAULT '0',
  `fournisseur` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE `historique` (
  `ID` int(11) NOT NULL,
  `numero` varchar(60) NOT NULL DEFAULT '',
  `montant` varchar(60) NOT NULL DEFAULT '',
  `client` int(11) NOT NULL DEFAULT '0',
  `paye` smallint(6) NOT NULL DEFAULT '0',
  `type` varchar(60) NOT NULL DEFAULT '',
  `date` varchar(60) NOT NULL DEFAULT '',
  `annee` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Base de données :  `hopital`
--
CREATE DATABASE IF NOT EXISTS `hopital` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hopital`;

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `numero` int(11) NOT NULL,
  `etage` int(11) NOT NULL,
  `nombrelit` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `chambre`
--

INSERT INTO `chambre` (`numero`, `etage`, `nombrelit`) VALUES
(1, 0, 6),
(2, 0, 6),
(3, 0, 6),
(4, 0, 6),
(5, 0, 6),
(6, 1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `compterendu`
--

CREATE TABLE `compterendu` (
  `Idcpterendu` int(10) UNSIGNED NOT NULL,
  `Datecpterendu` date NOT NULL,
  `Commentaite` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cpterendu`
--

CREATE TABLE `cpterendu` (
  `Idcpterendu` int(10) UNSIGNED NOT NULL,
  `Datecpterendu` date NOT NULL,
  `Commentaite` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `examen`
--

CREATE TABLE `examen` (
  `Idexamen` int(10) UNSIGNED NOT NULL,
  `Idcpterendu` int(10) UNSIGNED NOT NULL,
  `Resultat` varchar(1000) NOT NULL,
  `Type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lit`
--

CREATE TABLE `lit` (
  `Nolit` int(11) NOT NULL,
  `Nochambre` int(11) NOT NULL,
  `Motdepasseresp` int(11) NOT NULL,
  `Idpatient` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

CREATE TABLE `medicament` (
  `Idmedicament` int(10) UNSIGNED NOT NULL,
  `Idsoins` int(10) UNSIGNED NOT NULL,
  `Quantité` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `nettoyage`
--

CREATE TABLE `nettoyage` (
  `idnettoyage` int(10) UNSIGNED NOT NULL,
  `etage` int(10) UNSIGNED NOT NULL,
  `idpersonnel` int(10) UNSIGNED NOT NULL,
  `idadministrateur` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `heure` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `nettoyage`
--

INSERT INTO `nettoyage` (`idnettoyage`, `etage`, `idpersonnel`, `idadministrateur`, `date`, `heure`) VALUES
(1, 0, 6, 1, '2000-05-06', '12:04:18'),
(2, 1, 6, 1, '2000-05-06', '12:04:29'),
(3, 0, 6, 1, '2000-05-06', '20:09:09');

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `idpatient` int(10) UNSIGNED NOT NULL,
  `idpersonne` int(10) UNSIGNED NOT NULL,
  `nomtuteur` varchar(100) NOT NULL,
  `adressetuteur` varchar(50) NOT NULL,
  `telephonetuteur` int(10) UNSIGNED NOT NULL,
  `arrive` date NOT NULL,
  `depart` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `patient`
--

INSERT INTO `patient` (`idpatient`, `idpersonne`, `nomtuteur`, `adressetuteur`, `telephonetuteur`, `arrive`, `depart`) VALUES
(3, 4, 'NOUKUMO Stephane', 'Douala, Village', 676637816, '2015-05-03', '2000-05-07'),
(4, 5, 'MOUMENIJean Marie', 'Douala, Village', 676637816, '2015-05-03', NULL),
(5, 6, 'WANTIO Marcelin', 'Loum', 665002509, '2000-05-03', NULL),
(6, 7, '', '', 0, '2000-05-03', NULL),
(7, 8, '', '', 0, '2000-05-03', NULL),
(8, 9, 'SIBEUTCHEU Eric', 'Douala, Bonandjo', 62358941, '2000-05-03', NULL),
(9, 10, 'NOUKUMO Stephane', 'Loum', 0, '2000-05-03', NULL),
(10, 13, 'MEGAOU Jean Bertin', 'Douala, Ngodi', 0, '2000-05-05', '2000-05-07'),
(11, 14, 'MSSAMO Guillaine Laurette', 'Douala, Bonamoussadi', 0, '2000-05-05', NULL),
(12, 15, 'MAKAMTE Alexie', 'Douala, Bonaberie', 0, '2000-05-05', NULL),
(13, 16, 'MAKAMTE Alexie', 'Douala, Bonaberie', 0, '2000-05-05', NULL),
(14, 17, 'AYISSI SAMBA Donnaciel', '', 0, '2000-05-05', '2000-05-07');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `idpersonne` int(10) UNSIGNED NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `datenaissance` date NOT NULL,
  `lieunaissance` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `telephone` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `personne`
--

INSERT INTO `personne` (`idpersonne`, `nom`, `prenom`, `datenaissance`, `lieunaissance`, `adresse`, `telephone`) VALUES
(1, 'NITCHEU', 'Legrand', '0000-00-00', 'Kumba', 'Douala, Village', 695955975),
(2, 'MAGOUM MESSAMO', 'Messi Jouel', '0000-00-00', 'Koundjouck', 'Douala, Village', 4294967295),
(3, 'SOUPI', 'Merveille', '0000-00-00', 'Loum', 'Douala, Village', 652389745),
(4, 'NITCHEU NOUWENDUI', 'Augustin Legrand', '2015-01-01', 'Kumba', 'Douala, Village', 671131512),
(5, 'MOUANGA', 'Marcus', '1999-09-18', 'Adamaoua', 'Douala, Village', 656245896),
(6, 'FOMENA WANTIO', 'Serge Bernard', '1997-07-07', 'Penja', 'Loum', 658741235),
(7, 'BALEMA', 'Pascal', '1982-12-10', 'Santchou', 'Douala, Génie militaire', 658921000),
(8, 'SADEFFO', 'Sylvin Blaise', '1981-08-19', 'Moungo', 'Loum', 652145236),
(9, 'NOUBISSI', 'Angelbert', '1984-08-19', 'Douala', 'Douala, Yassa', 695860035),
(10, 'SIPOU', 'Louza', '1976-07-16', 'Tombel', 'Loum', 635894578),
(11, 'MAKOUN DJOK', 'Idrisse Dibril', '1981-09-16', 'Yagouail', 'Douala, New Bell', 652527420),
(12, 'SADOU', 'Jean Michel', '1975-09-01', 'Loum', 'Douala, Bonabérie', 675023599),
(13, 'DJEMBA KENGNE', 'Boris Daspel', '1990-03-09', 'Manjo', 'Douala, Ngodi', 695857901),
(14, 'SEMENA NGOUO', 'Martine Laure', '1974-06-18', 'Gaoundale', 'Douala, Bonamoussadi', 695950066),
(15, 'SANDJOCK FAKAM', 'Guy Martial', '1982-08-18', 'Fodjomoket', 'Douala, Bonabérie', 680200056),
(16, 'SANDJOCK FAKAM', 'Guy Martial', '1982-08-18', 'Fodjomoket', 'Douala, Bonabérie', 680200056),
(17, 'ASSAGA', 'Prince Gael', '1989-06-01', 'Yaoundé', 'Douala, Yassa', 652006205),
(18, 'AMINA TSEKEROU', 'Ahissatou', '1988-08-17', 'Kousserie', 'Douala, Yassa', 699510023);

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `idpersonnel` int(11) NOT NULL,
  `idpersonne` int(11) NOT NULL,
  `fonction` varchar(50) NOT NULL,
  `service` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `personnel`
--

INSERT INTO `personnel` (`idpersonnel`, `idpersonne`, `fonction`, `service`, `pass`) VALUES
(1, 1, 'Administrateur', 'Churigie', 'a6105c0a611b41b08f1209506350279e'),
(2, 2, 'Médecin', 'Pediatrie', 'a6105c0a611b41b08f1209506350279e'),
(3, 3, 'Infirmier', 'Pediatrie', 'a6105c0a611b41b08f1209506350279e'),
(4, 11, 'Médecin', 'Ophtamologie', 'a6105c0a611b41b08f1209506350279e'),
(5, 12, 'Infirmier', '', 'd41d8cd98f00b204e9800998ecf8427e'),
(6, 18, 'Personnel de nettoyage', '', 'd41d8cd98f00b204e9800998ecf8427e');

-- --------------------------------------------------------

--
-- Structure de la table `reunion`
--

CREATE TABLE `reunion` (
  `idreunion` int(10) UNSIGNED NOT NULL,
  `participants` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `idservice` int(30) UNSIGNED NOT NULL,
  `nomservice` varchar(50) NOT NULL,
  `etage` int(11) NOT NULL,
  `medecin` int(11) NOT NULL,
  `administrateur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`idservice`, `nomservice`, `etage`, `medecin`, `administrateur`) VALUES
(1, 'Churigie', 0, 2, 1),
(2, 'Pédiatrie', 0, 2, 1),
(3, 'Ophtamologie', 0, 2, 1),
(4, 'cardiologie', 1, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `soins`
--

CREATE TABLE `soins` (
  `idsoins` int(10) UNSIGNED NOT NULL,
  `idpatient` int(11) NOT NULL,
  `idinfirmier` int(11) NOT NULL,
  `examen` text NOT NULL,
  `resultat` text NOT NULL,
  `prescription` text NOT NULL,
  `reunion` text NOT NULL,
  `commentaire` text NOT NULL,
  `date` date NOT NULL,
  `heure` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `soins`
--

INSERT INTO `soins` (`idsoins`, `idpatient`, `idinfirmier`, `examen`, `resultat`, `prescription`, `reunion`, `commentaire`, `date`, `heure`) VALUES
(1, 14, 2, '', 'Negatif, Négatif', 'Paracetamol,<br />\r\nNivaquine', 'NITCHEU,<br />\r\nMAGOUM', 'Petite migraine', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

CREATE TABLE `visite` (
  `Idvisite` int(10) UNSIGNED NOT NULL,
  `idpersonnel` int(10) UNSIGNED NOT NULL,
  `Idpatient` int(10) UNSIGNED NOT NULL,
  `Idcpterendu` int(10) UNSIGNED NOT NULL,
  `Datevisite` date NOT NULL,
  `Heure` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`numero`);

--
-- Index pour la table `compterendu`
--
ALTER TABLE `compterendu`
  ADD PRIMARY KEY (`Idcpterendu`);

--
-- Index pour la table `cpterendu`
--
ALTER TABLE `cpterendu`
  ADD PRIMARY KEY (`Idcpterendu`);

--
-- Index pour la table `examen`
--
ALTER TABLE `examen`
  ADD PRIMARY KEY (`Idexamen`),
  ADD KEY `Idcpterendu` (`Idcpterendu`);

--
-- Index pour la table `lit`
--
ALTER TABLE `lit`
  ADD PRIMARY KEY (`Nolit`);

--
-- Index pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD PRIMARY KEY (`Idmedicament`),
  ADD UNIQUE KEY `Idsoins` (`Idsoins`);

--
-- Index pour la table `nettoyage`
--
ALTER TABLE `nettoyage`
  ADD PRIMARY KEY (`idnettoyage`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`idpatient`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`idpersonne`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`idpersonnel`);

--
-- Index pour la table `reunion`
--
ALTER TABLE `reunion`
  ADD UNIQUE KEY `Idpersonnel` (`idreunion`),
  ADD UNIQUE KEY `Idpersonnel_2` (`idreunion`),
  ADD UNIQUE KEY `Idpersonnel_3` (`idreunion`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`idservice`);

--
-- Index pour la table `soins`
--
ALTER TABLE `soins`
  ADD PRIMARY KEY (`idsoins`),
  ADD KEY `idpatient` (`idpatient`);

--
-- Index pour la table `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`Idvisite`),
  ADD KEY `idpersonnel` (`idpersonnel`,`Idpatient`,`Idcpterendu`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `nettoyage`
--
ALTER TABLE `nettoyage`
  MODIFY `idnettoyage` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `idpatient` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `idpersonne` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `idpersonnel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `reunion`
--
ALTER TABLE `reunion`
  MODIFY `idreunion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `idservice` int(30) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `soins`
--
ALTER TABLE `soins`
  MODIFY `idsoins` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Base de données :  `laravel_base`
--
CREATE DATABASE IF NOT EXISTS `laravel_base` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `laravel_base`;

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `comments`
--

INSERT INTO `comments` (`id`, `created_at`, `updated_at`, `content`, `seen`, `user_id`, `post_id`) VALUES
(1, '2018-04-24 10:03:08', '2018-04-24 10:03:08', '<p>\nLorem ipsum commodo consequat magna nec auctor, felis libero ornare habitasse nec elit, felis inceptos tellus inceptos cubilia. \nQuis mattis faucibus sem non odio fringilla class aliquam, metus ipsum lorem luctus pharetra dictum vehicula tempus, in venenatis gravida ut gravida proin orci. \nQuis sed platea mi quisque hendrerit semper hendrerit, facilisis ante sapien faucibus ligula commodo, vestibulum rutrum pretium varius sem aliquet. \nHimenaeos dolor cursus nunc habitasse aliquam ut curabitur ipsum luctus ut rutrum odio, condimentum donec suscipit molestie est etiam sit rutrum dui nostra. \nSem aliquet conubia nullam sollicitudin rhoncus venenatis vivamus rhoncus netus, risus tortor non mauris turpis eget integer nibh, dolor commodo venenatis ut molestie semper adipiscing amet. \n</p>\n<p>\nCras class donec sapien malesuada auctor sapien arcu, inceptos aenean consequat metus litora mattis vivamus feugiat, arcu adipiscing mauris primis ante ullamcorper. \nAd nisi lobortis arcu per orci malesuada, blandit metus tortor urna turpis consectetur, porttitor egestas sed eleifend eget. \nTincidunt pharetra varius tincidunt morbi malesuada elementum mi torquent mollis eu lobortis curae purus amet, vivamus amet nulla torquent nibh eu diam aliquam pretium donec aliquam tempus lacus. \nTempus feugiat lectus cras non velit mollis sit et integer egestas habitant, auctor integer sem at nam massa himenaeos netus vel. \n</p>', 0, 2, 1),
(2, '2018-04-24 10:03:08', '2018-04-24 10:03:08', '<p>\nLorem ipsum semper nibh malesuada leo fusce tortor sociosqu semper, facilisis semper class tempus faucibus tristique duis eros, cubilia quisque habitasse aliquam fringilla orci non vel. \nLaoreet dolor enim justo facilisis neque accumsan, in ad venenatis hac per dictumst, nulla ligula donec mollis massa. \nPorttitor ullamcorper risus eu platea fringilla habitasse suscipit pellentesque donec est habitant vehicula tempor, ultrices placerat sociosqu ultrices consectetur ullamcorper tincidunt quisque tellus ante nostra. \nEuismod nec suspendisse sem curabitur elit malesuada lacus, viverra sagittis sit ornare orci augue nullam, adipiscing pulvinar libero aliquam vestibulum platea. \n</p>\n<p>\nCursus pellentesque leo dui lectus curabitur euismod ad, erat curae non elit ultrices placerat netus metus, feugiat non conubia fusce porttitor sociosqu. \nDiam commodo metus in himenaeos vitae aptent consequat, luctus purus eleifend enim sollicitudin eleifend porta malesuada, ac class conubia condimentum mauris facilisis. \nConubia quis scelerisque lacinia tempus nullam felis fusce ac, potenti netus ornare semper molestie iaculis fermentum ornare, curabitur tincidunt imperdiet scelerisque imperdiet euismod scelerisque. \nTorquent curae rhoncus sollicitudin tortor placerat aptent hac nec posuere, suscipit sed tortor neque urna hendrerit vehicula duis, litora tristique congue nec auctor felis libero ornare. \n</p>\n<p>\nHabitasse nec elit felis inceptos tellus inceptos cubilia quis, mattis faucibus sem non odio fringilla class. \n</p>', 0, 2, 2),
(3, '2018-04-24 10:03:08', '2018-04-24 10:03:08', '<p>\nLorem ipsum habitant posuere lorem luctus pharetra dictum, vehicula tempus in venenatis gravida ut gravida proin, orci quis sed platea mi quisque. \nHendrerit semper hendrerit facilisis ante sapien faucibus ligula commodo vestibulum rutrum pretium varius, sem aliquet himenaeos dolor cursus nunc habitasse aliquam ut curabitur. \nIpsum luctus ut rutrum odio condimentum donec suscipit molestie, est etiam sit rutrum dui nostra sem aliquet conubia, nullam sollicitudin rhoncus venenatis vivamus rhoncus netus. \nRisus tortor non mauris turpis eget integer nibh dolor commodo, venenatis ut molestie semper adipiscing amet cras class, donec sapien malesuada auctor sapien arcu inceptos aenean. \n</p>\n<p>\nConsequat metus litora mattis vivamus feugiat arcu adipiscing mauris primis, ante ullamcorper ad nisi lobortis arcu per orci malesuada, blandit metus tortor urna turpis consectetur porttitor egestas. \nSed eleifend eget tincidunt pharetra varius tincidunt morbi malesuada, elementum mi torquent mollis eu lobortis curae purus amet, vivamus amet nulla torquent nibh eu diam. \nAliquam pretium donec aliquam tempus lacus tempus feugiat lectus cras non velit, mollis sit et integer egestas habitant auctor integer sem. \nAt nam massa himenaeos netus vel dapibus nibh, malesuada leo fusce tortor sociosqu semper facilisis semper, class tempus faucibus tristique duis eros. \n</p>\n<p>\nCubilia quisque habitasse aliquam fringilla orci, non vel laoreet. \n</p>', 0, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `text`, `seen`, `created_at`, `updated_at`) VALUES
(2, 'Durand', 'durand@la.fr', ' Lorem ipsum erat non elit ultrices placerat, netus metus feugiat non conubia fusce porttitor, sociosqu diam commodo metus in. Himenaeos vitae aptent consequat luctus purus eleifend enim, sollicitudin eleifend porta malesuada ac class conubia, condimentum mauris facilisis conubia quis scelerisque. Lacinia tempus nullam felis fusce ac potenti netus ornare semper molestie, iaculis fermentum ornare curabitur tincidunt imperdiet scelerisque imperdiet euismod.', 0, '2018-04-24 10:03:06', '2018-04-24 10:03:06'),
(3, 'Martin', 'martin@la.fr', 'Lorem ipsum tempor netus aenean ligula habitant vehicula tempor ultrices, placerat sociosqu ultrices consectetur ullamcorper tincidunt quisque tellus, ante nostra euismod nec suspendisse sem curabitur elit. Malesuada lacus viverra sagittis sit ornare orci, augue nullam adipiscing pulvinar libero aliquam vestibulum, platea cursus pellentesque leo dui. Lectus curabitur euismod ad, erat.', 1, '2018-04-24 10:03:07', '2018-04-24 10:03:07');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_10_21_105844_create_roles_table', 1),
('2014_10_21_110325_create_foreign_keys', 1),
('2014_10_24_205441_create_contact_table', 1),
('2014_10_26_172107_create_posts_table', 1),
('2014_10_26_172631_create_tags_table', 1),
('2014_10_26_172904_create_post_tag_table', 1),
('2014_10_26_222018_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('oliviertelehonou@gmail.com', '3331debb2151515e760a50b2977e3f0e8bcc17196896bb1554a691038e14bd9f', '2018-04-25 18:25:49');

-- --------------------------------------------------------

--
-- Structure de la table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 3, 1),
(7, 3, 2),
(8, 3, 4);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `slug`, `summary`, `content`, `seen`, `active`, `user_id`) VALUES
(1, '2018-04-24 10:03:07', '2018-04-24 10:03:07', 'Post 1', 'post-1', '<img alt=\"\" src=\"/filemanager/userfiles/user2/mega-champignon.png\" style=\"float:left; height:128px; width:128px\" /><p>\nLorem ipsum ante nibh eu diam aliquam pretium donec aliquam tempus lacus tempus, feugiat lectus cras non velit mollis sit et integer egestas habitant, auctor integer sem at nam massa himenaeos netus vel dapibus nibh. \nMalesuada leo fusce tortor sociosqu semper facilisis semper class, tempus faucibus tristique duis eros cubilia. \n</p>', '<p>\nLorem ipsum elementum magna aliquam fringilla orci non vel laoreet, dolor enim justo facilisis neque accumsan in ad venenatis, hac per dictumst nulla ligula donec mollis massa. \nPorttitor ullamcorper risus eu platea fringilla habitasse suscipit pellentesque donec, est habitant vehicula tempor ultrices placerat sociosqu ultrices. \nConsectetur ullamcorper tincidunt quisque tellus ante nostra euismod nec suspendisse sem, curabitur elit malesuada lacus viverra sagittis sit ornare orci augue nullam, adipiscing pulvinar libero aliquam vestibulum platea cursus pellentesque leo. \nDui lectus curabitur euismod ad erat curae non, elit ultrices placerat netus metus feugiat non conubia, fusce porttitor sociosqu diam commodo metus. \n</p>\n<p>\nIn himenaeos vitae aptent consequat luctus purus eleifend enim, sollicitudin eleifend porta malesuada ac class conubia condimentum mauris, facilisis conubia quis scelerisque lacinia tempus nullam. \nFelis fusce ac potenti netus ornare semper molestie iaculis fermentum, ornare curabitur tincidunt imperdiet scelerisque imperdiet euismod scelerisque torquent curae, rhoncus sollicitudin tortor placerat aptent hac nec posuere. \nSuscipit sed tortor neque urna hendrerit vehicula duis litora tristique congue, nec auctor felis libero ornare habitasse nec elit felis inceptos, tellus inceptos cubilia quis mattis faucibus sem non odio. \nFringilla class aliquam metus ipsum lorem luctus pharetra dictum vehicula tempus in venenatis, gravida ut gravida proin orci quis sed platea mi quisque hendrerit, semper hendrerit facilisis ante sapien faucibus ligula commodo vestibulum rutrum pretium. \n</p>\n<p>\nVarius sem aliquet himenaeos dolor cursus nunc habitasse, aliquam ut curabitur ipsum luctus ut, rutrum odio condimentum donec suscipit molestie. \nEst etiam sit rutrum dui nostra sem aliquet conubia nullam sollicitudin rhoncus, venenatis vivamus rhoncus netus risus tortor non mauris turpis eget, integer nibh dolor commodo venenatis ut molestie semper adipiscing amet. \nCras class donec sapien malesuada auctor sapien arcu inceptos, aenean consequat metus litora mattis vivamus feugiat, arcu adipiscing mauris primis ante ullamcorper ad. \nNisi lobortis arcu per orci malesuada blandit, metus tortor urna turpis consectetur porttitor egestas, sed eleifend eget tincidunt pharetra. \n</p>\n<p>\nVarius tincidunt morbi malesuada elementum mi torquent mollis eu, lobortis curae purus amet vivamus amet nulla torquent, nibh eu diam aliquam pretium donec aliquam. \nTempus lacus tempus feugiat lectus cras non velit mollis sit, et integer egestas habitant auctor integer sem at nam, massa himenaeos netus vel dapibus nibh malesuada leo. \nFusce tortor sociosqu semper facilisis semper class tempus faucibus tristique, duis eros cubilia quisque habitasse aliquam fringilla orci non, vel laoreet dolor enim justo facilisis neque accumsan. \nIn ad venenatis hac per dictumst nulla ligula, donec mollis massa porttitor ullamcorper risus eu platea, fringilla habitasse suscipit pellentesque donec est. \n</p>\n<p>\nHabitant vehicula tempor ultrices placerat sociosqu ultrices consectetur ullamcorper tincidunt, quisque tellus ante nostra euismod nec suspendisse sem, curabitur elit malesuada lacus viverra sagittis sit ornare. \nOrci augue nullam adipiscing pulvinar libero aliquam vestibulum platea cursus pellentesque, leo dui lectus curabitur euismod ad erat curae non elit, ultrices placerat netus metus feugiat non conubia fusce porttitor. \nSociosqu diam commodo metus in himenaeos vitae aptent consequat luctus purus eleifend, enim sollicitudin eleifend porta malesuada ac class conubia condimentum. \nMauris facilisis conubia quis scelerisque lacinia tempus nullam, felis fusce ac potenti netus. \n</p>', 0, 1, 1),
(2, '2018-04-24 10:03:07', '2018-04-24 10:03:07', 'Post 2', 'post-2', '<img alt=\"\" src=\"/filemanager/userfiles/user2/goomba.png\" style=\"float:left; height:128px; width:128px\" /><p>\nLorem ipsum diam iaculis fermentum ornare curabitur, tincidunt imperdiet scelerisque imperdiet euismod, scelerisque torquent curae rhoncus sollicitudin. \nTortor placerat aptent hac nec posuere suscipit sed tortor neque urna hendrerit, vehicula duis litora tristique congue nec auctor felis libero ornare habitasse, nec elit felis inceptos tellus inceptos cubilia quis mattis faucibus. \n</p>', '<p>Lorem ipsum convallis ac curae non elit ultrices placerat netus metus feugiat, non conubia fusce porttitor sociosqu diam commodo metus in himenaeos, vitae aptent consequat luctus purus eleifend enim sollicitudin eleifend porta. Malesuada ac class conubia condimentum mauris facilisis conubia quis scelerisque lacinia, tempus nullam felis fusce ac potenti netus ornare semper. Molestie iaculis fermentum ornare curabitur tincidunt imperdiet scelerisque, imperdiet euismod scelerisque torquent curae rhoncus, sollicitudin tortor placerat aptent hac nec. Posuere suscipit sed tortor neque urna hendrerit vehicula duis litora tristique congue nec auctor felis libero, ornare habitasse nec elit felis inceptos tellus inceptos cubilia quis mattis faucibus sem non.</p>\n\n<p>Odio fringilla class aliquam metus ipsum lorem luctus pharetra dictum, vehicula tempus in venenatis gravida ut gravida proin orci, quis sed platea mi quisque hendrerit semper hendrerit. Facilisis ante sapien faucibus ligula commodo vestibulum rutrum pretium, varius sem aliquet himenaeos dolor cursus nunc habitasse, aliquam ut curabitur ipsum luctus ut rutrum. Odio condimentum donec suscipit molestie est etiam sit rutrum dui nostra, sem aliquet conubia nullam sollicitudin rhoncus venenatis vivamus rhoncus netus, risus tortor non mauris turpis eget integer nibh dolor. Commodo venenatis ut molestie semper adipiscing amet cras, class donec sapien malesuada auctor sapien arcu inceptos, aenean consequat metus litora mattis vivamus.</p>\n\n<pre>\n<code class=\"language-php\">protected function getUserByRecaller($recaller)\n{\n	if ($this-&gt;validRecaller($recaller) &amp;&amp; ! $this-&gt;tokenRetrievalAttempted)\n	{\n		$this-&gt;tokenRetrievalAttempted = true;\n\n		list($id, $token) = explode(\"|\", $recaller, 2);\n\n		$this-&gt;viaRemember = ! is_null($user = $this-&gt;provider-&gt;retrieveByToken($id, $token));\n\n		return $user;\n	}\n}</code></pre>\n\n<p>Feugiat arcu adipiscing mauris primis ante ullamcorper ad nisi, lobortis arcu per orci malesuada blandit metus tortor, urna turpis consectetur porttitor egestas sed eleifend. Eget tincidunt pharetra varius tincidunt morbi malesuada elementum mi torquent mollis, eu lobortis curae purus amet vivamus amet nulla torquent, nibh eu diam aliquam pretium donec aliquam tempus lacus. Tempus feugiat lectus cras non velit mollis sit et integer, egestas habitant auctor integer sem at nam massa himenaeos, netus vel dapibus nibh malesuada leo fusce tortor. Sociosqu semper facilisis semper class tempus faucibus tristique duis eros, cubilia quisque habitasse aliquam fringilla orci non vel, laoreet dolor enim justo facilisis neque accumsan in.</p>\n\n<p>Ad venenatis hac per dictumst nulla ligula donec, mollis massa porttitor ullamcorper risus eu platea, fringilla habitasse suscipit pellentesque donec est. Habitant vehicula tempor ultrices placerat sociosqu ultrices consectetur ullamcorper tincidunt quisque tellus, ante nostra euismod nec suspendisse sem curabitur elit malesuada lacus. Viverra sagittis sit ornare orci augue nullam adipiscing pulvinar libero aliquam vestibulum platea cursus pellentesque leo dui lectus, curabitur euismod ad erat curae non elit ultrices placerat netus metus feugiat non conubia fusce porttitor. Sociosqu diam commodo metus in himenaeos vitae aptent consequat luctus purus eleifend enim sollicitudin eleifend, porta malesuada ac class conubia condimentum mauris facilisis conubia quis scelerisque lacinia.</p>\n\n<p>Tempus nullam felis fusce ac potenti netus ornare semper molestie iaculis, fermentum ornare curabitur tincidunt imperdiet scelerisque imperdiet euismod. Scelerisque torquent curae rhoncus sollicitudin tortor placerat aptent hac, nec posuere suscipit sed tortor neque urna hendrerit, vehicula duis litora tristique congue nec auctor. Felis libero ornare habitasse nec elit felis, inceptos tellus inceptos cubilia quis mattis, faucibus sem non odio fringilla. Class aliquam metus ipsum lorem luctus pharetra dictum vehicula, tempus in venenatis gravida ut gravida proin orci, quis sed platea mi quisque hendrerit semper.</p>\n', 0, 1, 2),
(3, '2018-04-24 10:03:07', '2018-04-24 10:03:07', 'Post 3', 'post-3', '<img alt=\"\" src=\"/filemanager/userfiles/user2/rouge-shell.png\" style=\"float:left; height:128px; width:128px\" /><p>\nLorem ipsum tortor non odio fringilla class, aliquam metus ipsum lorem luctus pharetra, dictum vehicula tempus in venenatis. \nGravida ut gravida proin orci quis sed platea, mi quisque hendrerit semper hendrerit facilisis, ante sapien faucibus ligula commodo vestibulum. \nRutrum pretium varius sem aliquet, himenaeos dolor cursus nunc, habitasse aliquam ut. \n</p>', '<p>\nLorem ipsum vivamus ut rutrum odio condimentum donec suscipit molestie est etiam, sit rutrum dui nostra sem aliquet conubia nullam sollicitudin rhoncus, venenatis vivamus rhoncus netus risus tortor non mauris turpis eget. \nInteger nibh dolor commodo venenatis ut molestie semper adipiscing amet, cras class donec sapien malesuada auctor sapien arcu inceptos, aenean consequat metus litora mattis vivamus feugiat arcu. \nAdipiscing mauris primis ante ullamcorper ad nisi lobortis arcu, per orci malesuada blandit metus tortor urna. \nTurpis consectetur porttitor egestas sed eleifend eget tincidunt pharetra, varius tincidunt morbi malesuada elementum mi torquent mollis eu, lobortis curae purus amet vivamus amet nulla. \n</p>\n<p>\nTorquent nibh eu diam aliquam pretium donec aliquam tempus, lacus tempus feugiat lectus cras non velit mollis sit, et integer egestas habitant auctor integer sem. \nAt nam massa himenaeos netus vel dapibus nibh malesuada leo fusce, tortor sociosqu semper facilisis semper class tempus faucibus tristique duis eros, cubilia quisque habitasse aliquam fringilla orci non vel laoreet. \nDolor enim justo facilisis neque accumsan in ad venenatis hac per dictumst, nulla ligula donec mollis massa porttitor ullamcorper risus eu platea fringilla habitasse, suscipit pellentesque donec est habitant vehicula tempor ultrices placerat sociosqu. \n</p>\n<p>\nUltrices consectetur ullamcorper tincidunt quisque tellus ante nostra euismod nec, suspendisse sem curabitur elit malesuada lacus viverra sagittis, sit ornare orci augue nullam adipiscing pulvinar libero. \nAliquam vestibulum platea cursus pellentesque leo dui lectus curabitur euismod ad, erat curae non elit ultrices placerat netus metus feugiat, non conubia fusce porttitor sociosqu diam commodo metus in. \nHimenaeos vitae aptent consequat luctus purus eleifend enim sollicitudin eleifend porta, malesuada ac class conubia condimentum mauris facilisis conubia. \nQuis scelerisque lacinia tempus nullam felis fusce ac potenti netus ornare semper molestie iaculis fermentum, ornare curabitur tincidunt imperdiet scelerisque imperdiet euismod scelerisque torquent curae rhoncus sollicitudin. \n</p>\n<p>\nTortor placerat aptent hac nec posuere suscipit sed tortor, neque urna hendrerit vehicula duis litora tristique congue, nec auctor felis libero ornare habitasse nec. \nElit felis inceptos tellus inceptos cubilia quis mattis faucibus sem non odio, fringilla class aliquam metus ipsum lorem luctus pharetra dictum. \nVehicula tempus in venenatis gravida ut gravida proin orci, quis sed platea mi quisque hendrerit semper, hendrerit facilisis ante sapien faucibus ligula commodo. \nVestibulum rutrum pretium varius sem aliquet himenaeos, dolor cursus nunc habitasse aliquam ut curabitur, ipsum luctus ut rutrum odio. \nCondimentum donec suscipit molestie est etiam sit rutrum, dui nostra sem aliquet conubia nullam sollicitudin rhoncus, venenatis vivamus rhoncus netus risus tortor. \n</p>\n<p>\nNon mauris turpis eget integer nibh dolor commodo venenatis ut molestie semper adipiscing amet, cras class donec sapien malesuada auctor sapien arcu inceptos aenean consequat metus. \nLitora mattis vivamus feugiat arcu adipiscing mauris primis ante ullamcorper ad, nisi lobortis arcu per orci malesuada blandit metus tortor, urna turpis consectetur porttitor egestas sed eleifend eget tincidunt. \nPharetra varius tincidunt morbi malesuada elementum, mi torquent mollis eu, lobortis curae purus amet. \nVivamus amet nulla torquent nibh eu diam, aliquam pretium donec aliquam tempus lacus, tempus feugiat lectus cras non. \nVelit mollis sit et integer, egestas habitant auctor integer sem, at nam massa. \n</p>', 0, 1, 2),
(4, '2018-04-24 10:03:07', '2018-04-24 10:03:07', 'Post 4', 'post-4', '<img alt=\"\" src=\"/filemanager/userfiles/user2/rouge-shyguy.png\" style=\"float:left; height:128px; width:128px\" /><p>\nLorem ipsum cursus dapibus nibh malesuada leo fusce tortor, sociosqu semper facilisis semper class tempus faucibus tristique duis, eros cubilia quisque habitasse aliquam fringilla orci. \nNon vel laoreet dolor enim justo facilisis, neque accumsan in ad venenatis hac per, dictumst nulla ligula donec mollis. \nMassa porttitor ullamcorper risus, eu platea. \n</p>', '<p>\nLorem ipsum tellus habitasse suscipit pellentesque donec est habitant vehicula, tempor ultrices placerat sociosqu ultrices consectetur ullamcorper tincidunt, quisque tellus ante nostra euismod nec suspendisse sem. \nCurabitur elit malesuada lacus viverra sagittis sit ornare orci augue, nullam adipiscing pulvinar libero aliquam vestibulum platea cursus, pellentesque leo dui lectus curabitur euismod ad erat. \nCurae non elit ultrices placerat netus metus feugiat non conubia fusce porttitor sociosqu diam, commodo metus in himenaeos vitae aptent consequat luctus purus eleifend enim sollicitudin. \nEleifend porta malesuada ac class conubia condimentum mauris facilisis conubia quis, scelerisque lacinia tempus nullam felis fusce ac potenti netus. \n</p>\n<p>\nOrnare semper molestie iaculis fermentum ornare curabitur tincidunt imperdiet scelerisque imperdiet euismod scelerisque, torquent curae rhoncus sollicitudin tortor placerat aptent hac nec posuere suscipit. \nSed tortor neque urna hendrerit vehicula duis litora tristique congue, nec auctor felis libero ornare habitasse nec elit, felis inceptos tellus inceptos cubilia quis mattis faucibus. \nSem non odio fringilla class aliquam metus ipsum lorem luctus pharetra, dictum vehicula tempus in venenatis gravida ut gravida proin, orci quis sed platea mi quisque hendrerit semper hendrerit. \nFacilisis ante sapien faucibus ligula commodo vestibulum rutrum pretium, varius sem aliquet himenaeos dolor cursus. \n</p>\n<p>\nNunc habitasse aliquam ut curabitur ipsum luctus ut rutrum, odio condimentum donec suscipit molestie est etiam sit, rutrum dui nostra sem aliquet conubia nullam. \nSollicitudin rhoncus venenatis vivamus rhoncus netus, risus tortor non mauris turpis eget, integer nibh dolor commodo. \nVenenatis ut molestie semper adipiscing amet cras, class donec sapien malesuada auctor, sapien arcu inceptos aenean consequat. \nMetus litora mattis vivamus feugiat arcu adipiscing mauris primis, ante ullamcorper ad nisi lobortis arcu per orci, malesuada blandit metus tortor urna turpis consectetur. \nPorttitor egestas sed eleifend eget tincidunt pharetra varius, tincidunt morbi malesuada elementum mi torquent mollis, eu lobortis curae purus amet vivamus. \n</p>\n<p>\nAmet nulla torquent nibh eu diam aliquam pretium donec aliquam tempus lacus tempus, feugiat lectus cras non velit mollis sit et integer egestas habitant auctor, integer sem at nam massa himenaeos netus vel dapibus nibh malesuada. \nLeo fusce tortor sociosqu semper facilisis semper class tempus, faucibus tristique duis eros cubilia quisque habitasse aliquam, fringilla orci non vel laoreet dolor enim. \nJusto facilisis neque accumsan in ad venenatis hac per dictumst nulla ligula, donec mollis massa porttitor ullamcorper risus eu platea fringilla habitasse, suscipit pellentesque donec est habitant vehicula tempor ultrices placerat sociosqu. \n</p>\n<p>\nUltrices consectetur ullamcorper tincidunt quisque tellus ante nostra euismod nec suspendisse, sem curabitur elit malesuada lacus viverra sagittis sit ornare orci, augue nullam adipiscing pulvinar libero aliquam vestibulum platea cursus. \nPellentesque leo dui lectus curabitur euismod ad, erat curae non elit ultrices placerat, netus metus feugiat non conubia. \nFusce porttitor sociosqu diam commodo metus in himenaeos, vitae aptent consequat luctus purus eleifend enim, sollicitudin eleifend porta malesuada ac class. \nConubia condimentum mauris facilisis conubia quis scelerisque lacinia tempus nullam felis fusce, ac potenti netus ornare semper molestie iaculis fermentum ornare. \n</p>\n<p>\nCurabitur tincidunt imperdiet scelerisque imperdiet euismod scelerisque torquent, curae rhoncus sollicitudin tortor placerat aptent, hac nec posuere suscipit sed tortor. \nNeque urna hendrerit, vehicula. \n</p>', 0, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `roles`
--

INSERT INTO `roles` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', '2018-04-24 10:03:04', '2018-04-24 10:03:04'),
(2, 'Redactor', 'redac', '2018-04-24 10:03:04', '2018-04-24 10:03:04'),
(3, 'User', 'user', '2018-04-24 10:03:04', '2018-04-24 10:03:04');

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tag` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tags`
--

INSERT INTO `tags` (`id`, `created_at`, `updated_at`, `tag`) VALUES
(1, '2018-04-24 10:03:07', '2018-04-24 10:03:07', 'Tag1'),
(2, '2018-04-24 10:03:07', '2018-04-24 10:03:07', 'Tag2'),
(3, '2018-04-24 10:03:07', '2018-04-24 10:03:07', 'Tag3'),
(4, '2018-04-24 10:03:07', '2018-04-24 10:03:07', 'Tag4');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `valid` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role_id`, `seen`, `valid`, `confirmed`, `confirmation_code`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'GreatAdmin', 'admin@la.fr', '$2y$10$Zi0COwaEzvAV00IA89KfsOyUINgKRLwSeIuq9bhdkZ7bstRUYrCcu', 1, 1, 0, 0, NULL, '2018-04-24 10:03:05', '2018-04-24 15:29:20', 'UfODhHhnL3GuF1dlzohKyPkbj85m7z8wr03tQF6tmWRhthczXoDL7mgxY0Ty'),
(2, 'GreatRedactor', 'redac@la.fr', '$2y$10$J3r.eN9/seRBqSet9GWw0u8VYLG8HWIpkJBMbMZOKn.YUIDrqTX3u', 2, 1, 1, 1, NULL, '2018-04-24 10:03:05', '2018-04-24 10:10:23', '8Lv7DbzGh6xscSEwpajAHdvFdsQmBC7Ar3MtNCsUbQmy9Ng5DOIn1FdBWOqB'),
(3, 'Walker', 'walker@la.fr', '$2y$10$H8bKC0WzWZvbJlMPfAss8.M/gS.Bo7wtvux2K20lBe7etCM9brE3C', 3, 0, 0, 1, NULL, '2018-04-24 10:03:06', '2018-04-24 10:03:06', NULL),
(4, 'Slacker', 'slacker@la.fr', '$2y$10$hkai4AdBUp6AzQPJuT2xtu7dwMrVmWB174quHIHRjnElkM3vwpn6G', 3, 0, 0, 1, NULL, '2018-04-24 10:03:06', '2018-04-24 10:03:06', NULL),
(5, 'Olivier', 'oliviertelehonou@gmail.com', '$2y$10$0fkfx9H0K00lMDe7yPfsguTyxo.Z/woih/hKmaFMAfHzmO9LjsZte', 3, 0, 0, 0, 'RmWsl7dY6RxQKHsJaTGlpFU2zeV6oc', '2018-04-24 15:35:18', '2018-04-24 15:35:18', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Index pour la table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_unique` (`tag`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
--
-- Base de données :  `magasin`
--
CREATE DATABASE IF NOT EXISTS `magasin` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `magasin`;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `ID` int(11) NOT NULL,
  `NOM_PRODUIT` varchar(128) DEFAULT NULL,
  `ADRESSE_CLIENT` varchar(128) DEFAULT NULL,
  `TELEPHONE_CLIENT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`ID`, `NOM_PRODUIT`, `ADRESSE_CLIENT`, `TELEPHONE_CLIENT`) VALUES
(0, 'talla', 'roger', 0),
(1, 'tamno', 'bafoussam', 695346389),
(2, 'talla', 'yaounde', 62283),
(333, 'talla', 'yaoune', 6667),
(3331, 'toto', 'dfd', 3333);

-- --------------------------------------------------------

--
-- Structure de la table `commander`
--

CREATE TABLE `commander` (
  `ID_PRODUIT` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `ID_COMMANDER` int(11) DEFAULT NULL,
  `QUANTITE_COMMANDER` bigint(100) DEFAULT NULL,
  `PRIX_TOTAL` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `ID_FOURNISSEUR` int(11) NOT NULL,
  `NOM_FOURNISSEUR` varchar(128) DEFAULT NULL,
  `ADRESSE_FOURNISSEUR` varchar(128) DEFAULT NULL,
  `TELE_FOURNISSEUR` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `livrer`
--

CREATE TABLE `livrer` (
  `ID_PRODUIT` int(11) NOT NULL,
  `ID_FOURNISSEUR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `ID_PRODUIT` int(11) NOT NULL,
  `CODE_PRODUIT` varchar(128) DEFAULT NULL,
  `LIBELLE_PRODUIT` varchar(128) DEFAULT NULL,
  `PRIX_UNITAIRE` int(11) DEFAULT NULL,
  `STOCK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`ID_PRODUIT`, `CODE_PRODUIT`, `LIBELLE_PRODUIT`, `PRIX_UNITAIRE`, `STOCK`) VALUES
(7, 'c1', 'ciment', 5000, 1140);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `commander`
--
ALTER TABLE `commander`
  ADD PRIMARY KEY (`ID_PRODUIT`,`ID`),
  ADD KEY `I_FK_COMMANDER_PRODUIT` (`ID_PRODUIT`),
  ADD KEY `I_FK_COMMANDER_CLIENT` (`ID`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`ID_FOURNISSEUR`);

--
-- Index pour la table `livrer`
--
ALTER TABLE `livrer`
  ADD PRIMARY KEY (`ID_PRODUIT`,`ID_FOURNISSEUR`),
  ADD KEY `I_FK_LIVRER_PRODUIT` (`ID_PRODUIT`),
  ADD KEY `I_FK_LIVRER_FOURNISSEUR` (`ID_FOURNISSEUR`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`ID_PRODUIT`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `ID_PRODUIT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commander`
--
ALTER TABLE `commander`
  ADD CONSTRAINT `commander_ibfk_1` FOREIGN KEY (`ID_PRODUIT`) REFERENCES `produit` (`ID_PRODUIT`),
  ADD CONSTRAINT `commander_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `client` (`ID`);

--
-- Contraintes pour la table `livrer`
--
ALTER TABLE `livrer`
  ADD CONSTRAINT `livrer_ibfk_1` FOREIGN KEY (`ID_PRODUIT`) REFERENCES `produit` (`ID_PRODUIT`),
  ADD CONSTRAINT `livrer_ibfk_2` FOREIGN KEY (`ID_FOURNISSEUR`) REFERENCES `fournisseur` (`ID_FOURNISSEUR`);
--
-- Base de données :  `multi-admin`
--
CREATE DATABASE IF NOT EXISTS `multi-admin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `multi-admin`;

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `mod_modulegroupcode` varchar(25) NOT NULL,
  `mod_modulegroupname` varchar(50) NOT NULL,
  `mod_modulecode` varchar(25) NOT NULL,
  `mod_modulename` varchar(50) NOT NULL,
  `mod_modulegrouporder` int(3) NOT NULL,
  `mod_moduleorder` int(3) NOT NULL,
  `mod_modulepagename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `module`
--

INSERT INTO `module` (`mod_modulegroupcode`, `mod_modulegroupname`, `mod_modulecode`, `mod_modulename`, `mod_modulegrouporder`, `mod_moduleorder`, `mod_modulepagename`) VALUES
('CHECKOUT', 'Checkout', 'PAYMENT', 'Payment', 3, 2, 'payment.php'),
('CHECKOUT', 'Checkout', 'SHIPPING', 'Shipping', 3, 1, 'shipping.php'),
('CHECKOUT', 'Checkout', 'TAX', 'Tax', 3, 3, 'tax.php'),
('INVT', 'Inventory', 'PURCHASES', 'Purchases', 2, 1, 'purchases.php'),
('INVT', 'Inventory', 'SALES', 'Sales', 2, 3, 'sales.php'),
('INVT', 'Inventory', 'STOCKS', 'Stocks', 2, 2, 'stocks.php');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `role_rolecode` varchar(50) NOT NULL,
  `role_rolename` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`role_rolecode`, `role_rolename`) VALUES
('ADMIN', 'Administrator'),
('SUPERADMIN', 'Super Admin');

-- --------------------------------------------------------

--
-- Structure de la table `role_rights`
--

CREATE TABLE `role_rights` (
  `rr_rolecode` varchar(50) NOT NULL,
  `rr_modulecode` varchar(50) NOT NULL,
  `rr_create` enum('yes','no') NOT NULL DEFAULT 'no',
  `rr_edit` enum('yes','no') NOT NULL DEFAULT 'no',
  `rr_delete` enum('yes','no') NOT NULL DEFAULT 'no',
  `rr_view` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `role_rights`
--

INSERT INTO `role_rights` (`rr_rolecode`, `rr_modulecode`, `rr_create`, `rr_edit`, `rr_delete`, `rr_view`) VALUES
('SUPERADMIN', 'PURCHASES', 'yes', 'yes', 'yes', 'yes'),
('SUPERADMIN', 'STOCKS', 'yes', 'yes', 'yes', 'yes'),
('SUPERADMIN', 'SALES', 'yes', 'yes', 'yes', 'yes'),
('SUPERADMIN', 'SHIPPING', 'yes', 'yes', 'yes', 'yes'),
('SUPERADMIN', 'PAYMENT', 'yes', 'yes', 'yes', 'yes'),
('SUPERADMIN', 'TAX', 'yes', 'yes', 'yes', 'yes'),
('ADMIN', 'PURCHASES', 'yes', 'yes', 'yes', 'yes'),
('ADMIN', 'STOCKS', 'no', 'no', 'no', 'yes'),
('ADMIN', 'SALES', 'no', 'no', 'no', 'no'),
('ADMIN', 'SHIPPING', 'yes', 'yes', 'yes', 'yes'),
('ADMIN', 'PAYMENT', 'no', 'no', 'no', 'yes'),
('ADMIN', 'TAX', 'no', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `system_users`
--

CREATE TABLE `system_users` (
  `u_userid` int(11) NOT NULL,
  `u_username` varchar(100) NOT NULL,
  `u_password` varchar(255) NOT NULL,
  `u_rolecode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `system_users`
--

INSERT INTO `system_users` (`u_userid`, `u_username`, `u_password`, `u_rolecode`) VALUES
(1, 'shahrukh', '123456', 'SUPERADMIN'),
(2, 'ronaldo', 'ronaldo', 'ADMIN');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`mod_modulegroupcode`,`mod_modulecode`),
  ADD UNIQUE KEY `mod_modulecode` (`mod_modulecode`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_rolecode`);

--
-- Index pour la table `system_users`
--
ALTER TABLE `system_users`
  ADD PRIMARY KEY (`u_userid`),
  ADD KEY `u_rolecode` (`u_rolecode`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `system_users`
--
ALTER TABLE `system_users`
  MODIFY `u_userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `system_users`
--
ALTER TABLE `system_users`
  ADD CONSTRAINT `system_users_ibfk_1` FOREIGN KEY (`u_rolecode`) REFERENCES `role` (`role_rolecode`) ON UPDATE CASCADE;
--
-- Base de données :  `pfe`
--
CREATE DATABASE IF NOT EXISTS `pfe` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `pfe`;

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `comments`
--

INSERT INTO `comments` (`id`, `created_at`, `updated_at`, `content`, `seen`, `user_id`, `post_id`) VALUES
(1, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est igitur officium eius generis, quod nec in bonis ponatur nec in contrariis. Quod quidem iam fit etiam in Academia. Restinguet citius, si ardentem acceperit. Consequatur summas voluptates non modo parvo, sed per me nihilo, si potest; \n\nAtque haec ita iustitiae propria sunt, ut sint virtutum reliquarum communia. Falli igitur possumus. Tu autem inter haec tantam multitudinem hominum interiectam non vides nec laetantium nec dolentium? Duo Reges: constructio interrete. Haec dicuntur inconstantissime. Nam si propter voluptatem, quae est ista laus, quae possit e macello peti? Primum in nostrane potestate est, quid meminerimus? Non est enim vitium in oratione solum, sed etiam in moribus. \n\nHaec dicuntur fortasse ieiunius; Sed haec ab Antiocho, familiari nostro, dicuntur multo melius et fortius, quam a Stasea dicebantur. Quia nec honesto quic quam honestius nec turpi turpius. Quodsi ipsam honestatem undique pertectam atque absolutam. Negat esse eam, inquit, propter se expetendam. Suo genere perveniant ad extremum; Nummus in Croesi divitiis obscuratur, pars est tamen divitiarum. Verum hoc idem saepe faciamus. \n\n', 0, 2, 1),
(2, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Audeo dicere, inquit. Nam quid possumus facere melius? \n\nQuod ea non occurrentia fingunt, vincunt Aristonem; Duo Reges: constructio interrete. Quis hoc dicit? Terram, mihi crede, ea lanx et maria deprimet. Ut necesse sit omnium rerum, quae natura vigeant, similem esse finem, non eundem. Deinde qui fit, ut ego nesciam, sciant omnes, quicumque Epicurei esse voluerunt? Experiamur igitur, inquit, etsi habet haec Stoicorum ratio difficilius quiddam et obscurius. Conferam tecum, quam cuique verso rem subicias; \n\n', 0, 2, 2),
(3, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nescio quo modo praetervolavit oratio. Materiam vero rerum et copiam apud hos exilem, apud illos uberrimam reperiemus. Primum quid tu dicis breve? Non est enim vitium in oratione solum, sed etiam in moribus. Non est ista, inquam, Piso, magna dissensio. Dat enim intervalla et relaxat. Sed virtutem ipsam inchoavit, nihil amplius. Duo Reges: constructio interrete. Etenim semper illud extra est, quod arte comprehenditur. \n\nNosti, credo, illud: Nemo pius est, qui pietatem-; Ergo, si semel tristior effectus est, hilara vita amissa est? Causa autem fuit huc veniendi ut quosdam hinc libros promerem. Nemo nostrum istius generis asotos iucunde putat vivere. Quo studio Aristophanem putamus aetatem in litteris duxisse? Inde sermone vario sex illa a Dipylo stadia confecimus. At iam decimum annum in spelunca iacet. Inde sermone vario sex illa a Dipylo stadia confecimus. Universa enim illorum ratione cum tota vestra confligendum puto. Sed residamus, inquit, si placet. Easdemne res? Recte, inquit, intellegis. \n\nQui autem de summo bono dissentit de tota philosophiae ratione dissentit. Illud mihi a te nimium festinanter dictum videtur, sapientis omnis esse semper beatos; Eam tum adesse, cum dolor omnis absit; Non enim solum Torquatus dixit quid sentiret, sed etiam cur. An tu me de L. Primum cur ista res digna odio est, nisi quod est turpis? Cur, nisi quod turpis oratio est? Nonne videmus quanta perturbatio rerum omnium consequatur, quanta confusio? Quae similitudo in genere etiam humano apparet. \n\n', 0, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `seen`, `created_at`, `updated_at`) VALUES
(1, 'Dupont', 'dupont@la.fr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Compensabatur, inquit, cum summis doloribus laetitia. Sed tamen intellego quid velit. Quid, de quo nulla dissensio est? Et nemo nimium beatus est; Quam ob rem tandem, inquit, non satisfacit? Duo Reges: constructio interrete. \n\nAliter enim nosmet ipsos nosse non possumus. Sed residamus, inquit, si placet. \n\n', 0, NULL, NULL),
(2, 'Durand', 'durand@la.fr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Memini me adesse P. Praeclare hoc quidem. Proclivi currit oratio. Occultum facinus esse potuerit, gaudebit; At, si voluptas esset bonum, desideraret. Duo Reges: constructio interrete. \n\nNemo igitur esse beatus potest. Sed fortuna fortis; Quis est tam dissimile homini. Praeclare hoc quidem. At multis malis affectus. Quae duo sunt, unum facit. \n\n', 0, NULL, NULL),
(3, 'Martin', 'martin@la.fr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Iam contemni non poteris. Si longus, levis. Duo Reges: constructio interrete. Non risu potius quam oratione eiciendum? Egone quaeris, inquit, quid sentiam? Nihil opus est exemplis hoc facere longius. \n\nQuid ergo attinet gloriose loqui, nisi constanter loquare? Cum praesertim illa perdiscere ludus esset. Quamquam te quidem video minime esse deterritum. Sed fortuna fortis; Faceres tu quidem, Torquate, haec omnia; Teneo, inquit, finem illi videri nihil dolere. \n\n', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_10_21_105844_create_roles_table', 1),
('2014_10_21_110325_create_foreign_keys', 1),
('2014_10_24_205441_create_contact_table', 1),
('2014_10_26_172107_create_posts_table', 1),
('2014_10_26_172631_create_tags_table', 1),
('2014_10_26_172904_create_post_tag_table', 1),
('2014_10_26_222018_create_comments_table', 1),
('2016_09_09_144828_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 3, 1),
(7, 3, 2),
(8, 3, 4);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `slug`, `summary`, `content`, `seen`, `active`, `user_id`) VALUES
(1, NULL, NULL, 'Post 1', 'post-1', '<img alt=\"\" src=\"/files/user2/mega-champignon.png\" style=\"float:left; height:128px; width:128px\" /><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Age sane, inquam. Sed ego in hoc resisto; Quid, de quo nulla dissensio est? Non est igitur voluptas bonum. Omnes enim iucundum motum, quo sensus hilaretur. Tu vero, inquam, ducas licet, si sequetur; Duo Reges: constructio interrete. </p>\n\n<p>Respondent extrema primis, media utrisque, omnia omnibus. At coluit ipse amicitias. At ille pellit, qui permulcet sensum voluptate. </p>\n\n', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facile est hoc cernere in primis puerorum aetatulis. Hoc etsi multimodis reprehendi potest, tamen accipio, quod dant. Ab his oratores, ab his imperatores ac rerum publicarum principes extiterunt. Quasi ego id curem, quid ille aiat aut neget. Idemque diviserunt naturam hominis in animum et corpus. Quare conare, quaeso. Nam ista vestra: Si gravis, brevis; Duo Reges: constructio interrete. </p>\n\n<p>Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Ergo adhuc, quantum equidem intellego, causa non videtur fuisse mutandi nominis. Plane idem, inquit, et maxima quidem, qua fieri nulla maior potest. Quod si ita se habeat, non possit beatam praestare vitam sapientia. </p>\n\n<pre>\n<code class=\"language-php\">protected function getUserByRecaller($recaller)\n{\n    if ($this-&gt;validRecaller($recaller) &amp;&amp; ! $this-&gt;tokenRetrievalAttempted)\n    {\n        $this-&gt;tokenRetrievalAttempted = true;\n\n        list($id, $token) = explode(\"|\", $recaller, 2);\n\n        $this-&gt;viaRemember = ! is_null($user = $this-&gt;provider-&gt;retrieveByToken($id, $token));\n\n        return $user;\n    }\n}</code></pre><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Esse enim quam vellet iniquus iustus poterat inpune. Ut optime, secundum naturam affectum esse possit. Non enim, si omnia non sequebatur, idcirco non erat ortus illinc. Quam illa ardentis amores excitaret sui! Cur tandem? Negabat igitur ullam esse artem, quae ipsa a se proficisceretur; </p>\n\n<p>Sed finge non solum callidum eum, qui aliquid improbe faciat, verum etiam praepotentem, ut M. Ergo omni animali illud, quod appetiti positum est in eo, quod naturae est accommodatum. Duo Reges: constructio interrete. Causa autem fuit huc veniendi ut quosdam hinc libros promerem. Non risu potius quam oratione eiciendum? Hoc ne statuam quidem dicturam pater aiebat, si loqui posset. </p>\n\n', 0, 1, 1),
(2, NULL, NULL, 'Post 2', 'post-2', '<img alt=\"\" src=\"/files/user2/goomba.png\" style=\"float:left; height:128px; width:128px\" /><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Qua ex cognitione facilior facta est investigatio rerum occultissimarum. Bestiarum vero nullum iudicium puto. Quod si ita sit, cur opera philosophiae sit danda nescio. Modo etiam paulum ad dexteram de via declinavi, ut ad Pericli sepulcrum accederem. Duo Reges: constructio interrete. Suam denique cuique naturam esse ad vivendum ducem. </p>\n\n<p>Cum id quoque, ut cupiebat, audivisset, evelli iussit eam, qua erat transfixus, hastam. Primum in nostrane potestate est, quid meminerimus? An hoc usque quaque, aliter in vita? Ut enim consuetudo loquitur, id solum dicitur honestum, quod est populari fama gloriosum. Sapiens autem semper beatus est et est aliquando in dolore; </p>\n\n', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sciret confestim esse moriendum eamque mortem ardentiore studio peteret, quam Epicurus voluptatem petendam putat. Quae quo sunt excelsiores, eo dant clariora indicia naturae. Ad eas enim res ab Epicuro praecepta dantur. Scaevola tribunus plebis ferret ad plebem vellentne de ea re quaeri. <a href=\'http://loripsum.net/\' target=\'_blank\'>Praeclarae mortes sunt imperatoriae;</a> Duo Reges: constructio interrete. Quare hoc videndum est, possitne nobis hoc ratio philosophorum dare. </p>\n\n<p>Quo modo autem optimum, si bonum praeterea nullum est? Facillimum id quidem est, inquam. A quibus propter discendi cupiditatem videmus ultimas terras esse peragratas. Omnis enim est natura diligens sui. At modo dixeras nihil in istis rebus esse, quod interesset. Cuius ad naturam apta ratio vera illa et summa lex a philosophis dicitur. Quem Tiberina descensio festo illo die tanto gaudio affecit, quanto L. At ille pellit, qui permulcet sensum voluptate. Hanc ergo intuens debet institutum illud quasi signum absolvere. </p>\n\n<p>Si quicquam extra virtutem habeatur in bonis. Neque solum ea communia, verum etiam paria esse dixerunt. Praetereo multos, in bis doctum hominem et suavem, Hieronymum, quem iam cur Peripateticum appellem nescio. Quae in controversiam veniunt, de iis, si placet, disseramus. Quicquid porro animo cernimus, id omne oritur a sensibus; Quoniam, si dis placet, ab Epicuro loqui discimus. Quare conare, quaeso. </p>\n\n<p>Videmusne ut pueri ne verberibus quidem a contemplandis rebus perquirendisque deterreantur? Utrum igitur tibi litteram videor an totas paginas commovere? Quid, quod res alia tota est? Hic quoque suus est de summoque bono dissentiens dici vere Peripateticus non potest. An tu me de L. Neque solum ea communia, verum etiam paria esse dixerunt. </p>\n\n<p>Atque haec coniunctio confusioque virtutum tamen a philosophis ratione quadam distinguitur. Intellegi quidem, ut propter aliam quampiam rem, verbi gratia propter voluptatem, nos amemus; <a href=\'http://loripsum.net/\' target=\'_blank\'>Nunc omni virtuti vitium contrario nomine opponitur.</a> Qui autem esse poteris, nisi te amor ipse ceperit? Quid de Platone aut de Democrito loquar? Illud mihi a te nimium festinanter dictum videtur, sapientis omnis esse semper beatos; Istic sum, inquit. Quia nec honesto quic quam honestius nec turpi turpius. Amicitiam autem adhibendam esse censent, quia sit ex eo genere, quae prosunt. Ita fit beatae vitae domina fortuna, quam Epicurus ait exiguam intervenire sapienti. </p>\n\n<p>Beatus sibi videtur esse moriens. Quod si ita se habeat, non possit beatam praestare vitam sapientia. </p>\n\n<p>Quamquam te quidem video minime esse deterritum. Tecum optime, deinde etiam cum mediocri amico. Sed plane dicit quod intellegit. Quando enim Socrates, qui parens philosophiae iure dici potest, quicquam tale fecit? Id et fieri posse et saepe esse factum et ad voluptates percipiendas maxime pertinere. Ita graviter et severe voluptatem secrevit a bono. Quo invento omnis ab eo quasi capite de summo bono et malo disputatio ducitur. Sed tamen enitar et, si minus multa mihi occurrent, non fugiam ista popularia. </p>\n\n<p>Color egregius, integra valitudo, summa gratia, vita denique conferta voluptatum omnium varietate. Confecta res esset. Cur deinde Metrodori liberos commendas? Atqui, inquam, Cato, si istud optinueris, traducas me ad te totum licebit. Non enim quaero quid verum, sed quid cuique dicendum sit. Estne, quaeso, inquam, sitienti in bibendo voluptas? Illud urgueam, non intellegere eum quid sibi dicendum sit, cum dolorem summum malum esse dixerit. Quae diligentissime contra Aristonem dicuntur a Chryippo. </p>\n\n', 0, 1, 2),
(3, NULL, NULL, 'Post 3', 'post-3', '<img alt=\"\" src=\"/files/user2/rouge-shell.png\" style=\"float:left; height:128px; width:128px\" /><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Summum ením bonum exposuit vacuitatem doloris; Quid ergo aliud intellegetur nisi uti ne quae pars naturae neglegatur? Quid nunc honeste dicit? Duo Reges: constructio interrete. Graecis hoc modicum est: Leonidas, Epaminondas, tres aliqui aut quattuor; </p>\n\n<p><a href=\'http://loripsum.net/\' target=\'_blank\'>Zenonis est, inquam, hoc Stoici.</a> Ratio enim nostra consentit, pugnat oratio. Dulce amarum, leve asperum, prope longe, stare movere, quadratum rotundum. Nulla profecto est, quin suam vim retineat a primo ad extremum. </p>\n\n', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Familiares nostros, credo, Sironem dicis et Philodemum, cum optimos viros, tum homines doctissimos. Eiuro, inquit adridens, iniquum, hac quidem de re; Erat enim Polemonis. Quod autem satis est, eo quicquid accessit, nimium est; Ergo illi intellegunt quid Epicurus dicat, ego non intellego? <a href=\'http://loripsum.net/\' target=\'_blank\'>Duo Reges: constructio interrete.</a> At eum nihili facit; </p>\n\n<p>Re mihi non aeque satisfacit, et quidem locis pluribus. Quid sequatur, quid repugnet, vident. Et quidem illud ipsum non nimium probo et tantum patior, philosophum loqui de cupiditatibus finiendis. <a href=\'http://loripsum.net/\' target=\'_blank\'>Id Sextilius factum negabat.</a> Etenim nec iustitia nec amicitia esse omnino poterunt, nisi ipsae per se expetuntur. Indicant pueri, in quibus ut in speculis natura cernitur. </p>\n\n<p>Callipho ad virtutem nihil adiunxit nisi voluptatem, Diodorus vacuitatem doloris. Itaque haec cum illis est dissensio, cum Peripateticis nulla sane. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Quid, si reviviscant Platonis illi et deinceps qui eorum auditores fuerunt, et tecum ita loquantur? Sed tamen enitar et, si minus multa mihi occurrent, non fugiam ista popularia. </p>\n\n<p><a href=\'http://loripsum.net/\' target=\'_blank\'>Philosophi autem in suis lectulis plerumque moriuntur.</a> Quam illa ardentis amores excitaret sui! Cur tandem? An vero displicuit ea, quae tributa est animi virtutibus tanta praestantia? Quem si tenueris, non modo meum Ciceronem, sed etiam me ipsum abducas licebit. <a href=\'http://loripsum.net/\' target=\'_blank\'>Scio enim esse quosdam, qui quavis lingua philosophari possint;</a> Sextilio Rufo, cum is rem ad amicos ita deferret, se esse heredem Q. </p>\n\n<p>Theophrastus mediocriterne delectat, cum tractat locos ab Aristotele ante tractatos? Magni enim aestimabat pecuniam non modo non contra leges, sed etiam legibus partam. Quonam, inquit, modo? Et quidem, inquit, vehementer errat; Hanc ergo intuens debet institutum illud quasi signum absolvere. Bona autem corporis huic sunt, quod posterius posui, similiora. Sed nimis multa. Expectoque quid ad id, quod quaerebam, respondeas. Certe nihil nisi quod possit ipsum propter se iure laudari. </p>\n\n<p>Bonum negas esse divitias, praeposìtum esse dicis? Nam aliquando posse recte fieri dicunt nulla expectata nec quaesita voluptate. Vitiosum est enim in dividendo partem in genere numerare. Multoque hoc melius nos veriusque quam Stoici. <a href=\'http://loripsum.net/\' target=\'_blank\'>Zenonis est, inquam, hoc Stoici.</a> Est tamen ea secundum naturam multoque nos ad se expetendam magis hortatur quam superiora omnia. Sed erat aequius Triarium aliquid de dissensione nostra iudicare. Itaque e contrario moderati aequabilesque habitus, affectiones ususque corporis apti esse ad naturam videntur. </p>\n\n<p>Animi enim quoque dolores percipiet omnibus partibus maiores quam corporis. Estne, quaeso, inquam, sitienti in bibendo voluptas? <a href=\'http://loripsum.net/\' target=\'_blank\'>Reguli reiciendam;</a> Non quam nostram quidem, inquit Pomponius iocans; Aut, Pylades cum sis, dices te esse Orestem, ut moriare pro amico? </p>\n\n<p>Ut optime, secundum naturam affectum esse possit. Quo studio Aristophanem putamus aetatem in litteris duxisse? Et harum quidem rerum facilis est et expedita distinctio. Cum autem in quo sapienter dicimus, id a primo rectissime dicitur. Non laboro, inquit, de nomine. Tu autem negas fortem esse quemquam posse, qui dolorem malum putet. Hoc dictum in una re latissime patet, ut in omnibus factis re, non teste moveamur. </p>\n\n', 0, 1, 2),
(4, NULL, NULL, 'Post 4', 'post-4', '<img alt=\"\" src=\"/files/user2/rouge-shyguy.png\" style=\"float:left; height:128px; width:128px\" /><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non enim quaero quid verum, sed quid cuique dicendum sit. Id mihi magnum videtur. Quis suae urbis conservatorem Codrum, quis Erechthei filias non maxime laudat? Duo Reges: constructio interrete. Prodest, inquit, mihi eo esse animo. Quia nec honesto quic quam honestius nec turpi turpius. Quis Aristidem non mortuum diligit? Hosne igitur laudas et hanc eorum, inquam, sententiam sequi nos censes oportere? Verba tu fingas et ea dicas, quae non sentias? </p>\n\n<p>Eadem nunc mea adversum te oratio est. Quid de Platone aut de Democrito loquar? Reguli reiciendam; <a href=\'http://loripsum.net/\' target=\'_blank\'>Pauca mutat vel plura sane;</a> Indicant pueri, in quibus ut in speculis natura cernitur. Bonum incolumis acies: misera caecitas. Aliter enim nosmet ipsos nosse non possumus. Si alia sentit, inquam, alia loquitur, numquam intellegam quid sentiat; Atque his de rebus et splendida est eorum et illustris oratio. </p>\n\n', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Potius inflammat, ut coercendi magis quam dedocendi esse videantur. Non quam nostram quidem, inquit Pomponius iocans; His singulis copiose responderi solet, sed quae perspicua sunt longa esse non debent. Duae sunt enim res quoque, ne tu verba solum putes. Theophrastus mediocriterne delectat, cum tractat locos ab Aristotele ante tractatos? Sed quanta sit alias, nunc tantum possitne esse tanta. Qui autem esse poteris, nisi te amor ipse ceperit? Sed mehercule pergrata mihi oratio tua. Duo Reges: constructio interrete. Homines optimi non intellegunt totam rationem everti, si ita res se habeat. </p>\n\n<p>Cum audissem Antiochum, Brute, ut solebam, cum M. Paulum, cum regem Persem captum adduceret, eodem flumine invectio? Nam si amitti vita beata potest, beata esse non potest. Et ille ridens: Video, inquit, quid agas; </p>\n\n<p>Quis contra in illa aetate pudorem, constantiam, etiamsi sua nihil intersit, non tamen diligat? Incommoda autem et commoda-ita enim estmata et dustmata appello-communia esse voluerunt, paria noluerunt. Quid, cum fictas fabulas, e quibus utilitas nulla elici potest, cum voluptate legimus? </p>\n\n<p>Cur igitur, inquam, res tam dissimiles eodem nomine appellas? Multoque hoc melius nos veriusque quam Stoici. Quod si ita sit, cur opera philosophiae sit danda nescio. An vero, inquit, quisquam potest probare, quod perceptfum, quod. Profectus in exilium Tubulus statim nec respondere ausus; <a href=\'http://loripsum.net/\' target=\'_blank\'>Praeteritis, inquit, gaudeo.</a> Item de contrariis, a quibus ad genera formasque generum venerunt. </p>\n\n<p>Et hercule-fatendum est enim, quod sentio -mirabilis est apud illos contextus rerum. Potius ergo illa dicantur: turpe esse, viri non esse debilitari dolore, frangi, succumbere. Qui est in parvis malis. Quamquam id quidem, infinitum est in hac urbe; Nam et complectitur verbis, quod vult, et dicit plane, quod intellegam; Nummus in Croesi divitiis obscuratur, pars est tamen divitiarum. <a href=\'http://loripsum.net/\' target=\'_blank\'>Praeclare hoc quidem.</a> Illud dico, ea, quae dicat, praeclare inter se cohaerere. Unum nescio, quo modo possit, si luxuriosus sit, finitas cupiditates habere. Sin dicit obscurari quaedam nec apparere, quia valde parva sint, nos quoque concedimus; </p>\n\n<p>Quid dubitas igitur mutare principia naturae? Odium autem et invidiam facile vitabis. Ne amores quidem sanctos a sapiente alienos esse arbitrantur. Nonne videmus quanta perturbatio rerum omnium consequatur, quanta confusio? </p>\n\n<p>Atque haec ita iustitiae propria sunt, ut sint virtutum reliquarum communia. Quaeque de virtutibus dicta sunt, quem ad modum eae semper voluptatibus inhaererent, eadem de amicitia dicenda sunt. Quo modo autem optimum, si bonum praeterea nullum est? Quod vestri non item. <a href=\'http://loripsum.net/\' target=\'_blank\'>Cur iustitia laudatur?</a> Tria genera cupiditatum, naturales et necessariae, naturales et non necessariae, nec naturales nec necessariae. Innumerabilia dici possunt in hanc sententiam, sed non necesse est. Id mihi magnum videtur. </p>\n\n<p>Restincta enim sitis stabilitatem voluptatis habet, inquit, illa autem voluptas ipsius restinctionis in motu est. Is ita vivebat, ut nulla tam exquisita posset inveniri voluptas, qua non abundaret. Cur deinde Metrodori liberos commendas? Sed utrum hortandus es nobis, Luci, inquit, an etiam tua sponte propensus es? Audeo dicere, inquit. Quis est tam dissimile homini. <a href=\'http://loripsum.net/\' target=\'_blank\'>Terram, mihi crede, ea lanx et maria deprimet.</a> Quae diligentissime contra Aristonem dicuntur a Chryippo. </p>\n\n', 0, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `roles`
--

INSERT INTO `roles` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', NULL, NULL),
(2, 'Redactor', 'redac', NULL, NULL),
(3, 'User', 'user', NULL, NULL),
(4, 'Administrator', 'admin', NULL, NULL),
(5, 'Redactor', 'redac', NULL, NULL),
(6, 'User', 'user', NULL, NULL),
(7, 'Administrator', 'admin', NULL, NULL),
(8, 'Redactor', 'redac', NULL, NULL),
(9, 'User', 'user', NULL, NULL),
(10, 'Administrator', 'admin', NULL, NULL),
(11, 'Redactor', 'redac', NULL, NULL),
(12, 'User', 'user', NULL, NULL),
(13, 'Administrator', 'admin', NULL, NULL),
(14, 'Redactor', 'redac', NULL, NULL),
(15, 'User', 'user', NULL, NULL),
(16, 'Administrator', 'admin', NULL, NULL),
(17, 'Redactor', 'redac', NULL, NULL),
(18, 'User', 'user', NULL, NULL),
(19, 'Administrator', 'admin', NULL, NULL),
(20, 'Redactor', 'redac', NULL, NULL),
(21, 'User', 'user', NULL, NULL),
(22, 'Administrator', 'admin', NULL, NULL),
(23, 'Redactor', 'redac', NULL, NULL),
(24, 'User', 'user', NULL, NULL),
(25, 'Administrator', 'admin', NULL, NULL),
(26, 'Redactor', 'redac', NULL, NULL),
(27, 'User', 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tag` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tags`
--

INSERT INTO `tags` (`id`, `created_at`, `updated_at`, `tag`) VALUES
(1, NULL, NULL, 'Tag1'),
(2, NULL, NULL, 'Tag2'),
(3, NULL, NULL, 'Tag3'),
(4, NULL, NULL, 'Tag4');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `valid` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role_id`, `seen`, `valid`, `confirmed`, `confirmation_code`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'GreatAdmin', 'admin@la.fr', '$2y$10$zQ/aci1YQZVm/2MY311UDusurW1xVrHMQX5lsp8WQwzchsfrlVLcS', 1, 1, 1, 1, NULL, NULL, NULL, NULL),
(2, 'GreatRedactor', 'redac@la.fr', '$2y$10$L9wDKbFm95eIsl7lZRaOl.iZjvQ3a.WeMXFQeJJPIEDpeXiiId9Iq', 2, 1, 1, 1, NULL, NULL, NULL, NULL),
(3, 'Walker', 'walker@la.fr', '$2y$10$1rDdsVdeV0x2ynbbCWGHo.NNu7QIY3Te0TT1JrTuty0EhpXMLj5re', 3, 0, 0, 1, NULL, NULL, NULL, NULL),
(4, 'Slacker', 'slacker@la.fr', '$2y$10$92xN4rcNiYSm80RkRZLHc.uKBhj0ZA2kzlLu1vQ1cRZgJlGtfdSVi', 3, 0, 0, 1, NULL, NULL, NULL, NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Index pour la table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_unique` (`tag`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
--
-- Base de données :  `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Contenu de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"control\",\"table\":\"system_users\"},{\"db\":\"cad\",\"table\":\"system_users\"},{\"db\":\"cad\",\"table\":\"users\"},{\"db\":\"cad\",\"table\":\"roles\"},{\"db\":\"cad\",\"table\":\"fonctions\"},{\"db\":\"cad\",\"table\":\"fonctionalites\"},{\"db\":\"cad\",\"table\":\"documents\"},{\"db\":\"cad\",\"table\":\"enseignants\"},{\"db\":\"hopital\",\"table\":\"personne\"},{\"db\":\"hopital\",\"table\":\"soins\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Contenu de la table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'docmanager', 'eutilisateur', '{\"sorted_col\":\"`eutilisateur`.`util_id`  ASC\"}', '2018-05-01 15:04:20');

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Contenu de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-04-15 03:13:53', '{\"lang\":\"fr\",\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables exportées
--

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Base de données :  `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
