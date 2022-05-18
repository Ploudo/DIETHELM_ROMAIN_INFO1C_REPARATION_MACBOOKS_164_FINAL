-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: zzz_xxxxx_NOM_PRENOM_INFO1X_SUJET_104_2021

-- Détection si une autre base de donnée du même nom existe

DROP DATABASE IF EXISTS DIETHELM_ROMAIN_INFO1C_REPARATION_MACBOOKS_164_2022;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS DIETHELM_ROMAIN_INFO1C_REPARATION_MACBOOKS_164_2022;

-- Utilisation de cette base de donnée

USE DIETHELM_ROMAIN_INFO1C_REPARATION_MACBOOKS_164_2022;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 26 jan. 2022 à 14:56
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données : `reparation_macbook`
--


--

--
-- Structure de la table `t_alimentation`
--

CREATE TABLE `t_alimentation` (
  `id_alimentation` int(11) NOT NULL,
  `puissance` int(11) NOT NULL,
  `prix_achat_alimentation` double NOT NULL,
  `prix_vente_alimentation` double NOT NULL,
  `url_alimentation` varchar(100) NOT NULL,
  `fk_type_alimentation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_alimentation`
--

INSERT INTO `t_alimentation` (`id_alimentation`, `puissance`, `prix_achat_alimentation`, `prix_vente_alimentation`, `url_alimentation`, `fk_type_alimentation`) VALUES
(1, 85, 89, 89, '', 1),
(2, 85, 89, 89, '', 2),
(3, 87, 43, 65, '', 3),
(4, 60, 0, 89, '', 1),
(5, 45, 0, 89, '', 1),
(6, 60, 0, 89, '', 2),
(7, 45, 0, 89, '', 2),
(8, 61, 0, 0, '', 3),
(9, 30, 0, 0, '', 3),
(10, 45, 0, 0, '', 4);

--

--
-- Structure de la table `t_annee`
--

CREATE TABLE `t_annee` (
  `id_annee` int(11) NOT NULL,
  `annee` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_annee`
--

INSERT INTO `t_annee` (`id_annee`, `annee`) VALUES
(1, 'Early 2006'),
(2, 'Late 2006'),
(3, 'Mid 2007'),
(4, 'Late 2007'),
(5, 'Early 2008'),
(6, 'Late 2008'),
(7, 'Early 2009'),
(8, 'Mid 2009'),
(9, 'Late 2009'),
(10, 'Mid 2010'),
(11, 'Late 2010'),
(12, 'Early 2011'),
(13, 'Mid 2011'),
(14, 'Late 2011'),
(15, 'Mid 2012'),
(16, 'Late 2012'),
(17, 'Early 2013'),
(18, 'Mid 2013'),
(19, 'Late 2013'),
(20, 'Early 2014'),
(21, 'Mid 2014'),
(22, 'Early 2015'),
(23, 'Mid 2015'),
(24, 'Late 2016'),
(25, 'Mid 2017'),
(26, '2017'),
(27, '2018'),
(28, 'Late 2018'),
(29, '2019'),
(30, '2020'),
(31, '2020 M1'),
(32, 'Mid 2006');

--

--
-- Structure de la table `t_batterie`
--

CREATE TABLE `t_batterie` (
  `id_batterie` int(11) NOT NULL,
  `no_lmp` varchar(16) NOT NULL,
  `designation_batterie` varchar(45) NOT NULL,
  `prix_achat_batterie` double NOT NULL,
  `prix_vente_batterie` double NOT NULL,
  `url_batterie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_batterie`
--

INSERT INTO `t_batterie` (`id_batterie`, `no_lmp`, `designation_batterie`, `prix_achat_batterie`, `prix_vente_batterie`, `url_batterie`) VALUES
(2, '7545', 'LMP Batterie MacBook 13\" weiss, 5/06 – 10/09,', 65, 90, ''),
(3, '7546', 'LMP Batterie MacBook 13\" schwarz, 5/06 – 10/0', 65, 90, ''),
(4, '7547', 'LMP Batterie MacBook Pro 15\", 1/06 – 10/08, L', 65, 90, ''),
(5, '7548', 'LMP Batterie MacBook Pro 17\", 10/06 – 1/09, L', 65, 90, ''),
(6, '9353', 'LMP Batterie MacBook 13\" Alu Unibody, 10/08 –', 65, 90, ''),
(7, '9354', 'LMP Batterie MacBook Pro 15\" Alu Unibody, 10/', 65, 90, ''),
(8, '13161', 'LMP Batterie MacBook Air 11\" 1. Gen., 10/10 –', 65, 90, ''),
(9, '13162', 'LMP Batterie MacBook Air 11\" 1. Gen., 7/11 – ', 65, 90, ''),
(10, '13163', 'LMP Batterie MacBook Air 11\" 2. Gen., 6/13 – ', 65, 90, ''),
(11, '9694', 'LMP Batterie MacBook Air 13\" 1. Gen., 1/08 – ', 61.5, 85, ''),
(12, '13164', 'LMP Batterie MacBook Air 13\" 2. Gen., 10/10 –', 65, 90, ''),
(13, '13165', 'LMP Batterie MacBook Air 13\" 2. Gen., 7/11 – ', 65, 90, ''),
(14, '13166', 'LMP Batterie MacBook Air 13\" 3. Gen., 6/13 – ', 65, 90, ''),
(15, '9866', 'LMP Batterie MacBook 13\" weiss, 10/09 – 7/11,', 65, 90, ''),
(16, '9695', 'LMP Batterie MacBook Pro 13\" Alu Unibody, 6/0', 65, 90, ''),
(17, '9696', 'LMP Batterie MacBook Pro 15\" Alu Unibody, 6/0', 72.5, 100, ''),
(18, '9867', 'LMP Batterie MacBook Pro 15\" Alu Unibody, 2/1', 72.5, 100, ''),
(19, '9697', 'LMP Batterie MacBook Pro 17\" Alu Unibody, 2/0', 76, 105, ''),
(20, '10894', 'LMP Batterie MacBook Pro 17\" Alu Unibody, 2/1', 72.5, 100, ''),
(21, '17443', 'LMP Batterie MacBook Pro 13\" Retina, 10/12 – ', 69, 95, ''),
(22, '17444', 'LMP Batterie MacBook Pro 13\" Retina, 10/13 – ', 69, 95, ''),
(23, '17445', 'LMP Batterie MacBook Pro 13\" Retina, 3/15 bis', 69, 95, ''),
(24, '17031', 'LMP Batterie MacBook Pro 15\" Retina, 6/12 – 1', 69, 95, ''),
(25, '17032', 'LMP Batterie MacBook Pro 15\" Retina, 10/13 – ', 69, 95, ''),
(26, '17192', 'LMP Batterie MacBook Pro 15\" Retina, 6/15 – 7', 69, 95, ''),
(27, '23190', 'LMP Batterie MacBook Pro 15\" Thunderbolt 3 (U', 91, 125, ''),
(28, '23191', 'LMP Batterie MacBook Pro 15\" Thunderbolt 3 (U', 105, 145, ''),
(29, '23192', 'LMP Batterie MacBook Pro 13\" (Touch Bar) Thun', 91, 125, ''),
(30, '23193', 'LMP Batterie MacBook Pro 13\" (Touch Bar) Thun', 105, 145, ''),
(31, '23194', 'LMP Batterie MacBook Pro 13\" (Function Keys &', 91, 125, ''),
(32, '23195', 'LMP Batterie MacBook Air 13\" Thunderbolt 3 (U', 98, 135, ''),
(33, 'EU301014-1', 'MacBook 12\" Retina (Early 2015) Battery', 130, 260, 'https://eustore.ifixit.com/products/macbook-12-retina-early-2015-battery');

--

--
-- Structure de la table `t_clavier`
--

CREATE TABLE `t_clavier` (
  `id_clavier` int(11) NOT NULL,
  `prix_achat_clavier` double NOT NULL,
  `prix_vente_clavier` double NOT NULL,
  `url_clavier` varchar(100) NOT NULL,
  `fk_modele_clavier` int(11) NOT NULL,
  `fk_disposition` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--

--
-- Structure de la table `t_disposition`
--

CREATE TABLE `t_disposition` (
  `id_disposition` int(11) NOT NULL,
  `disposition` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_disposition`
--

INSERT INTO `t_disposition` (`id_disposition`, `disposition`) VALUES
(1, 'QWERTZ'),
(2, 'QWERTY'),
(3, 'AZERTY');

--

--
-- Structure de la table `t_ecran`
--

CREATE TABLE `t_ecran` (
  `id_ecran` int(11) NOT NULL,
  `designation_ecran` varchar(100) NOT NULL,
  `prix_achat_ecran` double NOT NULL,
  `prix_vente_ecran` double NOT NULL,
  `url_ecran` varchar(200) NOT NULL,
  `fk_taille_ecran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_ecran`
--

INSERT INTO `t_ecran` (`id_ecran`, `designation_ecran`, `prix_achat_ecran`, `prix_vente_ecran`, `url_ecran`, `fk_taille_ecran`) VALUES
(2, 'MacBook Pro 13\" Retina (Late 2012-Early 2013) Display Assembly', 500, 1000, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-13-Inch-Retina-Late-2012-Early-2013-Display-Assembly/IF123-011?o=4', 3),
(3, 'MacBook Pro 13\" Retina (Late 2013-Mid 2014) Display Assembly', 600, 1200, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-13-Inch-Retina-Late-2013-Mid-2014-Display-Assembly/IF123-034?o=4', 3),
(4, 'MacBook Pro 13\" Retina (Early 2015) Display Assembly', 600, 1200, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-13-Inch-Retina-Early-2015-Display-Assembly/IF123-047?o=4', 3),
(5, 'MacBook Pro 13\" Retina (Late 2016-2017) Display Assembly', 500, 1000, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-13-Inch-Retina-Late-2016-2017-Display-Assembly/IF123-066?o=9', 3),
(6, 'MacBook Pro 13\" Retina (Mid 2018-Mid 2019) Display Assembly', 450, 900, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-13-Inch-Retina-Mid-2018-Mid-2019-Display-Assembly/IF123-181?o=1', 3),
(7, 'MacBook Pro 13\" (A2289, 2020) Display Assembly', 490, 980, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-13-Inch-A2289-2020-Display-Assembly/IF123-170?o=3', 3),
(8, 'MacBook Pro 13\" (A2251, 2020) Display Assembly', 800, 1600, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-13-Inch-A2251-2020-Display-Assembly/IF123-161?o=3', 3),
(9, 'MacBook Pro 13\" (A2338, Late 2020) Display Assembly', 550, 1100, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-13-Inch-A2338-Late-2020-Display-Assembly/IF123-194?o=2', 3),
(10, 'MacBook Pro 13\" Unibody (Mid 2009-Mid 2010) Display Assembly', 250, 500, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-13-Inch-Unibody-Mid-2009-Mid-2010-Display-Assembly/IF163-001?o=1', 3),
(11, 'MacBook Pro 13\" Unibody (Early 2011-Late 2011) Display Assembly', 250, 500, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-13-Inch-Unibody-Early-2011-Late-2011-Display-Assembly/IF163-028?o=1', 3),
(12, 'MacBook Pro 13\" Unibody (Mid 2012) Display Assembly', 250, 500, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-13-Inch-Unibody-Mid-2012-Display-Assembly/IF163-042?o=1', 3),
(13, 'MacBook Pro 15\" (Model A1150) Display Assembly', 180, 360, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-15-Inch-Model-A1150-Display-Assembly/IF185-003?o=2', 4),
(14, 'MacBook Pro 15\" (Model A1226) Display Assembly', 400, 800, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-15-Inch-Model-A1226-Display-Assembly/IF185-068?o=1', 4),
(15, 'MacBook Pro 15\" (Model A1260) Display Assembly', 150, 300, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-15-Inch-Model-A1260-Display-Assembly/IF185-104?o=1', 4),
(16, 'MacBook Pro 15\" (Model A1211) Display Assembly', 300, 600, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-15-Inch-Model-A1211-Display-Assembly/IF185-061?o=1', 4),
(17, 'MacBook Pro 15\" Unibody (Late 2008 - Late 2011) LCD Panel', 85, 170, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-15-Inch-Unibody-Late-2008--Late-2011-LCD-Panel/IF161-069?o=1', 4),
(18, 'MacBook Pro 15\" Unibody (Mid 2012) Display Assembly', 270, 540, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-15-Inch-Unibody-Mid-2012-Display-Assembly/IF161-096?o=1', 4),
(19, 'MacBook Pro 15\" Retina (Mid 2012-Early 2013) Display Assembly', 500, 1000, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-15-Inch-Retina-Mid-2012-Early-2013-Display-Assembly/IF117-010?o=1', 4),
(20, 'MacBook Pro 15\" Retina (Late 2013-Mid 2014) Display Assembly', 550, 1100, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-15-Inch-Retina-Late-2013-Mid-2014-Display-Assembly/IF117-029?o=4', 4),
(21, 'MacBook Pro 15\" Retina (Mid 2015) Display Assembly', 600, 1200, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-15-Inch-Retina-Mid-2015-Display-Assembly/IF117-049?o=3', 4),
(22, 'MacBook Pro 15\" Retina (Late 2016-2017) Display Assembly', 700, 1400, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-15-Inch-Retina-Late-2016-2017-Display-Assembly/IF117-064?o=7', 4),
(23, 'MacBook Pro 15\" Retina (Touch Bar, 2018-2019) Display Assembly', 500, 1000, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-15-Inch-Retina-Touch-Bar-2018-2019-Display-Assembly/IF117-116?o=3', 4),
(24, 'MacBook Pro 16\" (2019) Display Assembly', 900, 1800, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-16-Inch-2019-Display-Assembly/IF455-001?o=1', 6),
(25, 'MacBook Pro 17\" (Model A1151) Display Assembly', 550, 1100, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-17-Inch-Model-A1151-Display-Assembly/IF187-000?o=1', 5),
(26, 'MacBook Pro 17\" (Model A1212) Display Assembly', 250, 500, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-17-Inch-Model-A1212-Display-Assembly/IF187-045?o=4', 5),
(27, 'MacBook Pro 17\" (Model A1229) Display Assembly', 450, 900, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-17-Inch-Model-A1229-Display-Assembly/IF187-070?o=3', 5),
(28, 'MacBook Pro 17\" (Model A1261 Hi-Res) LCD LED Panel', 220, 440, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-17-Inch-Model-A1261-Hi-Res-LCD-LED-Panel/IF187-092?o=1', 5),
(29, 'MacBook Pro 17\" Unibody (Early-Mid 2009) Display Assembly', 240, 480, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-17-Inch-Unibody-Early-Mid-2009-Display-Assembly/IF162-001?o=3', 5),
(30, 'MacBook Pro 17\" Unibody LCD Panel', 150, 300, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-17-Inch-Unibody-LCD-Panel/IF162-021?o=1', 5),
(31, 'MacBook Pro 17\" Unibody (Early 2011) Display Assembly', 200, 400, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-17-Inch-Unibody-Early-2011-Display-Assembly/IF162-032?o=1', 5),
(32, 'MacBook Pro 17\" Unibody (Late 2011) Display Assembly', 280, 560, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-17-Inch-Unibody-Late-2011-Display-Assembly/IF162-043?o=1', 5),
(33, 'MacBook Air 11\" (Late 2010) Display Assembly', 240, 480, 'https://www.ifixit.com/Store/Mac/MacBook-Air-11-Inch-Late-2010-Display-Assembly/IF108-003?o=1', 1),
(34, 'MacBook Air 11\" (Mid 2011) Display Assembly', 250, 500, 'https://www.ifixit.com/Store/Mac/MacBook-Air-11-Inch-Mid-2011-Display-Assembly/IF108-019?o=1', 1),
(35, 'MacBook Air 11\" (Mid 2012) Display Assembly', 250, 500, 'https://www.ifixit.com/Store/Mac/MacBook-Air-11-Inch-Mid-2012-Display-Assembly/IF108-041?o=1', 1),
(36, 'MacBook Air 11\" (Mid 2013-Early 2015) Display Assembly', 300, 600, 'https://www.ifixit.com/Store/Mac/MacBook-Air-11-Inch-Mid-2013-Early-2015-Display-Assembly/IF108-053?o=1', 1),
(37, 'MacBook Air 13\" (Original-Mid 2009) Display Assembly', 350, 700, 'https://www.ifixit.com/Store/Mac/MacBook-Air-13-Inch-Original-Mid-2009-Display-Assembly/IF188-001?o=1', 3),
(38, 'MacBook Air 13\" (Late 2010-Mid 2011) Display Assembly', 400, 800, 'https://www.ifixit.com/Store/Mac/MacBook-Air-13-Inch-Late-2010-Mid-2011-Display-Assembly/IF188-050?o=1', 3),
(39, 'MacBook Air 13\" (Mid 2012) Display Assembly', 360, 720, 'https://www.ifixit.com/Store/Mac/MacBook-Air-13-Inch-Mid-2012-Display-Assembly/IF188-083?o=1', 3),
(40, 'MacBook Air 13\" (Mid 2013-2017) Display Assembly', 300, 600, 'https://www.ifixit.com/Store/Mac/MacBook-Air-13-Inch-Mid-2013-2017-Display-Assembly/IF188-096?o=5', 3),
(41, 'MacBook Air 13\" (Late 2018-Early 2020) Display Assembly', 500, 1000, 'https://www.ifixit.com/Store/Mac/MacBook-Air-13-Inch-Late-2018-Early-2020-Display-Assembly/IF188-144?o=1', 3),
(42, 'MacBook Air 13\" (A2337, Late 2020) Display Assembly', 450, 900, 'https://www.ifixit.com/Store/Mac/MacBook-Air-13-Inch-A2337-Late-2020-Display-Assembly/IF188-159?o=3', 3),
(43, 'MacBook 12\" Retina (Early 2015-2017) Display Assembly', 450, 900, 'https://www.ifixit.com/Store/Mac/MacBook-12-Inch-Retina-Early-2015-2017-Display-Assembly/IF301-002?o=1', 2),
(44, 'MacBook Unibody (A1342) Display Assembly', 175, 350, 'https://www.ifixit.com/Store/Mac/MacBook-Unibody-A1342-Display-Assembly/IF160-024?o=1', 3),
(45, 'MacBook Unibody (A1278) Display Assembly', 100, 200, 'https://www.ifixit.com/Store/Mac/MacBook-Unibody-A1278-Display-Assembly/IF160-002?o=1', 3),
(46, 'MacBook 13.3\" LCD Panel', 50, 100, 'https://www.ifixit.com/Store/Mac/MacBook-13-3-Inch-LCD-Panel/IF186-050?o=1', 3),
(47, 'MacBook 13.3\" Core 2 Duo Display Assembly', 300, 600, 'https://www.ifixit.com/Store/Mac/MacBook-13-3-Inch-Core-2-Duo-Display-Assembly/IF186-033?o=1', 3),
(48, 'MacBook 13.3\" Santa Rosa/Penryn Display Assembly', 300, 600, 'https://www.ifixit.com/Store/Mac/MacBook-13-3-Inch-Santa-Rosa-Penryn-Display-Assembly/IF186-047?o=1', 3),
(49, 'MacBook Pro 15\" Unibody (Mid 2010) Display Assembly', 100, 200, 'https://fr.ifixit.com/Boutique/Mac/MacBook-Pro-15-Inch-Unibody-Mid-2010-Display-Assembly/IF161-053?o=1', 4),
(50, 'MacBook Pro 15\" Unibody (Early 2011-Late 2011) Display Assembly', 150, 300, 'https://www.ifixit.com/Store/Mac/MacBook-Pro-15-Inch-Unibody-Early-2011-Late-2011-Display-Assembly/IF161-076?o=2', 4);

--

--
-- Structure de la table `t_macbook`
--

CREATE TABLE `t_macbook` (
  `id_macbook` int(11) NOT NULL,
  `identifiant_macbook` varchar(45) NOT NULL,
  `fk_annee` int(11) NOT NULL,
  `fk_batterie` int(11) NOT NULL,
  `fk_stockage` int(11) NOT NULL,
  `fk_ecran` int(11) NOT NULL,
  `fk_clavier` int(11) NOT NULL,
  `fk_alimentation` int(11) NOT NULL,
  `fk_modele_motherboard` int(11) NOT NULL,
  `fk_modele_macbook` int(11) NOT NULL,
  `fk_ram` int(11) NOT NULL,
  `temps_batterie` double NOT NULL,
  `temps_stockage` double NOT NULL,
  `temps_ecran` double NOT NULL,
  `temps_clavier` double NOT NULL,
  `temps_motherboard` double NOT NULL,
  `temps_ram` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_macbook`
--

INSERT INTO `t_macbook` (`id_macbook`, `identifiant_macbook`, `fk_annee`, `fk_batterie`, `fk_stockage`, `fk_ecran`, `fk_clavier`, `fk_alimentation`, `fk_modele_motherboard`, `fk_modele_macbook`, `fk_ram`, `temps_batterie`, `temps_stockage`, `temps_ecran`, `temps_clavier`, `temps_motherboard`, `temps_ram`) VALUES
(1, 'A1286', 10, 17, 1, 49, 16, 1, 55, 1, 5, 1, 1, 2, 3, 2, 0.5),
(10, 'A1150', 1, 4, 1, 13, 12, 1, 49, 1, 8, 1, 1, 3, 3, 4, 0.5),
(11, 'A1211', 2, 4, 1, 16, 12, 1, 50, 1, 8, 1, 1, 1, 3, 2, 0.5),
(12, 'A1226', 3, 4, 1, 14, 12, 1, 51, 1, 8, 1, 1, 1, 1, 2, 0.5),
(13, 'A1226', 4, 4, 1, 14, 12, 1, 51, 1, 8, 1, 1, 1, 1, 2, 0.5),
(14, 'A1150', 32, 4, 1, 13, 12, 1, 49, 1, 8, 1, 1, 3, 3, 4, 0.5),
(15, 'A1237', 5, 11, 6, 37, 33, 5, 13, 2, 9, 1, 2, 2, 3, 3, 0),
(16, 'A1304', 6, 11, 6, 37, 34, 5, 14, 2, 9, 1, 2, 2, 3, 3, 0),
(17, 'A1534', 22, 33, 5, 43, 46, 9, 5, 4, 9, 3, 0, 3, 1, 1, 0),
(18, 'A1502', 22, 23, 3, 4, 1, 6, 42, 1, 9, 2, 1, 1, 3, 1, 0),
(19, 'A1260', 5, 4, 1, 15, 13, 4, 52, 1, 8, 1, 1, 1, 1, 2, 0.5),
(20, 'A1286', 6, 7, 1, 17, 14, 1, 53, 1, 5, 1, 1, 3, 3, 2, 0.5),
(21, 'A1286', 7, 7, 1, 17, 14, 1, 53, 1, 5, 1, 1, 3, 3, 2, 0.5),
(22, 'A1286', 8, 17, 1, 17, 15, 1, 54, 1, 5, 1, 1, 3, 3, 2, 0.5),
(23, 'A1286', 12, 18, 1, 50, 17, 1, 56, 1, 6, 1, 1, 3, 3, 3, 0.5),
(24, 'A1286', 14, 18, 1, 50, 17, 1, 57, 1, 6, 1, 1, 3, 3, 1, 0.5),
(25, 'A1286', 15, 18, 1, 18, 17, 1, 58, 1, 6, 1, 1, 2, 3, 2, 0.5),
(26, 'A1398', 15, 24, 2, 19, 18, 2, 59, 1, 9, 2, 1, 1, 3, 4, 0),
(27, 'A1398', 17, 24, 2, 19, 18, 2, 60, 1, 9, 2, 1, 2, 4, 4, 0),
(28, 'A1398', 19, 25, 3, 20, 19, 2, 61, 1, 9, 2, 1, 2, 4, 2, 0),
(29, 'A1398', 21, 25, 3, 20, 19, 2, 61, 1, 9, 2, 1, 1, 3, 2, 0),
(30, 'A1398', 23, 26, 3, 21, 20, 2, 63, 1, 9, 3, 1, 1, 4, 3, 0),
(31, 'A1707', 24, 27, 5, 22, 21, 3, 65, 1, 9, 3, 0, 2, 5, 1, 0),
(32, 'A1707', 25, 27, 5, 22, 21, 3, 66, 1, 9, 3, 0, 2, 5, 1, 0),
(33, 'A1990', 27, 28, 5, 23, 22, 3, 67, 1, 9, 3, 0, 2, 6, 3, 0),
(34, 'A2141', 29, 28, 5, 23, 22, 3, 68, 1, 9, 3, 0, 2, 6, 3, 0),
(35, 'A1278', 8, 16, 1, 10, 10, 4, 34, 1, 5, 1, 1, 2, 2, 2, 0.5),
(36, 'A1278', 10, 16, 1, 10, 10, 4, 35, 1, 5, 1, 1, 1, 3, 3, 0.5),
(37, 'A1278', 12, 16, 1, 11, 11, 4, 36, 1, 6, 1, 1, 1, 3, 2, 0.5),
(38, 'A1278', 14, 16, 1, 11, 17, 4, 36, 1, 6, 1, 1, 1, 3, 2, 0.5),
(39, 'A1278', 15, 16, 1, 12, 11, 4, 37, 1, 7, 1, 1, 1, 3, 2, 0.5);

--

--
-- Structure de la table `t_modele_clavier`
--

CREATE TABLE `t_modele_clavier` (
  `id_modele_clavier` int(11) NOT NULL,
  `designation_clavier` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_modele_clavier`
--

INSERT INTO `t_modele_clavier` (`id_modele_clavier`, `designation_clavier`) VALUES
(1, 'MacBook Pro 13\" Retina (Early 2015) Upper Case Assembly'),
(2, 'MacBook Pro 13\" Retina (Late 2012-Early 2013) Upper Case Assembly'),
(3, 'MacBook Pro 13\" Retina (Late 2013-Mid 2014) Upper Case Assembly'),
(4, 'MacBook Pro 13\" Retina (Function Keys, Late 2016-2017) Upper Case Assembly'),
(5, 'MacBook Pro 13\" Retina (Touch Bar, Late 2016-2017) Upper Case Assembly'),
(6, 'MacBook Pro 13\" Retina (Mid 2018-2019) Upper Case Assembly'),
(7, 'MacBook Pro 13\" (A2159, 2019) Upper Case Assembly'),
(8, 'MacBook Pro 13\" (A2289, A2338, 2020) Upper Case Assembly'),
(9, 'MacBook Pro 13\" (A2251, 2020) Upper Case Assembly'),
(10, 'MacBook Pro 13\" Unibody (Mid 2009-Mid 2010) Upper Case'),
(11, 'MacBook Pro 13\" Unibody (Early 2011-Mid 2012) Upper Case'),
(12, 'MacBook Pro 15\" (Model A1150, A1211, A1226) Keyboard'),
(13, 'MacBook Pro 15\" (Model A1260) Keyboard'),
(14, 'MacBook Pro 15\" Unibody (Late 2008-Early 2009) Upper Case'),
(15, 'MacBook Pro 15\" Unibody (Mid 2009) Upper Case and Trackpad'),
(16, 'MacBook Pro 15\" Unibody (Mid 2010) Upper Case'),
(17, 'MacBook Pro 15\" Unibody (Early 2011-Mid 2012) Upper Case'),
(18, 'MacBook Pro 15\" Retina (Mid 2012-Early 2013) Upper Case Assembly'),
(19, 'MacBook Pro 15\" Retina (Late 2013-Mid 2014) Upper Case Assembly'),
(20, 'MacBook Pro 15\" Retina (Mid 2015) Upper Case Assembly'),
(21, 'MacBook Pro 15\" Retina (Late 2016-2017) Upper Case Assembly'),
(22, 'MacBook Pro 15\" Retina (Mid 2018-2019) Upper Case Assembly'),
(23, 'MacBook Pro 16\" (2019) Upper Case Assembly'),
(24, 'MacBook Pro 17\" (Model A1151) Keyboard'),
(25, 'MacBook Pro 17\" Unibody (Early-Mid 2009) Upper Case'),
(26, 'MacBook Pro 17\" Unibody (Mid 2010) Upper Case'),
(27, 'MacBook Pro 17\" Unibody (Early 2011) Upper Case'),
(28, 'MacBook Pro 17\" Unibody (Late 2011) Upper Case'),
(29, 'MacBook Air 11\" (Late 2010) Upper Case with Keyboard'),
(30, 'MacBook Air 11\" (Mid 2011) Upper Case'),
(31, 'MacBook Air 11\" (Mid 2012) Upper Case with Keyboard'),
(32, 'MacBook Air 11\" (Mid 2013-Early 2015) Upper Case'),
(33, 'MacBook Air (Original) Upper Case with Keyboard'),
(34, 'MacBook Air (Late 2008-Mid 2009) Upper Case with Keyboard'),
(35, 'MacBook Air 13\" (Late 2010) Upper Case with Keyboard'),
(36, 'MacBook Air 13\" (Mid 2011) Upper Case with Keyboard'),
(37, 'MacBook Air 13\" (Mid 2012) Upper Case with Keyboard'),
(38, 'MacBook Air 13\" (Mid 2013-2017) Upper Case with Keyboard'),
(39, 'MacBook Air 13\" (Late 2018-Mid 2019) Upper Case with Keyboard'),
(40, 'MacBook Air 13\" (Early 2020) Upper Case with Keyboard'),
(41, 'MacBook Air 13\" (A2337, Late 2020) Upper Case with Keyboard'),
(42, 'MacBook Upper Case with Keyboard'),
(43, 'MacBook Unibody (A1278) Upper Case (Non-Backlit)'),
(44, 'MacBook Unibody (A1278) Upper Case (Backlit)'),
(45, 'MacBook Unibody (A1342) Upper Case'),
(46, 'MacBook 12\" Retina (Early 2015) Upper Case with Keyboard'),
(47, 'MacBook 12\" Retina (Early 2016-2017) Upper Case with Keyboard');

--

--
-- Structure de la table `t_modele_macbook`
--

CREATE TABLE `t_modele_macbook` (
  `id_modele_macbook` int(11) NOT NULL,
  `modele_macbook` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_modele_macbook`
--

INSERT INTO `t_modele_macbook` (`id_modele_macbook`, `modele_macbook`) VALUES
(1, 'Pro'),
(2, 'Air'),
(3, 'PowerBook G4'),
(4, ' ');

--

--
-- Structure de la table `t_modele_motherboard`
--

CREATE TABLE `t_modele_motherboard` (
  `id_modele_motherboard` int(11) NOT NULL,
  `designation_motherboard` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_modele_motherboard`
--

INSERT INTO `t_modele_motherboard` (`id_modele_motherboard`, `designation_motherboard`) VALUES
(1, 'MacBook Core Duo Logic Board'),
(2, 'MacBook (Early 2009) Logic Board'),
(3, 'MacBook Unibody (A1278) Logic Board'),
(4, 'MacBook Unibody (A1342) Logic Board'),
(5, 'MacBook 12\" Retina (Early 2015) Logic Board'),
(6, 'MacBook 12\" Retina (Early 2016) Logic Board'),
(7, 'MacBook 12\" Retina (2017) Logic Board'),
(8, 'MacBook Air 11\" (Late 2010) Logic Board'),
(9, 'MacBook Air 11\" (Mid 2011) Logic Board'),
(10, 'MacBook Air 11\" (Mid 2012) Logic Board'),
(11, 'MacBook Air 11\" (Mid 2013-Early 2014) Logic Board'),
(12, 'MacBook Air 11\" (Early 2015) Logic Board'),
(13, 'MacBook Air (Original) Logic Board'),
(14, 'MacBook Air (Late 2008) Logic Board'),
(15, 'MacBook Air (Mid 2009) Logic Board'),
(16, 'MacBook Air 13\" (Late 2010) Logic Board'),
(17, 'MacBook Air 13\" (Mid 2011) Logic Board'),
(18, 'MacBook Air 13\" (Mid 2012) Logic Board'),
(19, 'MacBook Air 13\" (Mid 2013-Early 2014) Logic Board'),
(20, 'MacBook Air 13\" (Early 2015) Logic Board'),
(21, 'MacBook Air 13\" (2017) Logic Board'),
(22, 'MacBook Air 13\" (Late 2018-Mid 2019) Logic Board with Paired Touch ID Sensor'),
(23, 'MacBook Air 13\" (Early 2020) Core i3 Logic Board with Paired Touch ID Sensor'),
(24, 'MacBook Pro 16\" (2019) Logic Board, Radeon Pro 5300M, with Paired Touch ID Sensor'),
(25, 'MacBook Pro 17\" (Model A1151) Logic Board'),
(26, 'MacBook Pro 17\" (Model A1212) Logic Board'),
(27, 'MacBook Pro 17\" (Model A1229) Logic Board'),
(28, 'MacBook Pro 17\" (Model A1261) Logic Board'),
(29, 'MacBook Pro 17\" Unibody (Early 2009) Logic Board'),
(30, 'MacBook Pro 17\" Unibody (Mid 2009) Logic Board'),
(31, 'MacBook Pro 17\" Unibody (Mid 2010) Logic Board'),
(32, 'MacBook Pro 17\" Unibody (Early 2011) Logic Board'),
(33, 'MacBook Pro 17\" Unibody (Late 2011) Logic Board'),
(34, 'MacBook Pro 13\" Unibody (Mid 2009) Logic Board'),
(35, 'MacBook Pro 13\" Unibody (Mid 2010) Logic Board'),
(36, 'MacBook Pro 13\" Unibody (Early 2011-Late 2011) Logic Board'),
(37, 'MacBook Pro 13\" Unibody (Mid 2012) Logic Board'),
(38, 'MacBook Pro 13\" Retina (Late 2012) Logic Board'),
(39, 'MacBook Pro 13\" Retina (Early 2013) Logic Board'),
(40, 'MacBook Pro 13\" Retina (Late 2013) Logic Board'),
(41, 'MacBook Pro 13\" Retina (Mid 2014) Logic Board'),
(42, 'MacBook Pro 13\" Retina (Early 2015) Logic Board'),
(43, 'MacBook Pro 13\" Retina (Function Keys, Late 2016) Logic Board'),
(44, 'MacBook Pro 13\" Retina (Touch Bar, Late 2016) Logic Board with Paired Touch ID Sensor'),
(45, 'MacBook Pro 13\" Retina (Function Keys, 2017) Logic Board'),
(46, 'MacBook Pro 13\" Retina (Touch Bar, 2017) Logic Board with Paired Touch ID Sensor'),
(47, 'MacBook Pro 13\" Retina (Mid 2018) Logic Board with Paired Touch ID Sensor'),
(48, 'MacBook Pro 13\" (A2251, 2020) Logic Board with Paired Touch ID Sensor'),
(49, 'MacBook Pro 15\" (Model A1150) Logic Board'),
(50, 'MacBook Pro 15\" (Model A1211) Logic Board'),
(51, 'MacBook Pro 15\" (Model A1226) Logic Board'),
(52, 'MacBook Pro 15\" (Model A1260) 2.4 GHz Logic Board'),
(53, 'MacBook Pro 15\" Unibody (Late 2008-Early 2009) Logic Board'),
(54, 'MacBook Pro 15\" Unibody (Mid 2009) Logic Board'),
(55, 'MacBook Pro 15\" Unibody (Mid 2010) Logic Board'),
(56, 'MacBook Pro 15\" Unibody (Early 2011) Logic Board'),
(57, 'MacBook Pro 15\" Unibody (Late 2011) Logic Board'),
(58, 'MacBook Pro 15\" Unibody (Mid 2012) Logic Board'),
(59, 'MacBook Pro 15\" Retina (Mid 2012) Logic Board'),
(60, 'MacBook Pro 15\" Retina (Early 2013) Logic Board'),
(61, 'MacBook Pro 15\" Retina (Late 2013 to Mid 2014, Integrated Graphics) Logic Board'),
(62, 'MacBook Pro 15\" Retina (Late 2013 to Mid 2014, Dual Graphics) Logic Board'),
(63, 'MacBook Pro 15\" Retina (Mid 2015, Integrated Graphics) Logic Board'),
(64, 'MacBook Pro 15\" Retina (Mid 2015, Dual Graphics) Logic Board'),
(65, 'MacBook Pro 15\" Retina (Late 2016) Logic Board, Radeon Pro 450, with Paired Touch ID Sensor'),
(66, 'MacBook Pro 15\" Retina (2017) Logic Board, Radeon Pro 555, with Paired Touch ID Sensor'),
(67, 'MacBook Pro 15\" Retina (Mid 2018) Logic Board, Radeon Pro 555X, with Paired Touch ID Sensor'),
(68, 'MacBook Pro 15\" Retina (Mid 2019) Logic Board, Radeon Pro 555X, with Paired Touch ID Sensor');

--

--
-- Structure de la table `t_modele_ram`
--

CREATE TABLE `t_modele_ram` (
  `id_modele_ram` int(11) NOT NULL,
  `frequence_ram` int(11) NOT NULL,
  `fk_technologie_ram` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_modele_ram`
--

INSERT INTO `t_modele_ram` (`id_modele_ram`, `frequence_ram`, `fk_technologie_ram`) VALUES
(5, 1066, 3),
(6, 1333, 3),
(7, 1600, 3),
(8, 667, 2),
(9, 0, 5);

--

--
-- Structure de la table `t_motherboard`
--

CREATE TABLE `t_motherboard` (
  `id_motherboard` int(11) NOT NULL,
  `prix_achat_motherboard` double NOT NULL,
  `prix_vente_motherboard` double NOT NULL,
  `url_motherboard` varchar(100) NOT NULL,
  `CPU` varchar(45) NOT NULL,
  `RAM` int(45) NOT NULL,
  `fk_modele_motherboard` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--

--
-- Structure de la table `t_ram`
--

CREATE TABLE `t_ram` (
  `id_ram` int(11) NOT NULL,
  `capacity_ram` int(11) NOT NULL,
  `fk_modele_ram` int(11) NOT NULL,
  `prix_achat_ram` double NOT NULL,
  `prix_vente_ram` double NOT NULL,
  `url_ram` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_ram`
--

INSERT INTO `t_ram` (`id_ram`, `capacity_ram`, `fk_modele_ram`, `prix_achat_ram`, `prix_vente_ram`, `url_ram`) VALUES
(1, 2048, 5, 0, 0, ''),
(2, 4096, 5, 25.1, 37.65, 'https://www.digitec.ch/de/s1/product/corsair-mac-memory-2-x-4gb-ddr3-1066-so-dimm-204-pin-ram-261937'),
(3, 2048, 6, 0, 0, ''),
(4, 4096, 6, 23.65, 35.5, 'https://www.digitec.ch/de/s1/product/corsair-cmsa8gx3m2a1333c9-2-x-4gb-ddr3-1333-so-dimm-204-pin-ram-286996'),
(5, 2048, 7, 0, 0, ''),
(6, 4096, 7, 0, 0, ''),
(7, 512, 8, 0, 0, ''),
(8, 1024, 8, 0, 0, ''),
(9, 2048, 8, 0, 0, ''),
(10, 0, 9, 0, 0, '');

--

--
-- Structure de la table `t_stockage`
--

CREATE TABLE `t_stockage` (
  `id_stockage` int(11) NOT NULL,
  `capacity_stockage` int(11) NOT NULL,
  `prix_achat_stockage` double NOT NULL,
  `prix_vente_stockage` double NOT NULL,
  `url_stockage` varchar(100) NOT NULL,
  `fk_type_stockage` int(11) NOT NULL,
  `SSD` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_stockage`
--

INSERT INTO `t_stockage` (`id_stockage`, `capacity_stockage`, `prix_achat_stockage`, `prix_vente_stockage`, `url_stockage`, `fk_type_stockage`, `SSD`) VALUES
(3, 1000, 119, 162.5, 'https://www.digitec.ch/de/s1/product/samsung-870-evo-1000-gb-25-ssd-14598791', 1, 1),
(4, 2000, 230, 320.35, 'https://www.digitec.ch/de/s1/product/samsung-870-evo-2000-gb-25-ssd-14598992', 1, 1),
(5, 1000, 40, 80, '', 1, 0),
(6, 0, 0, 0, '', 5, 1);

--

--
-- Structure de la table `t_taille_ecran`
--

CREATE TABLE `t_taille_ecran` (
  `id_taille_ecran` int(11) NOT NULL,
  `taille` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_taille_ecran`
--

INSERT INTO `t_taille_ecran` (`id_taille_ecran`, `taille`) VALUES
(1, 11),
(2, 12),
(3, 13),
(4, 15),
(5, 17),
(6, 16);

--

--
-- Structure de la table `t_technologie_ram`
--

CREATE TABLE `t_technologie_ram` (
  `id_technologie_ram` int(11) NOT NULL,
  `technologie_ram` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_technologie_ram`
--

INSERT INTO `t_technologie_ram` (`id_technologie_ram`, `technologie_ram`) VALUES
(1, 'DDR'),
(2, 'DDR2'),
(3, 'DDR3'),
(4, 'DDR4'),
(5, 'Soudée');

--

--
-- Structure de la table `t_type_alimentation`
--

CREATE TABLE `t_type_alimentation` (
  `id_type_alimentation` int(11) NOT NULL,
  `type_alimentation` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_type_alimentation`
--

INSERT INTO `t_type_alimentation` (`id_type_alimentation`, `type_alimentation`) VALUES
(1, 'MagSafe'),
(2, 'MagSafe 2'),
(3, 'USB-C'),
(4, 'PowerBook');

--

--
-- Structure de la table `t_type_stockage`
--

CREATE TABLE `t_type_stockage` (
  `id_type_stockage` int(11) NOT NULL,
  `type_stockage` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_type_stockage`
--

INSERT INTO `t_type_stockage` (`id_type_stockage`, `type_stockage`) VALUES
(1, 'SATA'),
(2, '17+7 PIN'),
(3, '12+16 PIN'),
(4, 'Module SSD'),
(5, 'Soudé'),
(6, 'ZIF');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_alimentation`
--
ALTER TABLE `t_alimentation`
  ADD PRIMARY KEY (`id_alimentation`),
  ADD KEY `fk_type_alimentation` (`fk_type_alimentation`);

--
-- Index pour la table `t_annee`
--
ALTER TABLE `t_annee`
  ADD PRIMARY KEY (`id_annee`);

--
-- Index pour la table `t_batterie`
--
ALTER TABLE `t_batterie`
  ADD PRIMARY KEY (`id_batterie`);

--
-- Index pour la table `t_clavier`
--
ALTER TABLE `t_clavier`
  ADD PRIMARY KEY (`id_clavier`),
  ADD KEY `fk_modele_clavier` (`fk_modele_clavier`),
  ADD KEY `fk_disposition` (`fk_disposition`);

--
-- Index pour la table `t_disposition`
--
ALTER TABLE `t_disposition`
  ADD PRIMARY KEY (`id_disposition`);

--
-- Index pour la table `t_ecran`
--
ALTER TABLE `t_ecran`
  ADD PRIMARY KEY (`id_ecran`),
  ADD KEY `fk_taille_ecran` (`fk_taille_ecran`);

--
-- Index pour la table `t_macbook`
--
ALTER TABLE `t_macbook`
  ADD PRIMARY KEY (`id_macbook`),
  ADD KEY `fk_annee` (`fk_annee`,`fk_batterie`,`fk_stockage`,`fk_ecran`,`fk_clavier`,`fk_alimentation`,`fk_modele_motherboard`),
  ADD KEY `fk_modele_motherboard` (`fk_modele_motherboard`),
  ADD KEY `fk_stockage` (`fk_stockage`),
  ADD KEY `fk_ecran` (`fk_ecran`),
  ADD KEY `fk_clavier` (`fk_clavier`),
  ADD KEY `fk_batterie` (`fk_batterie`),
  ADD KEY `fk_alimentation` (`fk_alimentation`),
  ADD KEY `fk_modele_macbook` (`fk_modele_macbook`),
  ADD KEY `fk_ram` (`fk_ram`);

--
-- Index pour la table `t_modele_clavier`
--
ALTER TABLE `t_modele_clavier`
  ADD PRIMARY KEY (`id_modele_clavier`);

--
-- Index pour la table `t_modele_macbook`
--
ALTER TABLE `t_modele_macbook`
  ADD PRIMARY KEY (`id_modele_macbook`);

--
-- Index pour la table `t_modele_motherboard`
--
ALTER TABLE `t_modele_motherboard`
  ADD PRIMARY KEY (`id_modele_motherboard`);

--
-- Index pour la table `t_modele_ram`
--
ALTER TABLE `t_modele_ram`
  ADD PRIMARY KEY (`id_modele_ram`),
  ADD KEY `fk_technologie_ram` (`fk_technologie_ram`);

--
-- Index pour la table `t_motherboard`
--
ALTER TABLE `t_motherboard`
  ADD PRIMARY KEY (`id_motherboard`),
  ADD KEY `fk_modele_motherboard` (`fk_modele_motherboard`);

--
-- Index pour la table `t_ram`
--
ALTER TABLE `t_ram`
  ADD PRIMARY KEY (`id_ram`),
  ADD KEY `fk_modele_ram` (`fk_modele_ram`);

--
-- Index pour la table `t_stockage`
--
ALTER TABLE `t_stockage`
  ADD PRIMARY KEY (`id_stockage`),
  ADD KEY `fk_type_stockage` (`fk_type_stockage`);

--
-- Index pour la table `t_taille_ecran`
--
ALTER TABLE `t_taille_ecran`
  ADD PRIMARY KEY (`id_taille_ecran`);

--
-- Index pour la table `t_technologie_ram`
--
ALTER TABLE `t_technologie_ram`
  ADD PRIMARY KEY (`id_technologie_ram`);

--
-- Index pour la table `t_type_alimentation`
--
ALTER TABLE `t_type_alimentation`
  ADD PRIMARY KEY (`id_type_alimentation`);

--
-- Index pour la table `t_type_stockage`
--
ALTER TABLE `t_type_stockage`
  ADD PRIMARY KEY (`id_type_stockage`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_alimentation`
--
ALTER TABLE `t_alimentation`
  MODIFY `id_alimentation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `t_annee`
--
ALTER TABLE `t_annee`
  MODIFY `id_annee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `t_batterie`
--
ALTER TABLE `t_batterie`
  MODIFY `id_batterie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `t_clavier`
--
ALTER TABLE `t_clavier`
  MODIFY `id_clavier` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_disposition`
--
ALTER TABLE `t_disposition`
  MODIFY `id_disposition` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `t_ecran`
--
ALTER TABLE `t_ecran`
  MODIFY `id_ecran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `t_macbook`
--
ALTER TABLE `t_macbook`
  MODIFY `id_macbook` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `t_modele_clavier`
--
ALTER TABLE `t_modele_clavier`
  MODIFY `id_modele_clavier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `t_modele_macbook`
--
ALTER TABLE `t_modele_macbook`
  MODIFY `id_modele_macbook` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `t_modele_motherboard`
--
ALTER TABLE `t_modele_motherboard`
  MODIFY `id_modele_motherboard` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT pour la table `t_modele_ram`
--
ALTER TABLE `t_modele_ram`
  MODIFY `id_modele_ram` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `t_motherboard`
--
ALTER TABLE `t_motherboard`
  MODIFY `id_motherboard` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_ram`
--
ALTER TABLE `t_ram`
  MODIFY `id_ram` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `t_stockage`
--
ALTER TABLE `t_stockage`
  MODIFY `id_stockage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `t_taille_ecran`
--
ALTER TABLE `t_taille_ecran`
  MODIFY `id_taille_ecran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `t_technologie_ram`
--
ALTER TABLE `t_technologie_ram`
  MODIFY `id_technologie_ram` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `t_type_alimentation`
--
ALTER TABLE `t_type_alimentation`
  MODIFY `id_type_alimentation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `t_type_stockage`
--
ALTER TABLE `t_type_stockage`
  MODIFY `id_type_stockage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_alimentation`
--
ALTER TABLE `t_alimentation`
  ADD CONSTRAINT `t_alimentation_ibfk_1` FOREIGN KEY (`fk_type_alimentation`) REFERENCES `t_type_alimentation` (`id_type_alimentation`);

--
-- Contraintes pour la table `t_clavier`
--
ALTER TABLE `t_clavier`
  ADD CONSTRAINT `t_clavier_ibfk_1` FOREIGN KEY (`fk_modele_clavier`) REFERENCES `t_modele_clavier` (`id_modele_clavier`),
  ADD CONSTRAINT `t_clavier_ibfk_2` FOREIGN KEY (`fk_disposition`) REFERENCES `t_disposition` (`id_disposition`);

--
-- Contraintes pour la table `t_ecran`
--
ALTER TABLE `t_ecran`
  ADD CONSTRAINT `t_ecran_ibfk_1` FOREIGN KEY (`fk_taille_ecran`) REFERENCES `t_taille_ecran` (`id_taille_ecran`);

--
-- Contraintes pour la table `t_macbook`
--
ALTER TABLE `t_macbook`
  ADD CONSTRAINT `t_macbook_ibfk_1` FOREIGN KEY (`fk_modele_motherboard`) REFERENCES `t_modele_motherboard` (`id_modele_motherboard`),
  ADD CONSTRAINT `t_macbook_ibfk_2` FOREIGN KEY (`fk_stockage`) REFERENCES `t_type_stockage` (`id_type_stockage`),
  ADD CONSTRAINT `t_macbook_ibfk_3` FOREIGN KEY (`fk_ecran`) REFERENCES `t_ecran` (`id_ecran`),
  ADD CONSTRAINT `t_macbook_ibfk_4` FOREIGN KEY (`fk_clavier`) REFERENCES `t_modele_clavier` (`id_modele_clavier`),
  ADD CONSTRAINT `t_macbook_ibfk_5` FOREIGN KEY (`fk_batterie`) REFERENCES `t_batterie` (`id_batterie`),
  ADD CONSTRAINT `t_macbook_ibfk_6` FOREIGN KEY (`fk_alimentation`) REFERENCES `t_alimentation` (`id_alimentation`),
  ADD CONSTRAINT `t_macbook_ibfk_7` FOREIGN KEY (`fk_annee`) REFERENCES `t_annee` (`id_annee`),
  ADD CONSTRAINT `t_macbook_ibfk_8` FOREIGN KEY (`fk_modele_macbook`) REFERENCES `t_modele_macbook` (`id_modele_macbook`),
  ADD CONSTRAINT `t_macbook_ibfk_9` FOREIGN KEY (`fk_ram`) REFERENCES `t_modele_ram` (`id_modele_ram`);

--
-- Contraintes pour la table `t_modele_ram`
--
ALTER TABLE `t_modele_ram`
  ADD CONSTRAINT `t_modele_ram_ibfk_1` FOREIGN KEY (`fk_technologie_ram`) REFERENCES `t_technologie_ram` (`id_technologie_ram`);

--
-- Contraintes pour la table `t_motherboard`
--
ALTER TABLE `t_motherboard`
  ADD CONSTRAINT `t_motherboard_ibfk_1` FOREIGN KEY (`fk_modele_motherboard`) REFERENCES `t_modele_motherboard` (`id_modele_motherboard`);

--
-- Contraintes pour la table `t_ram`
--
ALTER TABLE `t_ram`
  ADD CONSTRAINT `t_ram_ibfk_1` FOREIGN KEY (`fk_modele_ram`) REFERENCES `t_modele_ram` (`id_modele_ram`);

--
-- Contraintes pour la table `t_stockage`
--
ALTER TABLE `t_stockage`
  ADD CONSTRAINT `t_stockage_ibfk_1` FOREIGN KEY (`fk_type_stockage`) REFERENCES `t_type_stockage` (`id_type_stockage`);
COMMIT;

