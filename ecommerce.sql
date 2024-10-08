-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 04 sep. 2024 à 15:03
-- Version du serveur : 10.4.6-MariaDB
-- Version de PHP : 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `TAB_ecommerce`
--

CREATE TABLE `TAB_ecommerce` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(15) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `numero` int(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `TAB_ecommerce`
--

INSERT INTO `TAB_ecommerce` (`id`, `nom`, `prenom`, `email`, `numero`, `date`) VALUES
(1, 'NIKIEMA', 'Serges', 'sergesnikiema62@gmail.com', 74102771, '2024-09-01 09:01:07'),
(4, 'NIKIEMA', 'Sani', 'jericoprog74@gmail.com', 6159773, '2024-09-01 09:12:28');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `TAB_ecommerce`
--
ALTER TABLE `TAB_ecommerce`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `TAB_ecommerce`
--
ALTER TABLE `TAB_ecommerce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
