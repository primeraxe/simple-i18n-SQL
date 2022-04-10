-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 10 avr. 2022 à 18:53
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `helios`
--

-- --------------------------------------------------------

--
-- Structure de la table `i18n`
--

CREATE TABLE `i18n` (
  `I18N_ID` int(11) NOT NULL,
  `I18N_term` text NOT NULL,
  `I18N_I18CAT_ID` int(11) NOT NULL,
  `I18N_update_at` int(255) DEFAULT NULL,
  `I18N_create_at` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `i18n`
--

INSERT INTO `i18n` (`I18N_ID`, `I18N_term`, `I18N_I18CAT_ID`, `I18N_update_at`, `I18N_create_at`) VALUES
(1, 'somethingother', 1, NULL, 1648635515),
(2, 'edit', 2, NULL, 1648635515),
(3, 'addPGP', 2, NULL, 1648635515),
(4, 'greeting', 1, NULL, 1648635515),
(5, 'myAccount', 2, NULL, 1649063955),
(6, 'Dashboard', 3, NULL, 1649072999),
(7, 'LogOut', 3, NULL, 1649073340),
(8, 'BecomeVendor', 3, NULL, 1649074493),
(9, 'Mydisputes', 3, NULL, 1649074924),
(10, 'Search', 3, NULL, 1649077175),
(11, 'Category', 3, NULL, 1649077509),
(12, 'ALLPRODUCTS', 3, 1649077773, 1649077644),
(13, 'Balance', 3, NULL, 1649077815),
(14, 'Customerorders', 3, NULL, 1649078319),
(15, 'Myorders', 3, NULL, 1649078400),
(16, 'Blog', 3, NULL, 1649078426),
(17, 'MyCart', 4, NULL, 1649078536),
(19, 'NoProductsCart', 4, NULL, 1649078656),
(20, 'All', 1, NULL, 1649079169),
(21, 'Ship', 4, NULL, 1649079192),
(22, 'From', 1, NULL, 1649079218),
(23, 'To', 1, NULL, 1649079226),
(24, 'Price', 4, NULL, 1649079265),
(25, 'Minprice', 4, NULL, 1649079642),
(26, 'Maxprice', 1, NULL, 1649079679),
(27, 'TOPPRODUCTS', 4, NULL, 1649079723),
(28, 'Myaccount', 2, NULL, 1649086858),
(29, 'Wallet', 2, NULL, 1649086926),
(30, 'Mypurchases', 2, NULL, 1649086953),
(31, 'Mydisputes', 2, NULL, 1649086972),
(32, 'Mytickets', 2, NULL, 1649086991),
(33, 'noordersyet', 5, 1649138088, 1649137661);

-- --------------------------------------------------------

--
-- Structure de la table `i18n_category`
--

CREATE TABLE `i18n_category` (
  `I18CAT_ID` int(11) NOT NULL,
  `I18CAT_name` varchar(100) NOT NULL,
  `create_at` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `i18n_category`
--

INSERT INTO `i18n_category` (`I18CAT_ID`, `I18CAT_name`, `create_at`) VALUES
(1, 'misc', 1648648418),
(2, 'Account', 1648648418),
(3, 'header', 1649072635),
(4, 'Product', 1649078485),
(5, 'Order', 1649137460);

-- --------------------------------------------------------

--
-- Structure de la table `i18n_language`
--

CREATE TABLE `i18n_language` (
  `I18LAN_ID` int(11) NOT NULL,
  `I18LAN_language` varchar(255) NOT NULL,
  `I18LAN_short` varchar(10) NOT NULL,
  `I18LAN_update_at` int(255) DEFAULT NULL,
  `I18LAN_create_at` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `i18n_language`
--

INSERT INTO `i18n_language` (`I18LAN_ID`, `I18LAN_language`, `I18LAN_short`, `I18LAN_update_at`, `I18LAN_create_at`) VALUES
(1, 'English', 'en', NULL, 1648635415),
(2, 'French', 'fr', NULL, 1648635423);

-- --------------------------------------------------------

--
-- Structure de la table `i18n_translate`
--

CREATE TABLE `i18n_translate` (
  `i18TRA_ID` int(255) NOT NULL,
  `i18TRA_I18LAN_ID` int(255) NOT NULL,
  `i18TRA_I18N_ID` int(255) NOT NULL,
  `i18TRA_term` text NOT NULL,
  `i18TRA_update_at` int(255) DEFAULT NULL,
  `i18TRA_create_at` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `i18n_translate`
--

INSERT INTO `i18n_translate` (`i18TRA_ID`, `i18TRA_I18LAN_ID`, `i18TRA_I18N_ID`, `i18TRA_term`, `i18TRA_update_at`, `i18TRA_create_at`) VALUES
(1, 1, 1, 'Something other... !!', 1649066843, 1648635777),
(2, 1, 2, 'edit', NULL, 1648635777),
(3, 1, 3, 'add PGP', NULL, 1648635777),
(4, 2, 1, 'Quelques chose d\'autre, pourquoi pas... ! :D', 1649063915, 1648635777),
(5, 2, 2, 'Edition', NULL, 1648635777),
(6, 2, 3, 'Ajout PGP', NULL, 1648635777),
(7, 1, 4, 'Hello World!', NULL, 1648636763),
(8, 2, 4, 'Bonjour Monde :)', NULL, 1648636763),
(9, 1, 5, 'My account', 1649064065, 1649063955),
(10, 2, 5, 'Mon compte', NULL, 1649063955),
(11, 1, 6, 'Dashboard', NULL, 1649072999),
(12, 2, 6, 'Tableau de bord', NULL, 1649072999),
(13, 1, 7, 'Log Out', NULL, 1649073340),
(14, 2, 7, 'Se déconnecter', NULL, 1649073340),
(15, 1, 8, 'BecomeVendor', NULL, 1649074493),
(16, 2, 8, 'DevenirVendeur', NULL, 1649074494),
(17, 1, 9, 'My disputes', 1649087080, 1649074924),
(18, 2, 9, 'Mes litiges', NULL, 1649074924),
(19, 1, 10, 'Search', NULL, 1649077175),
(20, 2, 10, 'Rechercher', NULL, 1649077175),
(21, 1, 11, 'Category', NULL, 1649077510),
(22, 2, 11, 'Catégorie', NULL, 1649077510),
(23, 1, 12, 'All products', 1649080267, 1649077644),
(24, 2, 12, 'Tous les produits', NULL, 1649077644),
(25, 1, 13, 'Balances', 1649077887, 1649077815),
(26, 2, 13, 'Soldes', 1649077876, 1649077815),
(27, 1, 14, 'Customerorders', NULL, 1649078320),
(28, 2, 14, 'Commandes des clients', NULL, 1649078320),
(29, 1, 15, 'My orders', 1649080294, 1649078400),
(30, 2, 15, 'Mes commandes', NULL, 1649078400),
(31, 1, 16, 'Blog', NULL, 1649078426),
(32, 2, 16, 'Blog', NULL, 1649078426),
(33, 1, 17, 'MyCart', NULL, 1649078536),
(34, 2, 17, 'Mon panier', NULL, 1649078536),
(35, 1, 18, 'Noproductsinthecart.', NULL, 1649078567),
(36, 2, 18, 'Aucun produit dans le chariot.', NULL, 1649078567),
(37, 1, 19, 'No Products in Cart', 1649087120, 1649078656),
(38, 2, 19, 'Aucun produit dans le panier ', 1649087143, 1649078656),
(39, 1, 20, 'All', NULL, 1649079169),
(40, 2, 20, 'Tous', NULL, 1649079169),
(41, 1, 21, 'Ship', NULL, 1649079192),
(42, 2, 21, 'Expédier', 1649080207, 1649079192),
(43, 1, 22, 'From', NULL, 1649079218),
(44, 2, 22, 'À partir de', NULL, 1649079218),
(45, 1, 23, 'To', NULL, 1649079227),
(46, 2, 23, 'vers', 1649080226, 1649079227),
(47, 1, 24, 'Price', NULL, 1649079265),
(48, 2, 24, 'Prix', NULL, 1649079265),
(49, 1, 25, 'Minprice', NULL, 1649079642),
(50, 2, 25, 'Prix ​​mini', NULL, 1649079642),
(51, 1, 26, 'Maxprice', NULL, 1649079679),
(52, 2, 26, 'Prix ​​max', NULL, 1649079680),
(53, 1, 27, 'Top Products', 1649080145, 1649079723),
(54, 2, 27, 'Top Products', 1649080153, 1649079724),
(55, 1, 28, 'My account', 1649087064, 1649086858),
(56, 2, 28, 'Mon compte', NULL, 1649086858),
(57, 1, 29, 'Wallet', NULL, 1649086927),
(58, 2, 29, 'Portefeuille', NULL, 1649086927),
(59, 1, 30, 'My purchases', 1649087266, 1649086953),
(60, 2, 30, 'Mes achats', NULL, 1649086954),
(61, 1, 31, 'My disputes', 1649087273, 1649086972),
(62, 2, 31, 'Mes litiges', NULL, 1649086973),
(63, 1, 32, 'My tickets', 1649087280, 1649086992),
(64, 2, 32, 'Mes billets', NULL, 1649086992),
(65, 1, 33, 'No orders yet', 1649137940, 1649137663),
(66, 2, 33, 'pas encore de commande', NULL, 1649137663);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `i18n`
--
ALTER TABLE `i18n`
  ADD PRIMARY KEY (`I18N_ID`);

--
-- Index pour la table `i18n_category`
--
ALTER TABLE `i18n_category`
  ADD PRIMARY KEY (`I18CAT_ID`);

--
-- Index pour la table `i18n_language`
--
ALTER TABLE `i18n_language`
  ADD PRIMARY KEY (`I18LAN_ID`);

--
-- Index pour la table `i18n_translate`
--
ALTER TABLE `i18n_translate`
  ADD PRIMARY KEY (`i18TRA_ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `i18n`
--
ALTER TABLE `i18n`
  MODIFY `I18N_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `i18n_category`
--
ALTER TABLE `i18n_category`
  MODIFY `I18CAT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `i18n_language`
--
ALTER TABLE `i18n_language`
  MODIFY `I18LAN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `i18n_translate`
--
ALTER TABLE `i18n_translate`
  MODIFY `i18TRA_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
