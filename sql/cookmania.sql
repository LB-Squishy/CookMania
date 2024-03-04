-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 04 mars 2024 à 14:46
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cookmania`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `review` int(11) NOT NULL DEFAULT 3
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `recipe_id`, `comment`, `created_at`, `review`) VALUES
(9, 2, 14, '« Servir en accompagnement d\'une quiche ou d\'une tourte. Excellent repas du soir. Vous pouvez utiliser des croûtons déjà prêts. La sauce peut être préparée 6 heures à l\'avance et réservée au frais. »', '2024-03-04 14:41:41', 4),
(10, 2, 15, 'Recette simple et efficace validé par ma petite famille !', '2024-03-04 14:44:14', 5);

-- --------------------------------------------------------

--
-- Structure de la table `recipes`
--

CREATE TABLE `recipes` (
  `recipe_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `recipe` text NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `author` varchar(512) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `title`, `recipe`, `is_enabled`, `author`) VALUES
(15, 'Quiche au thon', 'ÉTAPE 1\r\nPlacer la pâte dans un moule et la piquer avec une fourchette.\r\n\r\nÉTAPE 2\r\nBadigeonner le fond avec de la moutarde.\r\n\r\nÉTAPE 3\r\nÉcraser le thon puis le placer sur la pâte.\r\n\r\nÉTAPE 4\r\nCouper les tomates en tranches et les placer sur le thon.\r\n\r\nÉTAPE 5\r\nMélanger les œufs, la crème et le lait (et du gruyère selon les goûts), avec sel et poivre, puis verser sur la pâte (ça doit recouvrir le thon et les tomates).\r\n\r\nÉTAPE 6\r\nRecouvrir le tout de gruyère.\r\n\r\nÉTAPE 7\r\nCuire au four à 200°C pendant 20 à 25 min.', 1, 'pierre.dufour@exemple.com'),
(14, 'Salade César', 'ÉTAPE 1\r\nFaites dorer le pain, coupé en cubes, 3 min dans un peu d\'huile.\r\n\r\nÉTAPE 2\r\nDéchirez les feuilles de romaine dans un saladier, et ajoutez les croûtons préalablement épongés dans du papier absorbant.\r\n\r\nÉTAPE 3\r\nPréparez la sauce : Faites cuire l\'œuf 1 min 30 dans l\'eau bouillante, et rafraîchissez le.\r\n\r\nÉTAPE 4\r\nCassez le dans le bol d\'un mixeur et mixez, avec tous les autres ingrédients; rectifiez l\'assaisonnement et incorporez à la salade.\r\n\r\nÉTAPE 5\r\nDécorez de copeaux de parmesan, et servez.', 1, 'pierre.dufour@exemple.com');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(64) NOT NULL,
  `email` varchar(512) NOT NULL,
  `password` varchar(512) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `email`, `password`, `age`) VALUES
(2, 'Pierre Dufour', 'pierre.dufour@exemple.com', 'MiamMiam', 34);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Index pour la table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`recipe_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
