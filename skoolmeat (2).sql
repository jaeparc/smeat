-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Sam 13 Avril 2019 à 11:44
-- Version du serveur :  10.1.38-MariaDB-0+deb9u1
-- Version de PHP :  7.0.33-0+deb9u6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `skoolmeat`
--

-- --------------------------------------------------------

--
-- Structure de la table `friendsys`
--

CREATE TABLE `friendsys` (
  `id_user` int(11) NOT NULL,
  `id_friend` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `friendsys`
--

INSERT INTO `friendsys` (`id_user`, `id_friend`, `state`) VALUES
(1, 2, 1),
(1, 3, 0),
(1, 4, 1),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(20) NOT NULL,
  `nom` varchar(11) NOT NULL,
  `prenom` varchar(11) NOT NULL,
  `age` varchar(11) NOT NULL,
  `mail` varchar(40) CHARACTER SET utf8 NOT NULL,
  `password` varchar(20) NOT NULL,
  `bio` varchar(280) CHARACTER SET utf8 NOT NULL,
  `rights` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id_user`, `nom`, `prenom`, `age`, `mail`, `password`, `bio`, `rights`) VALUES
(1, 'Garnon', 'Theo', '18', 'tgarnon45@gmail.com', 'Theo2001', 'Je suis une merde', 'admin'),
(2, 'Lecouflet', 'Alexis', '19', 'alecouflet@la-providence.net', 'alexis', '', 'admin'),
(3, 'Fresi', 'Mattei', '18', 'mfresi@la-providence.net', 'mattei', 'Je suis en BTS SN1', 'admin'),
(4, 'dechir', 'mathys', '17', 'dechirmathys@la-providence.net', '123', '', ''),
(5, 'Garcia', 'Flo', '21', 'fgarcia@la-providence.net', '123', 'Salut je m\'appelle Florian j\'aime les champotes avec le petit Mathis', ''),
(9, 'Clermont', 'Mathis', '19', 'mclermont@la-providence.net', 'mathis', 'J\'suis pas ici pour bosser si tu vois ce que je veux die ;)))))', 'admin');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
