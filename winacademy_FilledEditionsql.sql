-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 23 sep. 2022 à 12:21
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `winacademy`
--

-- --------------------------------------------------------

--
-- Structure de la table `college`
--

CREATE TABLE `college` (
  `college_id` int(11) NOT NULL,
  `college_Name` varchar(255) NOT NULL,
  `siteinternet` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `college`
--

INSERT INTO `college` (`college_id`, `college_Name`, `siteinternet`) VALUES
(1, 'Ben Tachfin', 'www.Tachfin.ma'),
(2, 'Caddi Ayad', 'WWW.CaddiAyad_@.ma'),
(5, 'Chinese People\'s Public Security University', 'paypal.com'),
(6, 'Gannon University', 'engadget.com'),
(7, 'Troy University, Dothan', 'house.gov'),
(8, 'Université de Kisangani', 'spotify.com'),
(9, 'Universitas Komputer Indonesia', NULL),
(10, 'Niger Delta University', NULL),
(11, 'Université Chrétienne Bilingue du Congo', 'altervista.org'),
(12, 'Yasar University', 'ebay.com'),
(13, 'University of Roorkee', 'shutterfly.com'),
(14, 'National University of Laos', NULL),
(15, 'Dalian University of Technology', NULL),
(16, ' L.D.College of Engineering', 'ucla.edu'),
(17, 'Universidad de León', 'amazon.de'),
(18, 'St. Petersburg State University', 'mysql.com'),
(19, 'Heilongjiang August 1st Reclamation University', 'illinois.edu'),
(20, 'Universidad de Aconcagua', 'ucoz.com'),
(21, 'Universidad Católica de Cuenca', 'pagesperso-orange.fr'),
(22, 'Hormozgan University of Medical Sciences', 'barnesandnoble.com');

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `departement_id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `college` int(255) NOT NULL,
  `responsable_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`departement_id`, `nom`, `college`, `responsable_id`) VALUES
(6, 'Departement Informatique', 16, NULL),
(7, 'Departement Physique', 1, NULL),
(8, 'Departement\nSport', 16, NULL),
(9, 'Departement des Sciences', 15, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `user_id` int(11) NOT NULL,
  `dateFonction` date NOT NULL,
  `matiere` int(11) DEFAULT NULL,
  `departement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`user_id`, `dateFonction`, `matiere`, `departement`) VALUES
(46, '2021-09-26', 6, 6),
(47, '2021-10-30', NULL, 7),
(48, '2019-05-07', 8, 6),
(49, '2019-06-04', 8, 9),
(50, '2022-01-02', NULL, 7),
(51, '2019-01-15', 4, 6),
(52, '2021-05-28', 5, 8),
(53, '2020-10-07', 4, 8);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `user_id` int(11) NOT NULL,
  `dateEntree` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`user_id`, `dateEntree`) VALUES
(1, '2021-09-17'),
(2, '2022-09-07'),
(3, '2021-12-26'),
(4, '2021-03-20'),
(5, '2021-06-11'),
(6, '2019-04-03'),
(7, '2021-07-08'),
(8, '2019-09-27'),
(9, '2022-06-04'),
(10, '2020-11-27'),
(11, '2018-10-25'),
(12, '2020-10-14'),
(13, '2021-06-22'),
(14, '2018-09-01'),
(15, '2020-11-09'),
(16, '2020-01-15'),
(17, '2021-11-09'),
(18, '2018-09-16'),
(19, '2019-02-18'),
(20, '2018-11-06'),
(21, '2021-07-24'),
(22, '2019-02-19'),
(23, '2022-02-23'),
(24, '2022-06-07'),
(25, '2019-06-04'),
(26, '2018-12-07'),
(27, '2020-08-09'),
(28, '2018-11-10'),
(29, '2021-04-10'),
(30, '2022-09-09');

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

CREATE TABLE `evaluation` (
  `ev_id` int(11) NOT NULL,
  `Nom_ev` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `evaluation`
--

INSERT INTO `evaluation` (`ev_id`, `Nom_ev`) VALUES
(1, 'Evaluation 1'),
(2, 'Evaluation 2'),
(3, 'Evaluation 3');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `matiere_id` int(11) NOT NULL,
  `matiere_title` varchar(100) DEFAULT NULL,
  `salle` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`matiere_id`, `matiere_title`, `salle`) VALUES
(1, 'Physique', 1),
(2, 'Science Vie & Terre', 2),
(3, 'Math', 4),
(4, 'French', 3),
(5, 'Programming', 5),
(6, 'Arabic', NULL),
(7, 'Sport', NULL),
(8, 'Philosophy', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `etudiant_id` int(11) NOT NULL,
  `matiere_id` int(11) NOT NULL,
  `note` float DEFAULT NULL,
  `ev_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`etudiant_id`, `matiere_id`, `note`, `ev_id`) VALUES
(2, 8, 4, 1),
(4, 4, 19.23, 1),
(13, 7, 12, 2),
(14, 1, 5.9, 3),
(14, 5, 10.9, 1),
(18, 5, 17.29, 3),
(29, 2, 16.29, 1),
(29, 3, 13, 1);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_title` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`role_id`, `role_title`) VALUES
(6, 'Admin'),
(7, 'Directeur'),
(9, 'Enseignant'),
(10, 'Etudiant');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `salle_id` int(11) NOT NULL,
  `salle_numero` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`salle_id`, `salle_numero`) VALUES
(1, 'NAMEK 1'),
(2, 'NAMEK 2'),
(3, '15'),
(4, 'Error 404'),
(5, 'Breaking Code'),
(6, 'Evaluation hub');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`user_id`, `lastName`, `firstName`, `phone`, `email`, `password`, `role`) VALUES
(1, 'Cherkaoui', 'Mohamed', '06181681', 'email@.ma', '123456', 10),
(2, 'Khadija', 'Makkaoui', '0902880208', 'email@.ma', '151715571', 10),
(3, 'Gocher', 'Calvin', '+86 (640) 893-7441', 'cgocher2@instagram.com', 'M4n1myu', 10),
(4, 'Matessian', 'Isak', '+86 (913) 116-9613', 'imatessian3@google.de', 'om6lxZjMV2', 10),
(5, 'Van Der Walt', 'Audy', '+62 (107) 927-0916', 'avanderwalt4@php.net', '3I1tyfL', 10),
(6, 'Baldack', 'Urbano', '+234 (589) 154-6647', 'ubaldack5@europa.eu', '8IKwTH3qJ4CD', 10),
(7, 'Solley', 'Binky', '+1 (402) 265-6544', 'bsolley6@phoca.cz', 'EdecfhA', 10),
(8, 'Plumley', 'Susette', '+63 (318) 816-5668', 'splumley7@imgur.com', 'FEH4MiXmmI', 10),
(9, 'Jeffcoat', 'Ashli', '+81 (970) 966-1306', 'ajeffcoat8@nydailynews.com', 'mEZtH6Z9CO7', 10),
(10, 'Cullivan', 'Mickey', '+593 (745) 741-6867', 'mcullivan9@nationalgeographic.com', '3AgMpeO', 10),
(11, 'Kubiak', 'Nelly', '+48 (610) 156-8249', 'nkubiaka@epa.gov', 'e8p0Ew5rhgEV', 10),
(12, 'Cordle', 'Katrine', '+86 (319) 769-5628', 'kcordleb@over-blog.com', 'ZwPNL3JrnF', 10),
(13, 'Lusher', 'Jacklyn', '+33 (498) 720-3924', 'jlusherc@seesaa.net', 'BQIxZWT3pLO', 10),
(14, 'Becarra', 'Jock', '+33 (719) 742-3228', 'jbecarrad@miibeian.gov.cn', 'ZoFDlI7jj7P', 10),
(15, 'Bruinemann', 'Ellen', '+55 (918) 421-3972', 'ebruinemanne@google.ru', 'CIz7yDwE9', 10),
(16, 'Eyles', 'Dian', '+48 (303) 624-3909', 'deylesf@google.com.au', 'JbAmOqEEZ', 10),
(17, 'Aplin', 'Conni', '+48 (569) 291-7724', 'capling@bloomberg.com', '4ehJvvU', 10),
(18, 'O\'Fairy', 'Evyn', '+57 (476) 253-7544', 'eofairyh@tinyurl.com', 'r5Z5XLo2Gv', 7),
(19, 'Look', 'Abey', '+7 (496) 167-5001', 'alooki@cpanel.net', '2y3cimPqgQ', 10),
(20, 'Lawrie', 'Conny', '+420 (929) 540-8247', 'clawriej@cocolog-nifty.com', 'js594p7DP', 10),
(21, 'Cicccitti', 'Lauretta', '+244 (230) 129-8803', 'lcicccittik@bloglovin.com', 'fiFUkt3Jr8L', 10),
(22, 'Humphrey', 'Ignacio', '+420 (279) 477-2527', 'ihumphreyl@reverbnation.com', 'QiPLcD4zT', 10),
(23, 'Finnimore', 'Amerigo', '+63 (923) 610-5330', 'afinnimorem@nature.com', 'ybyKgGFcK6M', 10),
(24, 'Westhoff', 'Maruser_idel', '+62 (534) 437-6378', 'mwesthoffn@rambler.ru', 'skLhkhA', 10),
(25, 'McGrowther', 'Guglielma', '+86 (692) 424-2441', 'gmcgrowthero@opensource.org', 'a5NGnCWdxq', 10),
(26, 'Rusbruser_idge', 'Ora', '+7 (757) 543-4892', 'orusbruser_idgep@miitbeian.gov.cn', 'RDPJZgQqqa8', 10),
(27, 'Revel', 'Travus', '+86 (836) 981-7905', 'trevelq@mayoclinic.com', 'N7rH7orB', 10),
(28, 'Pelosi', 'Fielding', '+1 (409) 424-3863', 'fpelosir@loc.gov', 'NDCppWafETy', 10),
(29, 'Berndt', 'Shawnee', '+52 (961) 902-5284', 'sberndts@army.mil', 'lCOrplqz', 10),
(30, 'Ritchard', 'Maritsa', '+62 (188) 910-3507', 'mritchardt@fema.gov', 'fJ9SDzuRp', 10),
(31, 'Heustace', 'Rab', '+351 (932) 768-7414', 'rheustaceu@oaic.gov.au', 'qD9t0n', 9),
(32, 'Mattersey', 'Matthew', '+46 (900) 443-7090', 'mmatterseyv@usnews.com', 'yT0Ns7lEBQSo', 10),
(33, 'Spinelli', 'Josy', '+63 (110) 333-2042', 'jspinelliw@t-online.de', 'q7C8fb7H1f', 10),
(34, 'Hatje', 'Gardener', '+86 (318) 381-4278', 'ghatjex@sbwire.com', 'tCk5oGpa', 10),
(35, 'Hobbema', 'Corella', '+86 (837) 830-7097', 'chobbemay@china.com.cn', 'yo8CSN', 10),
(36, 'Plail', 'Delcine', '+62 (698) 777-3496', 'dplailz@accuweather.com', 'Vsvj3DV', 10),
(37, 'Halford', 'Randee', '+351 (469) 203-5821', 'rhalford10@msn.com', 'rfP7BRmcB', 10),
(38, 'Showering', 'Melisse', '+373 (631) 891-3575', 'mshowering11@aboutads.info', 'kwFZ7zt', 10),
(39, 'Churchyard', 'Abigail', '+92 (675) 992-1725', 'achurchyard12@cisco.com', 'OxvwMyeMjjxD', 10),
(40, 'Slatcher', 'Robert', '+49 (676) 490-2043', 'rslatcher13@shinystat.com', '8S1AXbf2jIO', 10),
(41, 'Echalier', 'Trstram', '+63 (107) 402-0580', 'techalier14@csmonitor.com', 'P9NMOzgf', 10),
(42, 'Newdick', 'Dorise', '+58 (182) 257-3627', 'dnewdick15@hexun.com', 'mzneiETP', 10),
(43, 'Murdy', 'Joete', '+1 (714) 396-6451', 'jmurdy16@istockphoto.com', 'MMAeK7Hf3', 10),
(44, 'Nield', 'Massimiliano', '+63 (823) 326-3078', 'mnield17@sakura.ne.jp', 'dYQdpv', 10),
(45, 'Gobeaux', 'Miran', '+598 (388) 212-4535', 'mgobeaux18@jimdo.com', 'kg2eQRuyM62O', 10),
(46, 'Boshers', 'Mira', '+48 (829) 626-5106', 'mboshers19@nydailynews.com', 'gre1GC86q', 9),
(47, 'Bartoli', 'Laurie', '+86 (403) 196-7648', 'lbartoli1a@microsoft.com', 'xN87zn8VYtFF', 9),
(48, 'Alu', 'Farrah', '+53 (384) 613-0348', 'falu1b@indiatimes.com', 'jvvzcB6aan1t', 9),
(49, 'Roscamp', 'Bambie', '+86 (917) 162-4447', 'broscamp1c@uiuc.edu', 'wMTGR6G', 9),
(50, 'Warr', 'Lorettalorna', '+33 (653) 721-8596', 'lwarr1d@hud.gov', 'SVQUdXm1zdp1', 9),
(51, 'Ruthen', 'Delphinia', '+86 (270) 470-2678', 'druthen1e@seesaa.net', 'GdP630', 9),
(52, 'Mettrick', 'Perry', '+58 (135) 346-0585', 'pmettrick1f@sitemeter.com', 'tngnHNyZshrw', 9),
(53, 'Tison', 'Ivonne', '+355 (449) 576-6141', 'itison1g@plala.or.jp', 'kvFcwWFy', 9),
(54, 'Claringbold', 'Franzen', '+66 (146) 443-1842', 'fclaringbold1h@wisc.edu', 'Th2QUX86B0g5', 9),
(55, 'Frissell', 'Maribeth', '+66 (968) 950-4776', 'mfrissell1i@senate.gov', 'xerLDMVO', 9),
(56, 'Adran', 'Odele', '+254 (436) 392-5557', 'oadran1j@com.com', 'EPjdtUY', 9),
(57, 'MacCostigan', 'Francoise', '+86 (766) 457-2640', 'fmaccostigan1k@barnesandnoble.com', '3NxxjFd', 9),
(58, 'Bouchard', 'Liam', '+86 (277) 329-7192', 'lbouchard1l@vkontakte.ru', 'cXmHUcJ', 9),
(59, 'Silly', 'Cammi', '+86 (594) 946-4735', 'csilly1m@constantcontact.com', '2T211vJmD', 9),
(60, 'Mincini', 'Humfrey', '+95 (699) 520-5830', 'hmincini1n@reddit.com', 'Yc1jM29LsDGq', 9),
(61, 'Canner', 'Nat', '+55 (627) 936-0468', 'ncanner1o@godaddy.com', 'UBPUKMskIMG', 9),
(62, 'Lillegard', 'Araldo', '+389 (389) 249-4924', 'alillegard1p@webeden.co.uk', 'RU9sKRB3WTX', 9),
(63, 'Bote', 'Correy', '+63 (563) 956-1629', 'cbote1q@businessinsuser_ider.com', 'uSvKdaW3', 9),
(64, 'Semaine', 'Dexter', '+380 (411) 998-8513', 'dsemaine1r@sciencedaily.com', 'LmfUi19hE9k', 10),
(65, 'Wastall', 'Cam', '+1 (545) 771-1176', 'cwastall1s@slashdot.org', 'BvzNp3l4', 10),
(66, 'Bog', 'Trescha', '+86 (166) 241-2058', 'tbog1t@bloglovin.com', 'cK6SEwUn', 10),
(67, 'McIlwain', 'Kanya', '+351 (145) 553-9550', 'kmcilwain1u@businesswire.com', 'ZH4sEoR8', 10),
(68, 'Keelan', 'Zonda', '+60 (843) 167-3788', 'zkeelan1v@wiley.com', '21mICrp28l', 10),
(69, 'Achromov', 'Patty', '+86 (634) 478-2246', 'pachromov1w@berkeley.edu', 'kyuoet7ay', 10),
(70, 'Bathurst', 'Morten', '+1 (348) 141-2224', 'mbathurst1x@redcross.org', 'eQlOw6N', 10),
(71, 'Milward', 'Irina', '+351 (603) 252-8294', 'imilward1y@huffingtonpost.com', 'fIpo215', 10),
(72, 'Reilingen', 'Randi', '+86 (185) 497-9556', 'rreilingen1z@reverbnation.com', 'EWkQb7', 10),
(73, 'Kevern', 'Anthe', '+357 (894) 802-1619', 'akevern20@uol.com.br', 'j9ChZOVE5G', 10),
(74, 'Gealy', 'Town', '+994 (889) 593-6669', 'tgealy21@csmonitor.com', 'nOejlW0r', 10),
(75, 'Barby', 'Hewie', '+86 (911) 183-6517', 'hbarby22@bigcartel.com', 'g1fojn', 10),
(76, 'Penhaleurack', 'Lazaro', '+420 (443) 229-2951', 'lpenhaleurack23@ftc.gov', 'fKxeYXSNR', 10),
(77, 'Wallbruser_idge', 'Grazia', '+254 (718) 723-0103', 'gwallbruser_idge24@instagram.com', '3RNy1qaHK', 10),
(78, 'Trett', 'Elane', '+62 (850) 873-8701', 'etrett25@quantcast.com', 'ThD5fPsHdgL', 10),
(79, 'Readie', 'Louie', '+62 (652) 734-3775', 'lreadie26@foxnews.com', 'mK0gylzkfSs8', 10),
(80, 'Willbraham', 'Amalee', '+420 (744) 994-0254', 'awillbraham27@dyndns.org', 'DiylLLuJyx', 10),
(81, 'Pascoe', 'Aubine', '+84 (530) 473-8611', 'apascoe28@virginia.edu', 'gz4y3YCsOChl', 10),
(82, 'Cino', 'Taddeusz', '+255 (282) 180-8008', 'tcino29@scientificamerican.com', '65mcj5ZIs8', 10),
(83, 'Pelling', 'Zilvia', '+358 (658) 954-4798', 'zpelling2a@google.co.jp', 'ibEjHwi', 10),
(84, 'Delgaty', 'Aviva', '+1 (201) 143-4561', 'adelgaty2b@macromedia.com', 'mdRtByVkpWP', 10),
(85, 'Oen', 'Porter', '+86 (800) 797-3949', 'poen2c@cdc.gov', 'B2vhZDpt', 10),
(86, 'Janeczek', 'Hector', '+62 (508) 506-2350', 'hjaneczek2d@gmpg.org', 'mB2pPKK7M0', 10),
(87, 'Tipper', 'Warren', '+30 (153) 962-5062', 'wtipper2e@w3.org', '1juhEQL', 10),
(88, 'Crowe', 'Helen', '+86 (536) 440-3349', 'hcrowe2f@mtv.com', 't6asvLF0m5', 10),
(89, 'Adriano', 'Keely', '+86 (747) 202-3018', 'kadriano2g@wiley.com', 'wlXuWy2cM', 10),
(90, 'MacGall', 'Auguste', '+86 (614) 335-5173', 'amacgall2h@mashable.com', 'CpCkxT3', 10),
(91, 'Totton', 'Fairlie', '+591 (594) 591-8951', 'ftotton2i@soup.io', 'e6d0yMlK', 10),
(92, 'Marre', 'Cole', '+1 (530) 325-5900', 'cmarre2j@people.com.cn', 'pJnosdYrhcY', 10),
(93, 'Ollington', 'Adolphus', '+86 (624) 235-0732', 'aollington2k@theglobeandmail.com', 'nP8SUmH1', 10),
(94, 'Fevier', 'Cathy', '+33 (765) 380-4579', 'cfevier2l@pcworld.com', 'G57sRwLKxT', 10),
(95, 'Pimley', 'Oates', '+55 (399) 563-9553', 'opimley2m@hubpages.com', 'jeLPN2', 10),
(96, 'Gaylor', 'Scot', '+86 (302) 930-0393', 'sgaylor2n@mashable.com', 'D89FRkscVqN', 10),
(97, 'Hamal', 'Matt', '+86 (731) 245-4195', 'mhamal2o@gov.uk', 'w6HurR', 10),
(98, 'Ramas', 'Thom', '+62 (658) 636-6251', 'tramas2p@fc2.com', 'tGMOgIFhUh', 10),
(99, 'Spalding', 'Tamera', '+33 (148) 904-9509', 'tspalding2q@rambler.ru', 'j7nlwMC', 10),
(100, 'Sixsmith', 'Megen', '+507 (161) 680-9108', 'msixsmith2r@sohu.com', 'vJpo1l', 10),
(101, 'Carbert', 'Saunders', '+33 (330) 194-7629', 'scarbert2s@t.co', 'LfZrExN', 10),
(102, 'Hebborne', 'Vi', '+1 (361) 495-4587', 'vhebborne2t@discovery.com', 'BeyKOhHI', 10),
(103, 'Archdeckne', 'Daren', '+84 (954) 719-5982', 'darchdeckne2u@youtu.be', 'mtlc1zmEGKVO', 10),
(104, 'Wychard', 'Cobbie', '+48 (386) 744-1608', 'cwychard2v@cloudflare.com', 'xw1WpYT', 10),
(105, 'Labram', 'Augustina', '+1 (876) 593-3094', 'alabram2w@nymag.com', '1zIbuP9Db', 10),
(106, 'Vereker', 'Maxy', '+31 (186) 546-8822', 'mvereker2x@acquirethisname.com', 'qAlE0dx', 10),
(107, 'Jewsbury', 'Leisha', '+63 (605) 464-8307', 'ljewsbury2y@delicious.com', 'ZO3RDnXH', 10),
(108, 'Guppie', 'Berni', '+86 (942) 892-1123', 'bguppie2z@so-net.ne.jp', 'MVqgYnW6qsx', 10),
(109, 'Blaszczynski', 'Branden', '+55 (200) 277-0947', 'bblaszczynski30@joomla.org', 'aMERLxN26dN', 10),
(110, 'Hurlston', 'Eustacia', '+55 (860) 317-0842', 'ehurlston31@psu.edu', 'cmSRViUhVZy9', 10),
(111, 'Barbey', 'Anitra', '+505 (845) 437-1200', 'abarbey32@aol.com', 'TgTiwUF8', 10),
(112, 'Thorowgood', 'Alvina', '+973 (727) 187-4066', 'athorowgood33@fotki.com', 'zYO3EbvT', 10),
(113, 'Eaglestone', 'Morissa', '+86 (484) 899-0790', 'meaglestone34@soundcloud.com', 'uk8rQLBPcIpW', 10),
(114, 'Gamett', 'Graehme', '+1 (302) 250-7928', 'ggamett35@netlog.com', 'G2aDNiA4jovA', 10),
(115, 'Howen', 'Guenna', '+359 (568) 536-1496', 'ghowen36@skype.com', 'LSL5w1mY6Ar', 10),
(116, 'Paolinelli', 'Alanna', '+62 (564) 262-3128', 'apaolinelli37@ycombinator.com', 'u9dIQwVaJDO', 10),
(117, 'Garnall', 'Jacobo', '+62 (463) 809-1390', 'jgarnall38@cmu.edu', 'bUm3Az', 10),
(118, 'Bachs', 'Dewain', '+7 (659) 896-7708', 'dbachs39@omniture.com', 'KJ6geUY', 10),
(119, 'MacGown', 'Elsworth', '+7 (255) 911-1117', 'emacgown3a@tiny.cc', 'W6JaFALxH3U', 10),
(120, 'Kenen', 'Wallache', '+33 (346) 793-7191', 'wkenen3b@imdb.com', 'FsJqa48', 10),
(121, 'Jallin', 'Bertram', '+46 (704) 521-0659', 'bjallin3c@meetup.com', '4HOXpAH347', 10),
(122, 'Stoke', 'Cleopatra', '+267 (933) 573-1787', 'cstoke3d@ameblo.jp', 'SwfxSj0', 10),
(123, 'Darracott', 'Anastasia', '+33 (419) 289-7592', 'adarracott3e@unblog.fr', 'FEViUB', 10),
(124, 'Lamlin', 'Felicio', '+46 (191) 831-5107', 'flamlin3f@istockphoto.com', 'xco32UuG', 10),
(125, 'Eastmead', 'Fionna', '+54 (120) 548-6279', 'feastmead3g@cnn.com', 'moRilVSpczg', 10),
(126, 'Edwardson', 'Toby', '+7 (240) 758-2075', 'tedwardson3h@gmpg.org', 'nObCv8', 10),
(127, 'Schwaiger', 'Dolly', '+33 (710) 107-3640', 'dschwaiger3i@joomla.org', 'mnIMIf7', 10),
(128, 'Askem', 'Katti', '+880 (651) 175-1366', 'kaskem3j@omniture.com', 'BOW1TeK8c', 10),
(129, 'Gilbruser_ide', 'Phillipp', '+52 (130) 270-1557', 'pgilbruser_ide3k@cpanel.net', 'k4JxPqHeub', 10),
(130, 'Sandwith', 'Bat', '+30 (557) 698-5628', 'bsandwith3l@cornell.edu', 'UuU2HFoZQ', 10),
(131, 'Pietzker', 'Carlyn', '+66 (990) 143-4117', 'cpietzker3m@godaddy.com', 'XqLDNae3', 10),
(132, 'Bouchier', 'Lucinda', '+55 (834) 429-1708', 'lbouchier3n@is.gd', 'JZ8cBb3', 10),
(133, 'Shury', 'Babette', '+234 (331) 820-2982', 'bshury3o@feedburner.com', 'PDNWUswuu', 10),
(134, 'Willman', 'Daisie', '+52 (637) 150-7036', 'dwillman3p@yolasite.com', 'JAlO1gar4p', 10),
(135, 'Dewbury', 'Maryl', '+380 (117) 926-8309', 'mdewbury3q@upenn.edu', 'ekgkjT3wJ', 10),
(136, 'Geekie', 'Roma', '+62 (466) 215-7259', 'rgeekie3r@amazonaws.com', 'Mc8rin0V1uHe', 10),
(137, 'Hartshorne', 'Toddy', '+86 (135) 576-3571', 'thartshorne3s@creativecommons.org', 'AeQJgPFLfHCF', 10),
(138, 'Arguile', 'Damiano', '+86 (125) 973-4619', 'darguile3t@amazonaws.com', 'jPTAPDQS', 10),
(139, 'Risely', 'Deane', '+7 (510) 385-4835', 'drisely3u@google.fr', 'IiRKg0PV7Ls', 10),
(140, 'Goodbody', 'Dolph', '+976 (450) 672-8486', 'dgoodbody3v@usgs.gov', 'D3OwqjRj7p', 10),
(141, 'Boykett', 'Philippa', '+48 (838) 104-8729', 'pboykett3w@etsy.com', 'OpVP4uZP', 10),
(142, 'Pessel', 'Nettle', '+86 (154) 458-0038', 'npessel3x@noaa.gov', 'GoiCwV', 10),
(143, 'Peaurt', 'Michele', '+7 (836) 688-3389', 'mpeaurt3y@360.cn', 'ltv7TGC', 10),
(144, 'Galero', 'Aprilette', '+54 (823) 353-8958', 'agalero3z@toplist.cz', 'NUDhPv', 10),
(145, 'Braker', 'Doy', '+1 (330) 139-1789', 'dbraker40@blogspot.com', 'm5l8WwE', 10),
(146, 'Gunthorpe', 'Marwin', '+31 (614) 581-6351', 'mgunthorpe41@wufoo.com', 'fvqqvqz3Uc', 10),
(147, 'Medwell', 'Ossie', '+86 (742) 508-4688', 'omedwell42@pbs.org', 'scfj2C', 10),
(148, 'Epple', 'Cris', '+1 (581) 848-8815', 'cepple43@examiner.com', 'XyjiVe', 10),
(149, 'Vase', 'Portie', '+58 (490) 587-1502', 'pvase44@ihg.com', 'vQZgGh41p6xM', 10),
(150, 'Chantillon', 'Dorolisa', '+82 (686) 757-1696', 'dchantillon45@cnn.com', '8xOYQfd4', 10),
(151, 'Suser_iddens', 'Sophie', '+1 (122) 172-5052', 'ssuser_iddens46@google.com.hk', 'eMgkoMJ', 10),
(152, 'Lavens', 'Alister', '+86 (836) 826-6938', 'alavens47@elpais.com', 'uLK4nNYaDp', 10),
(153, 'McKevitt', 'Udall', '+86 (247) 440-4601', 'umckevitt48@php.net', 'kyoroe1hR70K', 10),
(154, 'Rickasse', 'Rainer', '+48 (932) 196-5781', 'rrickasse49@bauser_idu.com', 'B67MGt6jt', 10),
(155, 'Noakes', 'Tito', '+86 (673) 862-3397', 'tnoakes4a@bbb.org', '7aX0KtRrhb', 10),
(156, 'Jasik', 'Giulio', '+30 (272) 453-8312', 'gjasik4b@hud.gov', 'Ho6Dpeow', 10),
(157, 'Missen', 'Anton', '+86 (465) 349-2293', 'amissen4c@miitbeian.gov.cn', 'AfvoBy', 10),
(158, 'Cassella', 'Franchot', '+593 (626) 764-4991', 'fcassella4d@weebly.com', 'esmRGqAaUZ3', 10),
(159, 'Belverstone', 'Allegra', '+86 (696) 157-3012', 'abelverstone4e@facebook.com', 'GlRe3JV5qh', 10),
(160, 'Danielovitch', 'Aime', '+1 (471) 774-2795', 'adanielovitch4f@bloglovin.com', 'uznSka5xaQ', 10),
(161, 'Kampshell', 'Julian', '+86 (331) 202-1429', 'jkampshell4g@homestead.com', 'U265TTzFu5', 10),
(162, 'Scarlett', 'Suser_idonnie', '+55 (126) 229-8506', 'sscarlett4h@vk.com', 'XUxRCnzMVdnP', 10),
(163, 'Josskovitz', 'Lukas', '+62 (178) 914-0064', 'ljosskovitz4i@goo.ne.jp', 'cpYDBiI', 10),
(164, 'Ruberry', 'Sigismund', '+7 (746) 861-0982', 'sruberry4j@dyndns.org', 'XNDodURR', 10),
(165, 'Frankis', 'Don', '+86 (979) 823-3719', 'dfrankis4k@e-recht24.de', '2yfQsKT', 10),
(166, 'McCurdy', 'Natassia', '+86 (224) 591-4505', 'nmccurdy4l@nba.com', 'jVphuVw', 10),
(167, 'Dmych', 'Salomone', '+66 (186) 628-1368', 'sdmych4m@hc360.com', 'gq5zVj8d', 10),
(168, 'Cawkill', 'Paquito', '+385 (624) 730-3649', 'pcawkill4n@bigcartel.com', 'hDsr8mQrur', 10),
(169, 'Reddle', 'Roselin', '+351 (832) 640-0757', 'rreddle4o@omniture.com', 'nVQUE2Y', 10),
(170, 'Lytle', 'Amalee', '+55 (367) 278-9499', 'alytle4p@unicef.org', 'rJkpAe6P700q', 10),
(171, 'Duplan', 'Mallory', '+81 (818) 960-0201', 'mduplan4q@spiegel.de', 'AZDPRk105a', 10),
(172, 'Schuchmacher', 'Shelby', '+420 (302) 664-8827', 'sschuchmacher4r@macromedia.com', 'WRfZH9', 10),
(173, 'Crampsey', 'Robin', '+63 (644) 869-2001', 'rcrampsey4s@tumblr.com', 'UMyR5wQNBHM', 10),
(174, 'Oleszczak', 'Diannne', '+976 (133) 542-3595', 'doleszczak4t@washington.edu', 'ESn6RuzG', 10),
(175, 'Phuprate', 'Viv', '+62 (653) 512-6062', 'vphuprate4u@hao123.com', 'EGW9rApn8YpZ', 10),
(176, 'Hickford', 'Westleigh', '+92 (579) 545-2474', 'whickford4v@buzzfeed.com', 'nx8sUxz', 10),
(177, 'Shermar', 'Euell', '+1 (761) 139-0875', 'eshermar4w@theatlantic.com', 'h2j87TWKCE7T', 10),
(178, 'Gabbetis', 'Tessi', '+86 (202) 791-3757', 'tgabbetis4x@list-manage.com', 'lbHLz5', 10),
(179, 'Jakeman', 'Maynard', '+267 (387) 997-4298', 'mjakeman4y@networkadvertising.org', '6ukTZ2', 10),
(180, 'Gonthard', 'Manda', '+1 (983) 486-5078', 'mgonthard4z@moonfruit.com', 'ozePDB', 10),
(181, 'Klemencic', 'Sadella', '+502 (341) 465-2873', 'sklemencic50@google.it', 'Ivuq7ah', 10),
(182, 'Ducker', 'Clarey', '+46 (571) 340-3605', 'cducker51@java.com', 'ugIaqK', 10),
(183, 'Van den Bosch', 'Chandal', '+92 (552) 177-4931', 'cvandenbosch52@gravatar.com', '02sHlSq7U', 10),
(184, 'Huckin', 'Evan', '+46 (624) 206-5114', 'ehuckin53@mashable.com', 'el6hnmy', 10),
(185, 'Cadden', 'Aguste', '+81 (789) 784-1027', 'acadden54@hexun.com', 'PdrhaNxLW3U', 10),
(186, 'Dressell', 'Cooper', '+385 (761) 298-9216', 'cdressell55@youku.com', 'm1ALRXzB1Q', 10),
(187, 'Wilkinson', 'Denney', '+261 (349) 569-0661', 'dwilkinson56@vinaora.com', 'XDPtz1N', 10),
(188, 'Seymour', 'Greggory', '+52 (120) 373-1103', 'gseymour57@blinklist.com', 'hdyedTTpS1w', 10),
(189, 'Breffit', 'Ravuser_id', '+351 (389) 819-6012', 'rbreffit58@state.tx.us', 'unpybZe', 10),
(190, 'Rubinowitsch', 'Franchot', '+7 (891) 414-3086', 'frubinowitsch59@cargocollective.com', 'FxtVZtGOS6', 10),
(191, 'Goodley', 'Brande', '+55 (118) 726-4148', 'bgoodley5a@discovery.com', 'qhkuesbtzI', 10),
(192, 'Vannacci', 'Gabriello', '+7 (691) 566-3945', 'gvannacci5b@cdc.gov', '2gtKOCwV37b', 10),
(193, 'Ludlamme', 'Basilio', '+62 (900) 860-5706', 'bludlamme5c@imgur.com', 'dnn5uPm', 10),
(194, 'Lacroutz', 'Basilius', '+1 (632) 718-5052', 'blacroutz5d@about.com', 'Byfl7oJx', 10),
(195, 'Worms', 'Jillane', '+358 (706) 195-6867', 'jworms5e@adobe.com', '6Pr6FNNlN', 10),
(196, 'Stife', 'Rog', '+995 (537) 282-4805', 'rstife5f@github.com', 'LNcyWR8GL', 10),
(197, 'Anelay', 'Dacia', '+7 (734) 295-7292', 'danelay5g@kickstarter.com', 'urHaABoKFN', 10),
(198, 'McCarrick', 'Alastair', '+351 (187) 523-8624', 'amccarrick5h@is.gd', 'IcYCkdMEA', 10),
(199, 'Ellar', 'Lolly', '+62 (488) 114-5268', 'lellar5i@people.com.cn', 'sE8l5iS1', 10),
(200, 'Fawley', 'Reg', '+52 (537) 687-9657', 'rfawley5j@arstechnica.com', 'x4BoeV', 10),
(201, 'Matantsev', 'Renee', '+355 (540) 188-4009', 'rmatantsev5k@jimdo.com', '7EAmlz3UF', 10),
(202, 'Laurens', 'Bee', '+7 (348) 132-3936', 'blaurens5l@comsenz.com', 'wtGNOu6', 10),
(203, 'Cush', 'Ardine', '+82 (149) 852-5222', 'acush5m@addtoany.com', 'sot18l', 10),
(204, 'Trood', 'Pauli', '+49 (725) 861-8788', 'ptrood5n@mit.edu', 'YoGVqV9iTPBZ', 10),
(205, 'Tourner', 'Haywood', '+86 (917) 674-3607', 'htourner5o@icio.us', 'dQpszwiRM', 10),
(206, 'Dobbing', 'Philip', '+62 (199) 201-0297', 'pdobbing5p@prweb.com', 'FnK3ROuwU', 10),
(207, 'Tukely', 'Gorden', '+1 (915) 836-2252', 'gtukely5q@last.fm', 'BXB2q4C2VaQ', 10);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`college_id`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`departement_id`),
  ADD KEY `college` (`college`),
  ADD KEY `responsable_id` (`responsable_id`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `matiere` (`matiere`),
  ADD KEY `departement` (`departement`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`ev_id`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`matiere_id`),
  ADD KEY `salle` (`salle`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`etudiant_id`,`matiere_id`),
  ADD KEY `ev_id` (`ev_id`),
  ADD KEY `matiere_id` (`matiere_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`salle_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role` (`role`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `college`
--
ALTER TABLE `college`
  MODIFY `college_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `departement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `ev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `matiere_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
  MODIFY `salle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `departement`
--
ALTER TABLE `departement`
  ADD CONSTRAINT `departement_ibfk_1` FOREIGN KEY (`college`) REFERENCES `college` (`college_id`),
  ADD CONSTRAINT `departement_ibfk_2` FOREIGN KEY (`responsable_id`) REFERENCES `enseignant` (`user_id`);

--
-- Contraintes pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD CONSTRAINT `enseignant_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `enseignant_ibfk_2` FOREIGN KEY (`matiere`) REFERENCES `matiere` (`matiere_id`),
  ADD CONSTRAINT `enseignant_ibfk_3` FOREIGN KEY (`departement`) REFERENCES `departement` (`departement_id`);

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Contraintes pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD CONSTRAINT `matiere_ibfk_1` FOREIGN KEY (`salle`) REFERENCES `salle` (`salle_id`);

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`matiere_id`) REFERENCES `matiere` (`matiere_id`),
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`etudiant_id`) REFERENCES `etudiant` (`user_id`),
  ADD CONSTRAINT `note_ibfk_3` FOREIGN KEY (`ev_id`) REFERENCES `evaluation` (`ev_id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
