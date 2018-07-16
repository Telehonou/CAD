-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Sam 14 Juillet 2018 à 14:06
-- Version du serveur :  10.1.21-MariaDB
-- Version de PHP :  7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cads`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonces`
--

CREATE TABLE `annonces` (
  `idannonce` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` varchar(255) NOT NULL,
  `fichier` varchar(255) NOT NULL,
  `datecreation` text NOT NULL,
  `dateupdate` text NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `annonces`
--

INSERT INTO `annonces` (`idannonce`, `titre`, `contenu`, `fichier`, `datecreation`, `dateupdate`, `userid`) VALUES
(4, 'conseil administratif', 'Annonce/upsh.pdf', '', '03/Jul/2018', '03/Jul/2018', 36),
(5, 'LIR 2018 ratrapage', 'le ratrapage est prÃ©vu pour le 14 et 15 juillet 2018', 'Annonce/IMG_20170525_110107_1.jpg', '08/07/2018 Ã  17H35min', '08/07/2018 Ã  17H35min', 26);

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE `auteurs` (
  `id` int(10) UNSIGNED NOT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `auteurs`
--

INSERT INTO `auteurs` (`id`, `auteur`) VALUES
(1, 'olivier'),
(2, 'Zengue'),
(3, 'jireh'),
(4, 'oli'),
(5, 'jdfh'),
(6, 'ol');

-- --------------------------------------------------------

--
-- Structure de la table `auteur_docs`
--

CREATE TABLE `auteur_docs` (
  `id` int(11) NOT NULL,
  `document` int(11) NOT NULL,
  `autors` int(11) NOT NULL
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
(2, 'Rapports de stage', 'Cette catÃ©gorie contient uniquement les rapports de confÃ©rence'),
(3, 'MÃ©moire', 'Contient uniquement les mÃ©moires'),
(4, 'Livres ouverts au public', 'Contient uniquement les livres'),
(5, 'Supports de cour', 'Cette catÃ©gorie contient uniquement les supports de cours par dÃ©partement'),
(6, 'TDs et Ã©preuve', 'Cette catÃ©gorie contient uniquement les travaux diriger et des Ã©preuves  par dÃ©partement'),
(8, 'ThÃ¨ses de doctorat Ph.D', 'Cette catÃ©gorie ne contient que des thÃ¨ses de doctorat'),
(9, 'Rapports  de confÃ©rence', 'Cette catÃ©gorie ne contient que des rapports de stages'),
(11, 'Projet', 'cette catÃ©gorie ne contient que les mÃ©moires de fin d\'ï¿½tude (licence)');

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
(1, 'GI', 'GÃ©nie informatiques', NULL, NULL),
(3, 'GTR', 'GÃ©nie TÃ©lÃ©com et RÃ©seaux', NULL, NULL),
(4, 'MIP', 'MAINTENANCE INDUSTRIELLE ET PRODUCTIQUE', NULL, NULL),
(5, 'GMI', 'GENIE MECANIQUE', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `docsauteurs`
--

CREATE TABLE `docsauteurs` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_doc` int(11) NOT NULL,
  `id_auteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id_doc` int(10) UNSIGNED NOT NULL,
  `titre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `objectif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percen_realisation` int(11) NOT NULL,
  `observation_jury` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perspective_amelioration` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approuver_par` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_page` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `departement_id` int(11) NOT NULL,
  `taux_plagiat` double NOT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_dir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `documents`
--

INSERT INTO `documents` (`id_doc`, `titre`, `auteur`, `description`, `user_id`, `objectif`, `percen_realisation`, `observation_jury`, `perspective_amelioration`, `approuver_par`, `nombre_page`, `categorie_id`, `departement_id`, `taux_plagiat`, `created_at`, `updated_at`, `doc_dir`) VALUES
(26, 'Rattrapage_RO_LicenceIR_2017.pdf', 'Dr TALLA FOTSING Bernard', 'RAS', '26', '', 0, '', '', '', 1, 6, 0, 0, '11-07-2018 19:59:51', '11-07-2018 19:59:51', 'interface/uploads/6/Rattrapage_RO_LicenceIR_2017.pdf'),
(27, 'Rattrapage_RO_LicenceIR_2016.pdf', 'Dr TALLA FOTSING Bernard', 'RAS', '26', '', 0, '', '', '', 2, 6, 0, 0, '11-07-2018 20:04:47', '11-07-2018 20:04:47', 'interface/uploads/6/Rattrapage_RO_LicenceIR_2016.pdf'),
(28, 'Examen_RO_LicenceIR_2014.pdf', 'Dr TALLA FOTSING Bernard', 'RAS', '26', '', 0, '', '', '', 1, 6, 0, 0, '11-07-2018 20:08:06', '11-07-2018 20:08:06', 'interface/uploads/6/Examen_RO_LicenceIR_2014.pdf'),
(29, 'ExamenROLicenceIR_2013.pdf', 'Dr TALLA FOTSING Bernard', 'RAS', '26', '', 0, '', '', '', 1, 6, 0, 0, '11-07-2018 20:10:18', '11-07-2018 20:10:18', 'interface/uploads/6/ExamenROLicenceIR_2013.pdf'),
(62, 'Chapitre_1_RO.pdf', 'Dr TALLA FOTSING Bernard', '', '26', '', 0, '', '', '', 24, 5, 0, 0, '12-07-2018 02:12:08', '12-07-2018 02:12:08', 'interface/uploads/5/Chapitre_1_RO.pdf'),
(63, 'Chapitre_2_RO.pdf', 'Dr TALLA FOTSING Bernard', 'RAS', '26', '', 0, '', '', '', 18, 5, 0, 0, '12-07-2018 02:21:24', '12-07-2018 02:21:24', 'interface/uploads/5/Chapitre_2_RO.pdf'),
(64, 'Chapitre_3_RO.pdf', 'Dr TALLA FOTSING Bernard', '', '26', '', 0, '', '', '', 5, 5, 0, 0, '12-07-2018 02:22:18', '12-07-2018 02:22:18', 'interface/uploads/5/Chapitre_3_RO.pdf'),
(65, 'Chapitre_4_RO.pdf', 'Dr TALLA FOTSING Bernard', 'RAS', '26', '', 0, '', '', '', 13, 5, 0, 0, '12-07-2018 02:51:17', '12-07-2018 02:51:17', 'interface/uploads/5/Chapitre_4_RO.pdf'),
(66, 'coursApplicationsrÃ©parties.pdf', 'M. DJONGO', '', '26', '', 0, '', '', '', 208, 5, 0, 0, '12-07-2018 02:53:15', '12-07-2018 02:53:15', 'interface/uploads/5/coursApplicationsrÃ©parties.pdf'),
(67, 'Centre d\'accÃ¨s Ã  la documentation', 'TELEHONOU DONFACK Olivier Junior', 'RAS', '26', 'DÃ©mocratiser l\'accÃ¨s Ã  la documentation', 89, 'TB', 'RAS', 'Dr TALLA Narcisse, Dr TALLA FOTSING Bernard', 60, 11, 1, 0, '12-07-2018 03:02:07', '12-07-2018 03:02:07', 'interface/uploads/11/RAPPORT_CAD.pdf'),
(68, 'Environnement linux', 'M. DJONGO', 'RAS', '26', '', 0, '', '', '', 57, 5, 0, 0, '12-07-2018 03:09:40', '12-07-2018 03:09:40', 'interface/uploads/5/CORBA_Cours.pdf');

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
-- Structure de la table `lastid`
--

CREATE TABLE `lastid` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `lastid`
--

INSERT INTO `lastid` (`id`, `nom`, `prenom`, `email`) VALUES
(1, 'junior', 'telehonou', 'junoli@mail.com'),
(2, 'junior', 'telehonou', 'junoli@mail.com'),
(3, 'junior', 'telehonou', 'junoli@mail.com'),
(4, 'junior', 'telehonou', 'junoli@mail.com'),
(5, 'junior', 'telehonou', 'junoli@mail.com'),
(6, 'junior', 'telehonou', 'junoli@mail.com'),
(7, 'junior', 'telehonou', 'junoli@mail.com'),
(8, 'junior', 'telehonou', 'junoli@mail.com'),
(9, 'junior', 'telehonou', 'junoli@mail.com'),
(10, 'junior', 'telehonou', 'junoli@mail.com');

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
(7, '2018_04_25_191105_create_urls_table', 3),
(8, '2018_05_15_114943_create_auteurs_table', 4),
(9, '2018_05_15_115218_create_docsauteurs_table', 4),
(10, '2018_05_15_120847_create_documents_table', 5);

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

CREATE TABLE `modules` (
  `idm` int(11) NOT NULL,
  `mod_modulegroupcode` varchar(25) NOT NULL,
  `mod_modulegroupname` varchar(50) NOT NULL,
  `mod_modulecode` varchar(25) NOT NULL,
  `mod_modulename` varchar(50) NOT NULL,
  `mod_modulegrouporder` int(3) NOT NULL,
  `mod_moduleorder` int(3) NOT NULL,
  `mod_modulepagename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `modules`
--

INSERT INTO `modules` (`idm`, `mod_modulegroupcode`, `mod_modulegroupname`, `mod_modulecode`, `mod_modulename`, `mod_modulegrouporder`, `mod_moduleorder`, `mod_modulepagename`) VALUES
(1, 'GEST', 'Gestion', 'CAT', 'Catégories', 2, 2, 'dashboard.php?q=categorie/categorie'),
(2, 'GEST', 'Gestion', 'DOC', 'Documents', 2, 1, 'dashboard.php?q=document/document'),
(3, 'GEST', 'Gestion', 'DPT', 'Departement', 2, 4, 'dashboard.php?q=departement/departement'),
(4, 'GEST', 'Gestion', 'MOD', 'Modules', 2, 5, 'dashboard.php?q=Module/module'),
(5, 'GEST', 'Gestion', 'ROL', 'Rôles', 2, 6, 'dashboard.php?q=Role/role'),
(6, 'GEST', 'Gestion', 'USER', 'Utilisateur', 2, 3, 'dashboard.php?q=user/user'),
(7, 'PLAG', 'Plagiat', 'TEST', 'En ligne', 2, 1, 'Plagiarism-Checker-master'),
(9, 'PLAG', 'Plagiat', 'TEST1', 'En local', 2, 2, 'dashboard.php?q=plagiat/plagiat'),
(10, 'ANO', 'Actualité', 'ANA', 'annonces', 1, 2, 'dashboard.php?q=annonce/annonce');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_rolecode` varchar(50) NOT NULL,
  `role_rolename` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `roles`
--

INSERT INTO `roles` (`id`, `role_rolecode`, `role_rolename`) VALUES
(1, 'ADMIN', 'Administrateur'),
(2, 'ENSEG', 'Enseignant'),
(3, 'SUPERADMIN', 'Super Admin');

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
('ENSEG', 'DOC', 'yes', 'yes', 'no', 'yes'),
('ENSEG', 'USER', 'no', 'no', 'no', 'no'),
('ENSEG', 'CAT', 'no', 'no', 'no', 'no'),
('ENSEG', 'DPT', 'no', 'no', 'no', 'no'),
('ENSEG', 'MOD', 'no', 'no', 'no', 'no'),
('ENSEG', 'TEST', 'yes', 'no', 'no', 'yes'),
('SUPERADMIN', 'TEST1', 'yes', 'yes', 'yes', 'yes'),
('ADMIN', 'TEST1', 'yes', 'no', 'no', 'yes'),
('ENSEG', 'TEST1', 'yes', 'no', 'no', 'yes'),
('ADMIN', 'ANA', 'yes', 'yes', 'yes', 'yes'),
('ENSEG', 'ANA', 'no', 'no', 'no', 'yes'),
('SUPERADMIN', 'ANA', 'yes', 'yes', 'yes', 'yes');

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
  `u_userid` int(11) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `u_username` varchar(100) NOT NULL,
  `u_password` varchar(255) NOT NULL,
  `u_rolecode` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` int(15) NOT NULL,
  `created_at` varchar(30) NOT NULL,
  `updated_at` varchar(30) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`u_userid`, `u_name`, `u_username`, `u_password`, `u_rolecode`, `email`, `telephone`, `created_at`, `updated_at`, `avatar`) VALUES
(26, 'TELHONOU DONFACK Olivier junior', 'admin', 'admin', 'SUPERADMIN', 'oliviertelehonou@gmail.com', 653360232, '01-06-2018 20:31:24', '01-06-2018 20:31:24', 'interface/user/uploads/908905.jpg'),
(35, 'TCHUENMEGNE TAYOU Kevine Zita', 'kevine', 'kevine', 'ENSEG', 'Ktayou@gmail.com', 698347259, '04-06-2018 07:12:53', '04-06-2018 07:12:53', 'interface/user/uploads/873997.jpg'),
(36, 'TAFOTIE Jireh', 'jireh', 'jireh', 'ADMIN', 'jirh@dgdg.com', 2147483647, '04-06-2018 08:32:03', '04-06-2018 08:32:03', 'interface/user/uploads/473549.jpg'),
(37, 'Dr TALLA Narcisse', 'Narcisse', '123', 'SUPERADMIN', 'bfotsing@gmail.com', 653360232, '11-07-2018 22:25:18', '11-07-2018 22:25:18', 'interface/user/uploads/908875.jpg');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `annonces`
--
ALTER TABLE `annonces`
  ADD PRIMARY KEY (`idannonce`);

--
-- Index pour la table `auteurs`
--
ALTER TABLE `auteurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `auteur_docs`
--
ALTER TABLE `auteur_docs`
  ADD PRIMARY KEY (`id`);

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
-- Index pour la table `docsauteurs`
--
ALTER TABLE `docsauteurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id_doc`);

--
-- Index pour la table `fonctionalites`
--
ALTER TABLE `fonctionalites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lastid`
--
ALTER TABLE `lastid`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`idm`),
  ADD UNIQUE KEY `mod_modulecode` (`mod_modulecode`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `urls`
--
ALTER TABLE `urls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_userid`),
  ADD UNIQUE KEY `u_name` (`u_name`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `annonces`
--
ALTER TABLE `annonces`
  MODIFY `idannonce` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `auteurs`
--
ALTER TABLE `auteurs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `auteur_docs`
--
ALTER TABLE `auteur_docs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_cat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `departements`
--
ALTER TABLE `departements`
  MODIFY `id_dpt` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `docsauteurs`
--
ALTER TABLE `docsauteurs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id_doc` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT pour la table `fonctionalites`
--
ALTER TABLE `fonctionalites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `lastid`
--
ALTER TABLE `lastid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `modules`
--
ALTER TABLE `modules`
  MODIFY `idm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `urls`
--
ALTER TABLE `urls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `u_userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
