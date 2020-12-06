-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 06 déc. 2020 à 05:08
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `watson-3dw18-g3`
--
CREATE DATABASE IF NOT EXISTS `watson-3dw18-g3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `watson-3dw18-g3`;

-- --------------------------------------------------------

--
-- Structure de la table `tl_liens`
--

CREATE TABLE `tl_liens` (
  `lien_id` int(11) NOT NULL,
  `lien_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lien_titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lien_desc` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_liens`
--

INSERT INTO `tl_liens` (`lien_id`, `lien_url`, `lien_titre`, `lien_desc`, `user_id`) VALUES
(1, 'https://cvtic.unilim.fr/', 'Campus Virtuel TIC', 'Site internet du CvTIC.', 1),
(2, 'https://duckduckgo.com/', 'Duck Duck Go', 'Le moteur de recherche qui ne trace pas ses utilisateurs.', 1),
(3, 'https://framasoft.org/', 'Framasoft', 'Un réseau dédié à la promotion du « libre » en général et du logiciel libre en particulier.', 1),
(4, 'https://www.php.net/', 'PHP.net', 'Documentation générale sur PHP et ses multiples versions', 1),
(5, 'https://www.blogdumoderateur.com/', 'Blog du Modérateur', 'Actualité digitale', 1),
(6, 'https://openclassrooms.com/fr/', 'OpenClassrooms', 'Cours, MOOC, tutoriels sur le numérique (développement, imagerie, gestion de projet, marketing)', 1),
(7, 'https://arstechnica.com/', 'Ars Tecnica', 'Actualité technologie, numérique, et scientifique', 1),
(8, 'https://keycode.info/', 'KeyCodes JavaScript', 'Site permettant de connaître le code d\'événement assigné à une touche du clavier.', 1),
(9, 'https://css-tricks.com/snippets/css/a-guide-to-flexbox/', 'CSS Tricks - Flexbox', 'Guide complet pour apprendre et maîtriser l\'utilisation des Flexboxs', 1),
(10, 'https://fr.indeed.com/', 'Indeed', 'Recherche d\'emploi', 1),
(11, 'https://www.gloomaps.com', 'Gloomaps', 'Pour réaliser des sitemaps, des arborescences, construire des menus de site', 1),
(12, 'https://coolors.co', 'Coolors', 'Pour créer des palettes de couleurs qui s\'associent bien.', 1),
(13, 'https://picsum.photos/', 'Lorem Picsum', 'Permet d\'obtenir des images à la dimension souhaitée à l\'aide d\'une API pour servir de placeholder', 1),
(14, 'https://stackoverflow.com/', 'Stack Overflow', 'Espace d\'échange, de discussion, d\'aide et d\'apprentissage pour le développeurs', 1),
(15, 'https://getemoji.com/', 'Get Emoji', 'Copier un emoji et voir ses versions selon les OS', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tl_tags`
--

CREATE TABLE `tl_tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_tags`
--

INSERT INTO `tl_tags` (`tag_id`, `tag_name`) VALUES
(1, 'fac'),
(2, 'vieprivee'),
(3, 'opensource'),
(4, 'apprendre'),
(5, 'php'),
(6, 'développement'),
(7, 'back'),
(8, 'actualite'),
(9, 'digital'),
(10, 'blog'),
(11, 'cours'),
(12, 'mooc'),
(13, 'tutoriels'),
(14, 'sciences'),
(15, 'numerique'),
(16, 'javascript'),
(17, 'keycode'),
(18, 'front'),
(19, 'css'),
(20, 'flexbox'),
(21, 'emploi'),
(22, 'job'),
(23, 'sitemap'),
(24, 'arborescence'),
(25, 'couleur'),
(26, 'images'),
(27, 'placeholder'),
(28, 'aide'),
(29, 'discussion'),
(30, 'apprentissage'),
(31, 'emoji'),
(32, 'smiley');

-- --------------------------------------------------------

--
-- Structure de la table `tl_tags_liens`
--

CREATE TABLE `tl_tags_liens` (
  `tag_id` int(11) NOT NULL,
  `lien_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_tags_liens`
--

INSERT INTO `tl_tags_liens` (`tag_id`, `lien_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(3, 3),
(4, 1),
(4, 3),
(5, 4),
(6, 4),
(7, 4),
(8, 5),
(9, 5),
(10, 5),
(11, 6),
(12, 6),
(13, 6),
(8, 7),
(14, 7),
(15, 7),
(16, 8),
(17, 8),
(18, 8),
(19, 9),
(20, 9),
(18, 9),
(11, 9),
(21, 10),
(22, 10),
(23, 11),
(24, 11),
(18, 12),
(25, 12),
(19, 12),
(26, 13),
(27, 13),
(18, 13),
(28, 14),
(29, 14),
(30, 14),
(31, 15),
(26, 15),
(32, 15);

-- --------------------------------------------------------

--
-- Structure de la table `tl_users`
--

CREATE TABLE `tl_users` (
  `usr_id` int(11) NOT NULL,
  `usr_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usr_password` varchar(88) COLLATE utf8_unicode_ci NOT NULL,
  `usr_salt` varchar(23) COLLATE utf8_unicode_ci NOT NULL,
  `usr_role` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ROLE_ADMIN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_users`
--

INSERT INTO `tl_users` (`usr_id`, `usr_name`, `usr_password`, `usr_salt`, `usr_role`) VALUES
(1, 'admin', 'LsJKppRTEPz4uKrkhScOE6HBSvHuaIcFbAX9FWC7h/f5HffX4TBcFt7p8M0hqvGzFXL+JV8TzEYePoimaosfMQ==', '>=28!7NLw!S37zLjs7Uu[nC', 'ROLE_ADMIN');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tl_liens`
--
ALTER TABLE `tl_liens`
  ADD PRIMARY KEY (`lien_id`);

--
-- Index pour la table `tl_tags`
--
ALTER TABLE `tl_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Index pour la table `tl_users`
--
ALTER TABLE `tl_users`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tl_liens`
--
ALTER TABLE `tl_liens`
  MODIFY `lien_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `tl_tags`
--
ALTER TABLE `tl_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `tl_users`
--
ALTER TABLE `tl_users`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


GRANT ALL PRIVILEGES ON *.* TO 'watson-3dw18-g3'@'%' IDENTIFIED BY PASSWORD '*437BCFE6678649D15AA3271DAFE66571E4C0EC9D' WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON `watson-3dw18-g3`.* TO 'watson-3dw18-g3'@'%';