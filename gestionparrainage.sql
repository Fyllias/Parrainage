-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 21 jan. 2025 à 22:18
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
-- Base de données : `gestionparrainage`
--

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `matricule` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_option` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `prenom`, `matricule`, `email`, `phone`, `password`, `id_option`, `image`, `created_at`, `updated_at`) VALUES
(2, 'LINJOUOM', 'Alain Pascal', '23G01212', 'linjouom9@gmail.com', '696-855-129', '$2y$12$PPi4rVoOrpFiydeVD4mvZ.dXQ1WEy/vCRlm7.Sh0qjXeTMZqLRxyW', '4', 'favicon.png', '2024-12-09 08:09:16', '2024-12-09 08:09:16'),
(13, 'MEKONTCHOU', 'Fyllias', '23G01056', 'nanguefyllias@gmail.com', '657-077-556', '$2y$12$PPi4rVoOrpFiydeVD4mvZ.dXQ1WEy/vCRlm7.Sh0qjXeTMZqLRxyW', '4', 'images/1733890554.jpg', '2024-12-11 03:15:54', '2024-12-11 03:15:54'),
(14, 'HESSACK', 'Ryan', '21G00014', 'ryansteevehessack@gmail.com', '691-661-388', '$2y$12$Cs7ziJ8DDA1KK.JrX/oYVuhKcHdIQuUAWcIJNMG3AlDMzaCIO31wa', '4', 'images/1733893729.jpg', '2024-12-11 04:08:49', '2024-12-11 04:08:49'),
(15, 'EKEN', 'Carmel', '21G00191', 'carmeleken929@gmail.com', '651-708-265', '$2y$12$rQzxAIkyo2fdiiikxoW9..SFe2M3D6nxvHAqi1GFCyvDhqwAn2yTW', '4', 'images/1733894110.jpg', '2024-12-11 04:15:11', '2024-12-11 04:15:11'),
(16, 'Domtchueng Foubi', 'Joan Rayn', '21G00316', 'joanrayn123@gmail.com', '692-434-547', '$2y$12$jvXDKES16nGdcNJldexyRuBbaLqvgGj7yQxtTE3OHzoxFXbg/KxYK', '4', NULL, '2024-12-11 04:31:41', '2024-12-11 04:31:41'),
(17, 'Djoukeng', 'Jovanie briyana', '21G00245', 'joviedjouks@gmail.com', '671-413-454', '$2y$12$UoEqtZyTOR2dcMhEPosOwuAJyMo0DJYxP4ldgNInWMhrzJ8obziQu', '6', NULL, '2024-12-11 04:41:53', '2024-12-11 04:41:53'),
(18, 'Tamba', 'Adrien', '21G00220', 'adrientamba96@gmail.com', '696-838-039', '$2y$12$qKot89n80OPmCBAtTyDRfek.Bp9NaM4f2.KKc6bZ/g359xm3q6bSm', '4', 'images/1733896386.jpg', '2024-12-11 04:53:07', '2024-12-11 04:53:07'),
(19, 'TIZE', 'Ibrahim', '22G00397', 'tizeahmed750@gmail.com', '698-385-734', '$2y$12$PPi4rVoOrpFiydeVD4mvZ.dXQ1WEy/vCRlm7.Sh0qjXeTMZqLRxyW', '3', NULL, '2024-12-11 04:59:48', '2024-12-11 04:59:48'),
(20, 'Elisha Bitimbhe', 'Domitien Junior', '22G00111', 'bitimbheelisha@gmail.com', '651-956-982', '$2y$12$R.28jqVx2nbdBWRQyO3h7OpUzpmhjm15Rd5nyrh2GaZjpJT83L7M.', '5', NULL, '2024-12-11 05:00:06', '2024-12-11 05:00:06'),
(21, 'Bogmis', 'Alexandre', '24G01109', 'alexandrebogmis@gmail.com', '691-174-481', '$2y$12$Y9.s37QvkX4nPgPPFxOO9eU.4SKj1f.yAtUvFT1.UsegPxRFL8OoO', '3', NULL, '2024-12-11 05:00:48', '2024-12-11 05:00:48'),
(22, 'Djob', 'Evrard', '21G00459', 'evrarddjob41@gmail.com', '695-233-552', '$2y$12$9QuQ6bhvO95oLb.e6eigWe5B1BBz5a411AY/uPT4hgY7j122H7rPC', '4', 'images/1733896870.jpg', '2024-12-11 05:01:11', '2024-12-11 05:01:11'),
(23, 'FOGANG', 'SAMUEL', '22G00135', 'fogangvalerin@gmail.com', '690-865-044', '$2y$12$kcMJh/dax9IYMqMjfPWzQ.yk0Z5cYRx8/6rcz8QwyBYik4HuL7SwO', '3', 'images/1733896908.jpg', '2024-12-11 05:01:48', '2024-12-11 05:01:48'),
(24, 'Agassem', 'Florentin', '24G01072', 'agassemflorentin@gmail.com', '697-117-458', '$2y$12$c6WSIOqynHcLWh1nBssUWOeUSRq0F9ov4eTvm1H.7qBWP63cb9YP.', '3', NULL, '2024-12-11 05:01:52', '2024-12-11 05:01:52'),
(25, 'Mohamadou', 'Abdoul Fatah', '22G00002', 'abdoulfatahm@icloud.com', '655-807-859', '$2y$12$YgDT88h4Wv39VaS9ttDoD.Ht4CZis5CBIPEoiGXwHynSAttTJbI.i', '5', NULL, '2024-12-11 05:01:52', '2024-12-11 05:01:52'),
(26, 'TEZEM YEMETIO', 'Teddy Miguel', '24G01133', 'tezemmiguel31@gmail.com', '651-052-553', '$2y$12$e3fyb.nj9vAbPvuNiXWjouGdCz2z49p2GS94h0ghdvYQIjKFm8Efq', '3', NULL, '2024-12-11 05:02:09', '2024-12-11 05:02:09'),
(27, 'NZEUTEM', 'Eunice', '22G00347', 'eunicefelixtine709@gmail.com', '656-792-837', '$2y$12$9fkvKxasnOa9gUUtBoUwDeKSQ.d0TEWU4gkJzRel4TQKoUg1IAcye', '3', 'images/1733896971.jpg', '2024-12-11 05:02:52', '2024-12-11 05:02:52'),
(28, 'Nkamoloum', 'Anthony', '22G00328', 'anthonynkamoloum@gmail.com', '659-101-545', '$2y$12$VjJPSkoiYlWHmNN7u6PvKO7XucmoNINgi1TEYtg/ZQH/eaB2gj6A.', '3', NULL, '2024-12-11 05:02:56', '2024-12-11 05:02:56'),
(29, 'Nzome', 'Eric', '21G00073', 'ericnzome7@gmail.com', '658-287-446', '$2y$12$s0u8v35JoqQc.U4gtgrVKuGn.RI81GyxOoJXpmpZ6lHWqEhlRmeeC', '6', NULL, '2024-12-11 05:02:56', '2024-12-11 05:02:56'),
(30, 'Belle mandengue', 'Maeva-Ericka', '24G01080', 'mbellemandeng@gmail', '695-872-091', '$2y$12$C0.6L0l0./QcJG148nxxj.tsY21WYoc2aIFCnX3RXJSuWF.s0aM2.', '3', NULL, '2024-12-11 05:03:49', '2024-12-11 05:03:49'),
(31, 'Ngambi', 'Wilfried', '22G00303', 'ngambiwilfried506@gmail.com', '680-851-355', '$2y$12$HHzDMTBfl/Zm6IppSQG8/eovuBi1fkqXiCCz/mhC/ozPciv3ru6.W', '3', NULL, '2024-12-11 05:04:15', '2024-12-11 05:04:15'),
(32, 'NZONNOU', 'Grace', '22G00350', 'nzonnougrace@gmail.com', '690-403-415', '$2y$12$GJXhV.FH8tieu8fnClu9kO4BkdarjtWsnqxe3FhlbJS73x.URT0He', '3', NULL, '2024-12-11 05:04:54', '2024-12-11 05:04:54'),
(33, 'Tchemi', 'Yvan', '22G00385', 'yvantchemi1@gmail.com', '694-128-292', '$2y$12$qkf21SQ2YF5DLb3DWMzM0.AtWRTFCOX2tIxy0f.EhH5SljNrKJWUa', '3', 'images/1733897095.jpg', '2024-12-11 05:04:55', '2024-12-11 05:04:55'),
(34, 'Diom', 'Lethicia', '22G00071', 'diomlethicia@gmail.com', '679-660-706', '$2y$12$s3ga4uxoI/H6VU/EApbzb.vqOvG2ja059YnQz6buZm5QFIl2SJWmq', '3', 'images/1733897109.jpg', '2024-12-11 05:05:09', '2024-12-11 05:05:09'),
(35, 'Djiki', 'Arthur', '24G01084', 'arthurdjiki03@gmail.com', '692-370-021', '$2y$12$jHyFgNYW4vEF1mg.hxvX0OGatx526a4DC5e.SFWhrrhA6PukMC172', '3', NULL, '2024-12-11 05:05:12', '2024-12-11 05:05:12'),
(36, 'AKOUDJOU MBA', 'Noëlly Christela', '22G00007', 'mbachristela@gmail.com', '658-580-818', '$2y$12$XKgtSkRLlL3bqcfQOydPoOrA0Ush2nNqortP0ZdEKfRNuj398nkQm', '3', NULL, '2024-12-11 05:06:11', '2024-12-11 05:06:11'),
(37, 'FEUPA TCHAKOUNTE', 'Pierre Nathan', '22G00131', 'tchakountenathan277@gmail.com', '699-106-417', '$2y$12$2Axf5vXZ7rTz5Cq9iRQrPunX1hbmEDydVvQdp8Qewa28wB1qR2JqS', '3', NULL, '2024-12-11 05:06:17', '2024-12-11 05:06:17'),
(38, 'NZIE', 'MARC', '22G00348', 'marcvictornzienzouango@gmail.com', '658-155-084', '$2y$12$S.h7sBD/8O5F6QvxfDcgauIkvEcKGdgd5uxCkPvgclx6a6cjao302', '3', NULL, '2024-12-11 05:06:19', '2024-12-11 05:06:19'),
(39, 'FOMEKONG TATONG', 'Alphred', '24G01091', 'alphredtatong@gmail.com', '651-138-433', '$2y$12$AdK2pXUSZcoWGz/cu/D4reqmnKnuCeWfK.Yh/upx7J2AbMIn97FHa', '3', 'images/1733897204.jpg', '2024-12-11 05:06:44', '2024-12-11 05:06:44'),
(40, 'AYONG', 'JULIEN', '22G00026', 'julienayong@yahoo.com', '690-286-047', '$2y$12$0ZFC.Vw6fmDsZVhtIb9cTuKLkj/TXHbyQoCJpZqaNfSjgzSSkyIda', '3', 'images/1733897249.jpg', '2024-12-11 05:07:30', '2024-12-11 05:07:30'),
(41, 'Tsago', 'Adam', '22G00537', 'adamtsago@gmail.com', '695-639-612', '$2y$12$y0TwEMy2ln7CtkZbDpIzzuOEGZfPfEmI.mslTxuQk/r7cgbWETTL2', '5', NULL, '2024-12-11 05:08:53', '2024-12-11 05:08:53'),
(42, 'Kouodzo', 'Reginia', '22G00474', 'reginiazangue84@gmail.com', '677-777-777', '$2y$12$Wx41.h7a34RUtp9zAxzKfubBwcZWcsQWiZ75tWvci4QTfR64TfjVq', '3', NULL, '2024-12-11 05:09:06', '2024-12-11 05:09:06'),
(43, 'Youmbissie', 'Chrétien', '22G00173', 'kamdeuchretien@gmail.com', '672-431-150', '$2y$12$fffyg0.dK8xf52oajmccD.SpSSeOCeXKFOt2uixRYgsFO3iV8KrIC', '3', 'images/1733897355.jpg', '2024-12-11 05:09:15', '2024-12-11 05:09:15'),
(44, 'Nguene', 'Leonel maxime', '22G00210', 'leonelnguene44@gmail.com', '695-406-711', '$2y$12$IbIvnUvNPoUCRNJ6aBKS4OVQIbO8z7qrEtKSLODBPjO.QsA/gBOsK', '3', 'images/1733897356.jpg', '2024-12-11 05:09:16', '2024-12-11 05:09:16'),
(45, 'PEWELI ASSALA', 'Anayice', '22G00515', 'anayiceassala@gmail.com', '655-973-750', '$2y$12$muM2PvpqJI63.Q1eBjQj3OUlvFJH1HG0.JTF8Q5258zIprFjXQuUK', '3', NULL, '2024-12-11 05:10:03', '2024-12-11 05:10:03'),
(46, 'AWONO', 'JOACHIN', '24G01075', 'awonojoachin25@gmail.com', '658-236-811', '$2y$12$LSaUXGrMT2JzDTwrYqCpT.L/GAnEw8RnFr9ya16cqLPro40hQHOrW', '5', 'images/1733897441.jpg', '2024-12-11 05:10:42', '2024-12-11 05:10:42'),
(47, 'MAYIBA MPOUDI', 'PARFAIT', '22G00236', 'mpoudimayibaloveparfait@gmail.com', '657-642-329', '$2y$12$4TLNSz6LwWj8.LWVkQihOuV3iGh8xtV9Z7xGYt6SYfDfhgmNVQYIu', '5', NULL, '2024-12-11 05:10:43', '2024-12-11 05:10:43'),
(48, 'BADING BADING', 'ADOLPHE', '21G00097', 'juniorbading5@gmail.com', '693-386-073', '$2y$12$stmS4t8.UnmYAn7dXAUOcuuJ1ZUYnJ9fMfqBHcjAH878u6Lq/4/ny', '4', NULL, '2024-12-11 05:10:57', '2024-12-11 05:10:57'),
(49, 'BONGUE', 'Beaudrigue', '22G00431', 'beaudriguebongue6@gmail.com', '678-203-468', '$2y$12$r0c7NP.y1Z6XylaeDLAlHOk48CbMmrW08GNfpdRKvnRW6P7uRme8.', '5', NULL, '2024-12-11 05:11:05', '2024-12-11 05:11:05'),
(50, 'Nolack', 'Frange', '22G00335', 'frangeparker45@gmail.com', '671-566-905', '$2y$12$2Y3QZ7AkuFZf6sa.zQ10B.9/wzMJ4ficzRSzZlJn4EAz5BZJj7EQi', '3', NULL, '2024-12-11 05:11:51', '2024-12-11 05:11:51'),
(51, 'Atangana ayissi', 'Nestor', '22G00018', 'atanganaayissinestor123@gmail.com', '697-763-989', '$2y$12$3eBP3UdfAMasywTwGOBXSu5miwbXIjhXRythT4Q0EhjC8z1xwDZ6K', '3', 'images/1733897547.jpg', '2024-12-11 05:12:27', '2024-12-11 05:12:27'),
(52, 'NGAMENI', 'Loïc', '22G00304', 'ngamsloic@gmail.com', '693-961-152', '$2y$12$1k4B3WmNGYKF2YzeezOUAOmOksBuJAIfCryiNb3X6E45JDTT3MnF.', '5', 'images/1733897634.jpg', '2024-12-11 05:13:55', '2024-12-11 05:13:55'),
(53, 'SONNA FOUEKENG', 'Divan Fraichenel', '22G00519', 'fresnelzoneo@gmail.com', '697-846-814', '$2y$12$nFlyWC9GkOy/KsStszKll.8KKl9mCZHKdxkqzmVqjlysH2Hoz93ti', '3', 'images/1733897664.jpg', '2024-12-11 05:14:24', '2024-12-11 05:14:24'),
(54, 'Voumia', 'Dilane', '22G00541', 'dilanevoumia9@gmail.com', '699-548-614', '$2y$12$/0892avAYftYm.kTwW8uOeK089UbstoHOo9AwerDl4ulSWV6Ivqui', '3', NULL, '2024-12-11 05:15:16', '2024-12-11 05:15:16'),
(55, 'Bayihe', 'Karis Deborah', 'Aucun pour le moment (Liste d’attente)', 'deborahbayihe@gmail.com', '651-422-543', '$2y$12$2Kfki1d/b3T1TCYSvJQsOOI9dM71nOUAxRyJvvzFsApBHDtspWh6K', '5', 'images/1733897738.jpg', '2024-12-11 05:15:38', '2024-12-11 05:15:38'),
(56, 'Ambo\'o', 'Ddjunette', '22G00010', 'ddjunette@gmail.com', '652-569-181', '$2y$12$O9nIb/Nfkd44Pd7D4E4QlOwV2La0QnhAPPi0R5Ie7/w49FsO1x.mS', '3', 'images/1733897759.jpg', '2024-12-11 05:16:00', '2024-12-11 05:16:00'),
(57, 'TAWE', 'Marius', '22G00383', 'mariustawe22@gmail.com', '658-554-805', '$2y$12$0EqkfughWXF/dnFKPHrXbOZpbo2CQchdC/a7wfCD91iuJ/tkidKZC', '3', NULL, '2024-12-11 05:16:25', '2024-12-11 05:16:25'),
(58, 'CHETEU', 'Evrad', '22G00432', 'evradlaurel@gmail.com', '651-192-915', '$2y$12$1DLimwCNjiQU.bFS68zJ8uh266Fp1egPdac.EQY69fmL5EXr/MVoS', '3', NULL, '2024-12-11 05:16:28', '2024-12-11 05:16:28'),
(59, 'Ngo Biholong', 'Francine', '24GL0079', 'francinemarthe17@gmail.com', '686-153-670', '$2y$12$L9Jz0wyfIYEn3HwMKk8YDebSXhE2/Fzb2l.ZmNBYex0dakeEsLWf2', '3', 'images/1733897858.jpg', '2024-12-11 05:17:38', '2024-12-11 05:17:38'),
(60, 'Loka', 'Wilfried', '22g00138', 'wilgamer237@gmail.com', '695-979-348', '$2y$12$XZBLFjRcwct/gK15Gpbo1OIr/z0VlqYhu8WloqKxdd76IGIcPfkZe', '3', NULL, '2024-12-11 05:17:48', '2024-12-11 05:17:48'),
(61, 'Tsawo', 'BEAUTREL', '22G00407', 'tsawobeautrel@gmail.com', '699-343-225', '$2y$12$ttX9IA7ay//w/Q0IR0JUTe4bm45rQOlMVr5ixMus.3keMnoeeakga', '3', NULL, '2024-12-11 05:18:28', '2024-12-11 05:18:28'),
(62, 'PEPANGWO', 'Steve', 'Matrricule', 'pepangsteve@gmail.com', '695-742-737', '$2y$12$EB0.6nXeUBnV5TaGHNsa1eARqm./Jxx.GWoA1o.iXH6J3cDvCCiZS', '5', 'images/1733897941.jpg', '2024-12-11 05:19:01', '2024-12-11 05:19:01'),
(63, 'Ntakeu', 'Leane', '22G00339', 'leaneyvanna@gmail.com', '692-585-545', '$2y$12$BzrR5exyKN.0i68n0LQ2oucv9CWqIYJRI99eBX6yLo0452qXqlZOK', '3', NULL, '2024-12-11 05:21:07', '2024-12-11 05:21:07'),
(64, 'MINKO NYANGONO', 'ULRICH PAULIN', '22G00257', 'ulricminko0@gmail.com', '656-976-862', '$2y$12$6jEAiWnc/IOJqWfXhby33O2bHekJDYSTkIDWnOjmgBwAR76jI4G/a', '3', 'images/1733898115.jpg', '2024-12-11 05:21:55', '2024-12-11 05:21:55'),
(65, 'Leukam', 'Maxime', '24G01101', 'maximeleu17@gmail.com', '694-823-030', '$2y$12$l7UH.YdbmcMynJJn2t7dDe7hhrqca77NrC2NHlNapGYcUH3cyMrZK', '3', 'images/1733898149.jpg', '2024-12-11 05:22:29', '2024-12-11 05:22:29'),
(66, 'ZAMBOU', 'MACK', '24GO1138', 'macktrefort@gmail.com', '653-850-748', '$2y$12$PhfGMgf9TdLBsy9Ep/.XJOU9VoIvjRjMRKdNn.wg/gBFKbtJn5fTW', '3', NULL, '2024-12-11 05:24:33', '2024-12-11 05:24:33'),
(67, 'Teudem NGUIMATSIA', 'Dimitri', '22G00390', 'dteudem@gmail.com', '699-331-547', '$2y$12$Mzl.bImJf34X5IxqxO6WGO2XBhUV5a4n6F3XZS3adkGsfkP4TJVpa', '5', NULL, '2024-12-11 05:26:58', '2024-12-11 05:26:58'),
(68, 'Foba', 'Souleymane', '24G01131', 'fobasouleymane7@gmail.com', '655-966-039', '$2y$12$Ijm4KlhCYffPZiqz5jTmsenW2m0.j8EPCSp5qPmBF7F9b0tqj.7ny', '5', NULL, '2024-12-11 05:27:50', '2024-12-11 05:27:50'),
(69, 'Tassain', 'Franck', '21G00244', 'franckytassain20@gmail.com', '657-091-916', '$2y$12$R.XDjULhaUVBP83/BNnK/.CQnYQnHWFm49IbLGHnOA6gUeoh0DIVS', '4', 'images/1733898488.jpg', '2024-12-11 05:28:08', '2024-12-11 05:28:08'),
(70, 'Mbakop', 'Jack', '21G00208', 'jackmbakop@gmail.com', '694-176-002', '$2y$12$IAEE3d/eP24bzttYc/M6e.ftHRwgv9HadYppeI.f/1I.SqC4EzmdW', '4', 'images/1733898580.png', '2024-12-11 05:29:41', '2024-12-11 05:29:41'),
(71, 'DIWONGI SONGUE', 'ARIAN XAVIER', '//', 'ariandiwongi09@icloud.com', '697-138-386', '$2y$12$os6JjsOflz9YDVM1vRfROOIHDDXEzMdPvATwvxPXX4yTdR6nKhPUm', '3', NULL, '2024-12-11 05:31:14', '2024-12-11 05:31:14'),
(72, 'MEKOUNDE ELAME', 'Gustave Cyriac', '22G00253', 'gustavelame@gmail.com', '696-721-053', '$2y$12$cbg9PFtHvh8qIBqULStVo.dh160LV.44HAP1e35lIyP4I5ispwHjC', '3', NULL, '2024-12-11 05:33:16', '2024-12-11 05:33:16'),
(73, 'Choundong zebaze', 'Nelly', '21G00202', 'choundongn@gmail.com', '697-714-472', '$2y$12$LLfdmufdD15cJMWOlUtYa.8xPZQyth.ReMiVdyD6OeCkctWBh9OHC', '4', NULL, '2024-12-11 05:36:29', '2024-12-11 05:36:29'),
(74, 'Bell Potka', 'Jérôme Baudoin Steve Brian', '23G01201', 'nolqffri@telegmail.com', '695-743-455', '$2y$12$SxkJASguF5sPFEcOWh3hyOE49c8JlMD/OuVEC1HMJLzIvmtev.95a', '6', NULL, '2024-12-11 05:38:45', '2024-12-11 05:38:45'),
(75, 'KAGA', 'Andréa', '22G00463', 'andreakaga442@gmail.com', '658-763-121', '$2y$12$YCs1ihNWv578cV2i1R09dOSr08WcSgArB9QtaLtdus8ZhC892Y0Xu', '3', 'images/1733899132.jpg', '2024-12-11 05:38:53', '2024-12-11 05:38:53'),
(76, 'Noupowouo', 'Fiona', '22G00338', 'noupowofiona@gmail.com', '673-020-893', '$2y$12$cFri/o559OMKNujK0PLVyOgCygONOmfXp2hr6k.jtVqNQ5Zp/ympS', '3', 'images/1733899204.jpg', '2024-12-11 05:40:04', '2024-12-11 05:40:04'),
(77, 'Tassain', 'Franck', '21G00246', 'franckytassain19@gmail.com', '657-091-916', '$2y$12$wZn77Xgzih/66WG2KQk.LOt7sy1OD9PVZqJCVwDAUjyFPT8CJtqze', '6', 'images/1733899421.jpg', '2024-12-11 05:43:42', '2024-12-11 05:43:42'),
(78, 'Ondoa', 'Ulrich', '22G00038', 'bayighomogondoaulrich@gmail.com', '659-388-708', '$2y$12$NVq8bJ79lwRZqaiSVd.zf.aEYJBrHc6ak8O/2kOgSmyAeCq7z.nQ6', '3', 'images/1733899668.jpg', '2024-12-11 05:47:48', '2024-12-11 05:47:48'),
(79, 'DONFACK', 'Vladimir', '22G00085', 'vladimirdonfack@gmail.com', '680-388-565', '$2y$12$zBIa9HjawjPSJNWgCegk6.OBqC25Zw.MaMop.aZj8Ep5jk9rMFUr6', '3', NULL, '2024-12-11 05:49:21', '2024-12-11 05:49:21'),
(80, 'Mbei', 'Loïc', '22g00486', 'loicmbei19@gmail.com', '697-374-135', '$2y$12$cWDQLjRtiv1gSJHp0xaP0enca91hufCPdVD2xuHVeeO6017rOVds.', '5', NULL, '2024-12-11 05:50:09', '2024-12-11 05:50:09'),
(81, 'Fipa', 'Hermann', '21G00262', 'kouonanghermann08@gmail.com', '697-156-775', '$2y$12$CoRZsKoeFepkLtwPaO/2.OQU6cZlA1T1YC7ONprl/Y/Oe7Yv2s9na', '4', 'images/1733899936.jpg', '2024-12-11 05:52:17', '2024-12-11 05:52:17'),
(82, 'HENEG BAYIHE', 'Joseph Adolphe', '22G00160', 'mhbbayihe12@gmail.cm', '659-194-047', '$2y$12$Diij4MYiMP.jEPTNbsPYVuzFM5MrQEKhPL5iRDCCvFQEv0pilJyd2', '3', 'images/1733900123.jpg', '2024-12-11 05:55:23', '2024-12-11 05:55:23'),
(83, 'SOPPI DIPANDA EDIKA', 'LARISSA', '22G00371', 'larissasoppi78@gmail.com', '677-963-507', '$2y$12$d4w1p5e8O7/VUBJpYRmu3eW.X6SHn9FDk1CGyI/ZVoQp7ugutLARG', '3', NULL, '2024-12-11 06:00:54', '2024-12-11 06:00:54'),
(84, 'KITIO', 'GERBEAU', '22G00196', 'gerbeaukitio@gmail.com', '675-825-480', '$2y$12$GShpk2RDThoAKBvxPTPQTurg9MLoF4kuHp2GOE7yoyIBPQqGJlFSG', '3', NULL, '2024-12-11 06:07:10', '2024-12-11 06:07:10'),
(85, 'Ndongo', 'David', '21G00450', 'davidndongo394@gmail.com', '696-021-643', '$2y$12$SR83cjIOQsjkAIhtuFUlyeXTt09aspA3d9kFsLBU/gwgoW1RgN1yK', '4', NULL, '2024-12-11 06:08:33', '2024-12-11 06:08:33'),
(86, 'TSAGUE', 'Danielle', '22G00167', 'jeudieuaudrey@gmail.com', '697-186-427', '$2y$12$QqshYqoBCTbbGlMkZd61S.K9AfVouogphrICz5HUNTpeKfmSu1Rai', '3', NULL, '2024-12-11 06:12:41', '2024-12-11 06:12:41'),
(87, 'Ende', 'Alexander', '22G00447', 'Endeedmond@gmail.com', '659-546-181', '$2y$12$w92EgWE6keH/nQM4pm1O8.huLomdzIoJwdfJDT0UaVvdvCd0sVIsm', '1', NULL, '2024-12-11 06:12:51', '2024-12-11 06:12:51'),
(88, 'MABOA', 'Victor', '21G00418', 'victormaboa@gmail.com', '656-829-232', '$2y$12$rKZNLhNI.V4mK2uqmolFf.StYk0IpAuxJz49Pzz.wClGvgTCFg4aS', '4', 'images/1733901370.jpg', '2024-12-11 06:16:10', '2024-12-11 06:16:10'),
(89, 'Kouta', 'Eric Donald', NULL, 'erickouta6@gmail.com', '658-625-542', '$2y$12$gLM0KYTdViz1gZ2fXLzmDOaxYm3NxIpW3Z1722E.cfKJuuEcvVAnK', '3', 'images/1733901499.jpg', '2024-12-11 06:18:19', '2024-12-11 06:18:19'),
(90, 'Ismaïla', 'Mohammed El bachir', '22G00262', 'elbachirismaila@gmail.com', '650-223-350', '$2y$12$yNhz0AjWz7i6qiVIllCJoePEsgp88pWpye.T/.fYAVP4Z4mmLKWmi', '3', 'images/1733901654.jpg', '2024-12-11 06:20:55', '2024-12-11 06:20:55'),
(91, 'NKONG', 'Xavier', '20G00055', 'xavierjamestar@gmail.com', '697-003-393', '$2y$12$g6dmTxkyYPJI6SewywDjP.BJuod28B2lDrcsA38hDWCY3N44k2PhW', '6', NULL, '2024-12-11 06:25:21', '2024-12-11 06:25:21'),
(92, 'EPETI', 'Linda', '21G00400', 'blackkasha237@gmail.com', '698-784-586', '$2y$12$vuq8iCt/kuz2Ywcei0i8tutLeLMZdHynTXtkiSzVW27NE9lQcG/De', '6', NULL, '2024-12-11 06:28:19', '2024-12-11 06:28:19'),
(93, 'NONGNING LELE', 'Steve Jordan', NULL, 'nongninglele2@gmail.com', '654-475-292', '$2y$12$fROcLiTNXB8uSZ/MxLOL4umamw99YQm42PBhTiVkW7UHLu173wunW', '3', NULL, '2024-12-11 06:30:26', '2024-12-11 06:30:26'),
(94, 'TANYOU TANKOUA', 'Firmin', '23G01149', 'tanyoufirmin@gmail.com', '672-128-183', '$2y$12$rZMvNWkBMOPASoVSXM.kLuXgYS0/V3oUj41pJy7.TIH9i607N4356', '4', 'images/1733902336.jpg', '2024-12-11 06:32:16', '2024-12-11 06:32:16'),
(95, 'Test', 'Test', NULL, 'linjouom99@gmail.com', '699-999-999', '$2y$12$ltfyqs/kQDqtl.puCQlhYOOpidwj1Po0RmrpDzrDzQn43ON9EVBr6', '1', 'images/1733902687.jpg', '2024-12-11 06:38:07', '2024-12-11 06:38:07'),
(96, 'ASSONGUE TATANG', 'Muriel', '22G00420', 'assonguetatangmurielle@gmail.com', '680-244-909', '$2y$12$vpTbUhkN8KCAIAJ2GodsBuwzeT9lWBKp8b8n00IQ/f36bpedavobG', '3', NULL, '2024-12-11 06:40:18', '2024-12-11 06:40:18'),
(97, 'BOYOMO MPOLOMENA', 'Benjamin', '24G01081', 'benjaminmpolo@gmail.com', '697-243-474', '$2y$12$6cMUIGNIYb.DSOKLf5FYfuK7hmKUh78/Rd14bONLB2e3/HKLfnN6a', '5', NULL, '2024-12-11 06:41:05', '2024-12-11 06:41:05'),
(99, 'Mbelale', 'Wilfried Draxler', '23G01214', 'bmbelale@gmail.com', '695-832-162', '$2y$12$U/tnYMFd9WN6fjsCgqa76.7MXMTj1/esIJTxBhaK.Pa8zzhnLMwUK', '4', 'images/1733904095.jpg', '2024-12-11 07:01:35', '2024-12-11 07:01:35'),
(100, 'Agnoung', 'Caleb', NULL, 'calebgouife@gmail.com', '694-324-787', '$2y$12$q4Iq4obo4YeCgBEGgk0uVusLBnrXVS0bUctbWsgSpFDmDwoTDKORe', '3', 'images/1733904533.jpg', '2024-12-11 07:08:54', '2024-12-11 07:08:54'),
(101, 'SIYOU', 'Lesly', '23G01230', 'lsjyoudjuiga@gmail.com', '699-297-028', '$2y$12$Oj6FmW3TPGe0zy1pJ3mh2OqtcY7/XKK1p8/UxETV4JZJDzrUFRGLi', '4', NULL, '2024-12-11 07:25:34', '2024-12-11 07:25:34'),
(102, 'Minka', 'Lumière', '21G00506', 'l.mika.sn@gmail.com', '697-346-705', '$2y$12$WEV9FybJQYyX2gcfVeztOeA21aeI36mLwiWUPC7zCtRS0an/1U1FK', '4', NULL, '2024-12-11 07:28:44', '2024-12-11 07:28:44'),
(103, 'DITCHO', 'ELFRIED FIONA', NULL, 'elfriedfiona@gmail.com', '692-455-585', '$2y$12$EPqV075gBt2X4dR3MQhfHO4d2olqxRYnb9osAmXjYUmZSkniVx6sG', '3', NULL, '2024-12-11 07:30:36', '2024-12-11 07:30:36'),
(104, 'Likoum', 'Yves', NULL, 'yveslikoum21@icloud.com', '657-445-531', '$2y$12$HCZ8smFqXgepvurRI5vzYOKwc/FueXrvXPhGQP8wz.CB6mllm6Qw2', '3', NULL, '2024-12-11 07:31:12', '2024-12-11 07:31:12'),
(108, 'MPON', 'Fernande', NULL, 'gabriellempon23@gmail.com', '657-512-295', '$2y$12$fsj2mTbQjbZZ3qPFJi/nle9xn2Sqo0nFoQ32e1iwcT1aPUDg9p3Le', '5', NULL, '2024-12-11 07:32:50', '2024-12-11 07:32:50'),
(109, 'TIEMOUO', 'DORCAS', '24G01134', 'dorcastiemouo@gmail.com', '659-926-363', '$2y$12$g5bkuTooj68bUwc0M5j.T.4jkQwEb0S6GPbMaaypm9gLgzedZQLKK', '3', NULL, '2024-12-11 07:38:34', '2024-12-11 07:38:34'),
(110, 'EBONGUE', 'JEAN YVES JUNIOR', '24G01086', 'winnyebongue1@gmail.com', '695-270-616', '$2y$12$mLdrkl1SRqozfmTCVhbtB.wtRZLql0ueVkPqnXakk.i639ZHHxomO', '3', 'images/1733906363.jpg', '2024-12-11 07:39:24', '2024-12-11 07:39:24'),
(111, 'YOUMBO', 'Eddymarc', NULL, 'emarc8470@gmail.com', '687-093-524', '$2y$12$opa6QrrEaPM.5u1Dd.6v9uRoWXXXJe61UhEgt6CDDEORfaldljCFG', '3', NULL, '2024-12-11 07:42:16', '2024-12-11 07:42:16'),
(112, 'Ambadiang', 'Emmanuel junior', '23G00885', 'ambadiangemmanueljunior23@gmail.com', '683-174-716', '$2y$12$O6WWqpxWVS.voi12CttLBOw0kJA/PPkdYnILMzqKXMEu2F2yBy8Jy', '4', 'images/1733907628.jpg', '2024-12-11 08:00:29', '2024-12-11 08:00:29'),
(113, 'Kinyock', 'Samuel', '24G01096', 'samkinyock95@gmail.com', '656-866-966', '$2y$12$0rPOvexTYMwLY.M2V7yKUeR/ICbrrfmR/HYbcWaq1USrR0TLMPAsy', '5', NULL, '2024-12-11 08:06:23', '2024-12-11 08:06:23'),
(114, 'Kabir Bako', 'Aïcha Mohammed', NULL, 'aichamohammed356@gmail.com', '699-971-921', '$2y$12$I8OrPqxC/0pkGFdarzQYJeNpNXgyjXsHAsSiqxRP048OpDg9iivK6', '3', NULL, '2024-12-11 08:34:18', '2024-12-11 08:34:18'),
(115, 'Onana', 'Morel', '21G00033', 'morelonana1@gmail.com', '690-059-911', '$2y$12$fMdxJ0.3M8LOivOYNj8WsuM88OH0eukuP4OVBeJE.J9CyfAdxUy.2', '4', 'images/1733909835.jpg', '2024-12-11 08:37:16', '2024-12-11 08:37:16'),
(116, 'TSAFACK NGOUATEU', 'VIRGIL VALEUR', NULL, 'virgiltsafack@gmail.com', '682-612-973', '$2y$12$bd9woochOWK0hWohO6AURusKyyZxmGdzT/dgnFidVc9ko/gFXolKa', '5', 'images/1733910309.jpg', '2024-12-11 08:45:10', '2024-12-11 08:45:10'),
(117, 'Priso', 'Armand', '22G00363', 'armandopriso12@gmail.com', '696-978-704', '$2y$12$Y6B/qUIbXqO9yBBCIsydW.Cf5m.Htamu7iCWqWXfQKmLzMgI3uYzy', '3', NULL, '2024-12-11 08:56:37', '2024-12-11 08:56:37'),
(118, 'BANYO', 'MBAIAMMADJI SYLVESTRE', '24G01339', 'sylvestre@gmail.com', '695-970-342', '$2y$12$06499lDsOIxrg0Gho3VG9OFajlhPwA35phhV.bm1es.zv5IYA2Ks6', '3', NULL, '2024-12-11 09:04:09', '2024-12-11 09:04:09'),
(119, 'TOUKAM', 'Arielle', '22G00367', 'arielletoukam6301@gmail.com', '694-125-962', '$2y$12$owKVqM9WxS5iWKJ0C1v0L.iUeaZWalJIHXoWld/paq3AwwtlCzQPS', '3', NULL, '2024-12-11 09:08:41', '2024-12-11 09:08:41'),
(120, 'Lobe', 'Henri', '21G00145', 'lobehenri571@gmail.com', '682-375-817', '$2y$12$6ybf281Ck94Z5dWfF8NqWeQ1ycXUM7mnG9EPJq.rAaR/KrIWEKpwS', '4', NULL, '2024-12-11 09:22:11', '2024-12-11 09:22:11'),
(121, 'Ajonina', 'Jerry', '21G00474', 'elcabellajeremiah@gmail.com', '653-416-408', '$2y$12$F9w7Khv9v2lTDLtwGi4FoeKm9UcnVxYsC2WQC.ANDZKggLTYfVV5W', '4', 'images/1733912916.jpg', '2024-12-11 09:28:36', '2024-12-11 09:28:36'),
(122, 'FOUEJIO NGUEFACK', 'NILIMA JODIE', '24G01092', 'fouejionilima@gmail.com', '671-574-281', '$2y$12$ThFJoLM1sRknSXT8Iimx1u1bI168WGfL5vx4uoxBxOUdUns3EOwO.', '3', NULL, '2024-12-11 09:45:26', '2024-12-11 09:45:26'),
(123, 'Domeni Ngameni', 'William Steve', NULL, 'domenisteve@gmail.com', '697-760-584', '$2y$12$DJERtTYKkSSdK7dUseygpeLpAUvDnhcW0divwG9bqT7U4zh5jBe1K', '3', NULL, '2024-12-11 09:49:49', '2024-12-11 09:49:49'),
(124, 'Souop', 'Evora', '21G00197', 'varesseevora0@gmail.com', '659-286-323', '$2y$12$TxCDGU1lJCbq3TJeTDPCfeRD40ZSUS9VT3mKQzZl5PO9aIVA0ti7u', '4', NULL, '2024-12-11 09:57:07', '2024-12-11 09:57:07'),
(125, 'Nzameyo Mba', 'Giovani', '22G00346', 'giovaninzameyo@icloud.com', '657-734-109', '$2y$12$oNajn0LLbkvyEZQiwTp5KODou4pSiCT0VJ2tbe6rutBB/djz6fWpy', '5', 'images/1733914909.jpg', '2024-12-11 10:01:49', '2024-12-11 10:01:49'),
(126, 'NKENFACK NKALLA', 'PATRICK', NULL, 'nkallapatrick8@gmail.com', '696-726-004', '$2y$12$cvMWFZ8F90WxGGh1dFcML.rrOG5DkXRfhvmd1cNba8dLuWCMvbJFy', '5', 'images/1733915228.jpg', '2024-12-11 10:07:08', '2024-12-11 10:07:08'),
(127, 'MPAY', 'Cacharelle', NULL, 'cacharellempay5@gmail.com', '677-777-777', '$2y$12$6ixQk.58FgmsS4mai0Zknuwc/5KpByk8ni2xUsl5EMW/ESXPLkeT.', '3', NULL, '2024-12-11 10:08:45', '2024-12-11 10:08:45'),
(128, 'Ndoungue', 'Abel', '22G00295', 'thomasndoungue@gmail.com', '677-568-975', '$2y$12$EZZgKV7FhEGDKMhnPza3HePhD6/y/C4QCQWZULzqgv04zpVfvKWMe', '3', 'images/1733915551.jpg', '2024-12-11 10:12:31', '2024-12-11 10:12:31'),
(129, 'Fosso', 'Manuel', '22G00142', 'kakeudan@gmail.com', '690-648-709', '$2y$12$bLobfoNcUztMjTMelV8oCub3uRmVpM.0pRxQE48ynaoZaCx6C3046', '5', NULL, '2024-12-11 10:35:55', '2024-12-11 10:35:55'),
(130, 'Bitjocka', 'Dolianne', '23G00915', 'doliannelauriceb@gmail.com', '695-474-541', '$2y$12$JSqxXMslOqltZbbpR69YgOWngPINftUZlcQ2yJ7xRsoHvlCeYAyxu', '4', NULL, '2024-12-11 10:41:37', '2024-12-11 10:41:37'),
(131, 'Kaffo', 'Anthony', '22g00170', 'kaffoanthony2@gmail.com', '698-890-813', '$2y$12$2K6g74Mvkb3yN1E16EM6CuUEElDEJWCJm7u4F9/jBqudzA.aHZ2FS', '3', NULL, '2024-12-11 10:42:42', '2024-12-11 10:42:42'),
(132, 'EYANGO', 'Adolphe Stéphane Elie', '22G00126', 'eyangoelie2@gmail.com', '658-979-391', '$2y$12$2XKaeXx45nJigYoIBJGBFuGoEZ8FNOETEvLe3s0L20yUp7tOrCs3S', '5', NULL, '2024-12-11 10:44:12', '2024-12-11 10:44:12'),
(133, 'Belle', 'Adrien', '20G00050', 'belleadrien84@gmail.com', '691-969-735', '$2y$12$/onGC1LCl3bdvLIuWlkt6.RVR3uVFyOIyr0XDgqvYsgnMtihRxpMe', '6', 'images/1733917534.jpg', '2024-12-11 10:45:34', '2024-12-11 10:45:34'),
(134, 'NJANKOUO', 'Fred', '24G01119', 'frednjankouo@gmail.com', '674-357-237', '$2y$12$KZlptnvPdLdSqhg9IHG2JehAEhPKyLNLN61.50GkH1mr35JwGzwm2', '3', NULL, '2024-12-11 10:54:45', '2024-12-11 10:54:45'),
(135, 'CHETEU SADJO', 'Evrad Laurel', '22G00442', 'evradsadjo@gmail.com', '651-192-915', '$2y$12$gKDzGimTSAtCcQcPwYpfNuuxMTAetbL9tpZcS.DocfAqSSufEOaLK', '5', NULL, '2024-12-11 11:03:27', '2024-12-11 11:03:27'),
(137, 'GIT', 'Laureine', NULL, 'ngafilaureine@gmail.com', '691-614-432', '$2y$12$e1iThXEsHimeuHiPEu.GR.qxPdQWiGTrx4P1K.PZ6k6zrB5Lvfw9y', '5', 'images/1733918752.jpg', '2024-12-11 11:05:53', '2024-12-11 11:05:53'),
(139, 'BELLO', 'MOHAMAN', NULL, 'mohamanbll6@gmail.com', '692-467-793', '$2y$12$qS7fotQ.bU9iG.qixngF7eDwXDRB.hAirh.0KpRoEz4hSJ.gaugiK', '5', 'images/1733918896.png', '2024-12-11 11:08:16', '2024-12-11 11:08:16'),
(140, 'Feukeng tchinda', 'Brunel', NULL, 'feukengbrunel555@gmail.com', '693-049-304', '$2y$12$EXWtWBXJ/5991E4Is/L5j.YBCG2J6k/psBDAcE8OAZHpF/0nHmnZ.', '3', NULL, '2024-12-11 11:10:18', '2024-12-11 11:10:18'),
(143, 'Mpacko', 'Darren', '24G01115', 'mpackodarren@gmail.com', '659-081-159', '$2y$12$Y8wUNaaf0iUSZ83n.giWKeLdBoJ1EWrh97xlEIXDOLJzVOwrva5mW', '3', NULL, '2024-12-11 11:10:47', '2024-12-11 11:10:47'),
(145, 'SAWA', 'Ariane', '22G00201', 'kouamenariane1@gmail.com', '651-995-652', '$2y$12$DX9EoAzx8HPH5ba93hdp5ulzISWxs7m27n/M8H9JM5i0yhq.nrVg6', '5', 'images/1733919908.jpg', '2024-12-11 11:25:08', '2024-12-11 11:25:08'),
(146, 'BIKOYE BI YOGO', 'Francois Xavier', '21G00112', 'bikoyebiyogofrancoisxavier@gmail.com', '682-578-450', '$2y$12$rauevXTRvdcvqFFYOGl39.l7fnNpdWF3UzUKvP0XjiLUhdmCwnwem', '4', NULL, '2024-12-11 11:29:01', '2024-12-11 11:29:01'),
(147, 'MBOUMA', 'Annie Ornella', '22g00247', 'ornellambouma0@gmail.com', '656-675-843', '$2y$12$hK6PW3U0GK8kxtlg4N6YOe1QnsJcjdhuGFKbED7ZsdxrbZ4LN2a2K', '3', 'images/1733920606.jpg', '2024-12-11 11:36:47', '2024-12-11 11:36:47'),
(148, 'N.', 'Annou', '22G00314', 'agneslago9@gmail.com', '698-975-341', '$2y$12$PPi4rVoOrpFiydeVD4mvZ.dXQ1WEy/vCRlm7.Sh0qjXeTMZqLRxyW', '3', 'images/1733920708.jpg', '2024-12-11 11:38:28', '2024-12-11 11:38:28'),
(149, 'Becken', 'Ferrida Anne', '24G01079', 'beckenanne1@gmail.com', '682-835-293', '$2y$12$BQjzn4WktyEux3WQMoc1P.3A4iIGiVc2OyUYFilzcJU6jtIwwFDVy', '3', NULL, '2024-12-11 11:44:38', '2024-12-11 11:44:38'),
(150, 'Tegue', 'Habib', '23G01160', 'habibtegue@gmail.com', '693-558-215', '$2y$12$PPi4rVoOrpFiydeVD4mvZ.dXQ1WEy/vCRlm7.Sh0qjXeTMZqLRxyW', '4', 'images/1733923556.jpg', '2024-12-11 12:25:57', '2024-12-11 12:25:57'),
(151, 'KENDECK', 'Franck dutron', '22G00185', 'dutronkendeck4@gmail.com', '671-986-121', '$2y$12$Jip59TD3oU1fcGcqo1I/HOqFObMhWLTh/18caAXe3a7ZvhYOMG.MS', '5', NULL, '2024-12-11 12:33:39', '2024-12-11 12:33:39'),
(152, 'ONGMOBE EMBUAL', 'Cathy Malinka', '21G00048', 'ninazinx@gmail.com', '670-242-429', '$2y$12$MdtLT0Zc7zbGZm2tZH7v7O6iCyZhSJzyeLOkrs8Hw9CzEkbsk4T/6', '4', 'images/1733924245.jpg', '2024-12-11 12:37:25', '2024-12-11 12:37:25'),
(153, 'ZOGO', 'Ariel', '22G00550', 'ywach479@gmail.com', '656-994-040', '$2y$12$oQOAj9N4vw57mpnQkrLIDuE33ey2tf0ztKWVC/.4NG.jUBqHj0aiO', '5', NULL, '2024-12-11 12:49:02', '2024-12-11 12:49:02'),
(154, 'Picardie', 'Picasso', NULL, 'massecalvin@gmail.com', '620-490-819', '$2y$12$zCIJYSYilSg2NNl/KZSk9ecm2hXZIjBIbi5oeAUQU3A/sUJI3Beq.', '3', NULL, '2024-12-11 13:00:59', '2024-12-11 13:00:59'),
(155, 'Nkeduangni', 'Pascal jong', NULL, 'nkeduangnipascal@gmail.com', '683-566-765', '$2y$12$8/0NOghgaH1rqRVpinih0.dJ1.hGuM0K.mOKyM69yJ.KF5xRCS2ta', '5', NULL, '2024-12-11 13:53:27', '2024-12-11 13:53:27'),
(156, 'NDENBE', 'FRANCK IVAN', NULL, 'ndenbef@gmail.com', '656-537-111', '$2y$12$8cflWPXF1QHs9O4T1C3eAeHfxcvcrzVtDjfwQGgKtzL8WaB2uF5Oq', '3', 'images/1733929400.jpg', '2024-12-11 14:03:21', '2024-12-11 14:03:21'),
(157, 'NDOUDOUMOU', 'Audrant', NULL, 'audrantndoudoumou@gmail.com', '687-567-999', '$2y$12$sFEHfasWN0.4nUycsXPFbudOJzfn74Dxsetw/2sWmDiuJSX9cEe2i', '5', NULL, '2024-12-11 14:03:23', '2024-12-11 14:03:23'),
(158, 'NGWEM MAKENDI', 'Isaac', NULL, 'kendimak0@gmail.com', '681-449-173', '$2y$12$L4.TTWIn80y28kmp6p2gQeU9fKiYBxARWooqEKir6llrNII48iWKK', '3', NULL, '2024-12-11 14:24:39', '2024-12-11 14:24:39'),
(159, 'EDIMO', 'Marc', '21G00121', 'edimomarc94@gmail.com', '621-277-724', '$2y$12$/y9rds4h/125VA6j5x3N0ecSqG9Bfrs.QJUJt0WS426bwF/GOXqm6', '4', NULL, '2024-12-11 14:35:06', '2024-12-11 14:35:06'),
(160, 'FOHOM', 'Merveilles', '22G00136', 'merveillesdiana@gmail.com', '691-696-148', '$2y$12$mKJVb9X1KMBPjDdJ/Pq9D.uJ5xd6xpwWH1aTwYOlgRil2nYbN0iWG', '3', 'images/1733931592.jpg', '2024-12-11 14:39:52', '2024-12-11 14:39:52'),
(161, 'Osseu', 'Edmond', NULL, 'edmondosseu@gmail.com', '691-001-085', '$2y$12$ZB1cBGMTA6RgBRcErdvkDuWH0/CdxwfHxbx3dWogpFvAxo0wiMd1u', '5', NULL, '2024-12-11 14:47:41', '2024-12-11 14:47:41'),
(162, 'DONGMO KENFACK', 'Brayanne', '21G00431', 'dongmobrayanne06@gmail.com', '681-158-672', '$2y$12$7Yw5iIc5HzBVTHn1J684N.Q0Q1FUfkF/Q5lshUdVzVJP9j7XQ6/yi', '4', 'images/1733936854.png', '2024-12-11 16:07:35', '2024-12-11 16:07:35'),
(163, 'Bessawa', 'Steeve-james', '22G00049', 'steevejamesbessawa@gmail.com', '694-598-548', '$2y$12$aoXuIa2pIQI8gj3mb72ksuuO3.XPcSMyn8oGyHCtB7ZtqJLgXskla', '3', NULL, '2024-12-11 16:17:04', '2024-12-11 16:17:04'),
(164, 'DOMCHE', 'Freedy', '22G00084', 'joresdomche@gmail.com', '696-279-480', '$2y$12$wHDBnzxA.N9Cx6CRjhdDgeo9UopUhvjI0PDDwg408LpZyvfNLOrDm', '5', 'images/1733937490.jpg', '2024-12-11 16:18:10', '2024-12-11 16:18:10'),
(165, 'etame', 'emmanuel', '21G0000 »98', 'emmanueletame2003@gmail.com', '695-350-031', '$2y$12$JIfhsQnAS.0OQKvzw6JCL.ymqmdf.cqpA4acqT218jra3CN8zoSV6', '4', NULL, '2024-12-11 16:19:45', '2024-12-11 16:19:45'),
(167, 'djeunga', 'auriol job', '21G00296', 'aurioldjeunga@gmail.com', '695-217-270', '$2y$12$Lu6fo5Q8omO8yyAmlz/9jO/NQ3lgODe0fQD5uoPZis3Z36c0lrmJe', '4', 'images/1733938151.jpg', '2024-12-11 16:29:12', '2024-12-11 16:29:12'),
(168, 'NGO BIKOÏ', 'Agnes Lisette', '21G00088', 'agneslisetten@gmail.com', '657-597-308', '$2y$12$VZxxqU2owEe.ymcecwj1euBodlpm1B6NsT1IVjzON93whcOr2Hfbi', '4', NULL, '2024-12-11 16:33:14', '2024-12-11 16:33:14'),
(169, 'Mamoudou', 'Baouro', NULL, 'mbaouro8@gmail.com', '655-005-081', '$2y$12$Rw.Yez5bLKynfC8lm1nf8ud7oZjkMTTBVVdNlT1aUOQGyfcYvPYW.', '3', 'images/1733939086.jpg', '2024-12-11 16:44:47', '2024-12-11 16:44:47'),
(170, 'ingrid', 'lesly', '22G00973', 'leslyingrid74@gmail.com', '690-972-757', '$2y$12$Ni6wB2V8BNcxDEUE.oRyFuN1G6jm53CzuB9q/9qPQpD3/t2itCa8e', '5', NULL, '2024-12-11 16:55:44', '2024-12-11 16:55:44'),
(171, 'Foyang', 'Daryl', '24GO1095', 'darylfkamga@gmail.com', '620-336-665', '$2y$12$UySfvKc6RpiPaOPBAYd9mukngYj5fF35mM/KbWbZZgolqzESFZrVO', '3', NULL, '2024-12-11 17:16:42', '2024-12-11 17:16:42'),
(172, 'Abdou', 'Fadimatou', '24GO1090', 'fadimatouabdou9@gmail.com', '653-312-670', '$2y$12$.S4MQ3K.c1fmQw1u9jpuZe6.Lfts7sjZt/mOz4ywdH6PvhchwJwd6', '3', 'images/1733942610.jpg', '2024-12-11 17:43:30', '2024-12-11 17:43:30'),
(173, 'Ngambi Dikoume', 'Alma Daniela', '22G00301', 'almadikoume@gmail.com', '652-807-665', '$2y$12$sFmpX/GHSiAr0C.djIh4tOnYhUrhZ3pam5IY0sUNNr1MnJk5nC5eO', '3', 'images/1733943037.jpg', '2024-12-11 17:50:37', '2024-12-11 17:50:37'),
(174, 'MEUKIAJIE', 'Ostwald', '22G00489', 'meukiajieostwald@gmail.com', '680-598-562', '$2y$12$M0HPK9QNDRq9Q9Mv.N5vouVEmqTQfFK9pe5fXTzgrAT5QDFeq17bq', '5', NULL, '2024-12-11 17:54:39', '2024-12-11 17:54:39'),
(175, 'Ngoupeyou', 'Abraham', '22G00319', 'ngoupeyouabraham@gmail.com', '655-504-225', '$2y$12$x6l4rnKsFNCWx0JuDT4HWOEl750gEqsx4Oh2gyCrE5n5ZP61QI52u', '3', 'images/1733943644.jpg', '2024-12-11 18:00:44', '2024-12-11 18:00:44'),
(176, 'Tambou', 'Celiane', '22G00378', 'tambouceliane@gmail.com', '655-561-270', '$2y$12$.KtSZFdeRHBZHnjgtaHZA.DMDPuq0T0cM9Nw8E8IKpPTPBMvluMZe', '3', NULL, '2024-12-11 18:26:19', '2024-12-11 18:26:19'),
(177, 'FOUENANG', 'Miguel  Bruce', '22G00458', 'miguelfouenanf@gmail.com', '677-152-543', '$2y$12$nWe0UstFs/fDKnvaVgv79.Do1AjtoCOz5cU18pq3FVhUVA/zrjTUi', '5', NULL, '2024-12-11 18:35:16', '2024-12-11 18:35:16'),
(178, 'SIGNING TSANGO', 'Maryline Harelle', '22G00368', 'signingmaryline@gmail.com', '699-312-883', '$2y$12$8ILrZhaZ5OadtfNDKltsue.iImefe0XMYxb2iSbJ/G1wXV.kF1.h.', '3', NULL, '2024-12-11 18:46:32', '2024-12-11 18:46:32'),
(179, 'SIGNING', 'NELSON', '22G00369', 'youmbinelson2@gmail.com', '694-043-726', '$2y$12$9dz5muFW64dj0dZ9XrwleOiN13AmMYeHlB9fj7Xupe9dtNMuRt.wi', '5', NULL, '2024-12-11 18:47:09', '2024-12-11 18:47:09'),
(180, 'METAMMO', 'Cledya', '22G00490', 'danielateuma50@gmail.com', '671-326-790', '$2y$12$maTviTM8nCw7pVQXSPlmbejCQGXyo6zUxdTGUV0gd/wW1Z.sj04.C', '3', NULL, '2024-12-11 18:49:11', '2024-12-11 18:49:11'),
(181, 'Mouotie', 'Jospel', '21G00499', 'mouotiejospel@gmail.com', '654-782-750', '$2y$12$edD3MNVnrUJryUBjRUwd9.wjgszusagiRGO.CMpzIzvNeZqd3HxgW', '4', 'images/1733947275.jpg', '2024-12-11 19:01:15', '2024-12-11 19:01:15'),
(182, 'Boumbisaï', 'Jean-claude', '21G00140', 'boumbisaiitiel@gmail.com', '650-973-231', '$2y$12$8/cHPuTvg/1xnLB0qEshkObzNjjOIfMRvw67goV02Szb9eWF0b5Xm', '4', NULL, '2024-12-11 19:18:09', '2024-12-11 19:18:09'),
(183, 'Sepiebou', 'Vianney', '21G00240', 'Sepiebouvianney2.0@gmail.com', '698-205-069', '$2y$12$mZgbTsW/MhBG7/708bEvXegj2MC99kAKh4IVRwPsORCKlgf7E.tAe', '4', 'images/1733950430.jpg', '2024-12-11 19:53:50', '2024-12-11 19:53:50'),
(184, 'DJESSANG REPELE', 'Joseph Emile', '22G00074', 'fomocou@gmail.com', '694-995-883', '$2y$12$diui3ChAFOBjQfwNy4L.wO7xxwWo20dkotG226g8bP1IpBhygGBmq', '3', NULL, '2024-12-11 19:54:38', '2024-12-11 19:54:38'),
(185, 'Defo Tagne', 'Gaston thierry fresney', '22G00434', 'brayanthierry1@gmail.com', '698-312-873', '$2y$12$F/EHUHhEu8yNAwFq0414zOJ7uruXcX9RvHUCls6ZnqLdAbbFmv6cO', '5', NULL, '2024-12-11 20:36:09', '2024-12-11 20:36:09'),
(186, 'Raouf Romeo', 'Fongang nouji', NULL, 'Raoulromeo6@gmail.com', '686-023-589', '$2y$12$gznRuz4gn6YeyLAZn8ndaOib7JNGaxuS7Mza7HmrUkPfdoDaicOsu', '5', NULL, '2024-12-11 22:01:13', '2024-12-11 22:01:13'),
(187, 'KIAM', 'Albin Bronwdon', '21G00309', 'albinbronwdonkiam@gmail.com', '693-071-757', '$2y$12$x6pTM4KanokA8Jrl4GEfye7oh7rFY9R8oBzH6L.n8H3XEt7BT7f7O', '4', 'images/1733958761.jpg', '2024-12-11 22:12:41', '2024-12-11 22:12:41'),
(188, 'silakchom tchuente', 'Audrey', NULL, 'audreysilakchom@gmail.com', '690-371-448', '$2y$12$5Gnj23xZkerFBwLL25jGrOeQpSKFAqtvNEejZqV3Hn6tEhma3XHGO', '5', 'images/1733961514.jpg', '2024-12-11 22:58:34', '2024-12-11 22:58:34'),
(189, 'ATEKOUMBO', 'EXCEL', '24G01074', 'atekoumboexcell@gmail.com', '652-586-999', '$2y$12$WQiKpgiQIkZOPsQdk479H.pvnoWhkHK51mrNgrnd4xbGPVc4ApG46', '3', NULL, '2024-12-12 00:29:32', '2024-12-12 00:29:32'),
(190, 'Deffo Djouguela', 'Yvan Dimitri', '23G01246', 'deffoyvan199@gmail.com', '680-433-249', '$2y$12$DkThK0VmrB3ooTD/6D.B5Ob3evqXQjJF6oO7jobNNI6qHkKEQ79SC', '6', NULL, '2024-12-12 03:19:12', '2024-12-12 03:19:12'),
(191, 'EKOUM', 'Steve J.', '22G00109', 'jaudelekoum39@gmail.com', '657-319-955', '$2y$12$l1JaWMGxxTjzwI.XWGP/aeaXP2ShvZP9YnUrNw2B8OKhfk4W65DvW', '3', NULL, '2024-12-12 04:25:41', '2024-12-12 04:25:41'),
(192, 'LAMBOWO DONGMO', 'Darius', '22G00476', 'dariodongmo259@gmail.com', '672-020-326', '$2y$12$OqG2quv1GPTle5dkjtd6IOAE8HSoGhdolvqpur2wsCa5.0N2VD.na', '3', NULL, '2024-12-12 05:56:48', '2024-12-12 05:56:48'),
(193, 'DONGMO KENFACK', 'BRAYANNE', '21G00000', 'tsopbengbill@gmail.com', '681-158-672', '$2y$12$7kaRZuwyT3oheq0qYYEPcOIAQhlM8DePOVYpxCzdURwy/M7BaHvxG', '4', 'images/1733987960.png', '2024-12-12 06:19:20', '2024-12-12 06:19:20'),
(194, 'NGLITANG RUBEN', '/', '22G00500', 'nglitangr@gmail.com', '699-905-664', '$2y$12$cHjgo8esWsbNiaXs6wnOwu2OUw27O9Hx2CpBehe7ZUkMOc5e9Uq66', '3', NULL, '2024-12-12 06:44:36', '2024-12-12 06:44:36'),
(195, 'hamed moudalif', 'mbouombouo', '24G01112', 'moudalifhamed@gmail.com', '692-848-342', '$2y$12$Yu0dU5U4ISDYrvwmF2pX2eKbLJU06vJ/eI8w2.gU9rFT06OUwTIgm', '3', NULL, '2024-12-12 07:14:21', '2024-12-12 07:14:21'),
(196, 'LINGOME', 'Collins Landry', '24G01102', 'lclandry2003@gmail.com', '658-784-249', '$2y$12$pqAWBamzLdmaKR2ZdwhWq.sxXO..pL8cdx8ng4LXoKdcx7lfll8x.', '3', NULL, '2024-12-12 08:09:02', '2024-12-12 08:09:02'),
(197, 'MBADZO', 'Richenelle', NULL, 'mbadzorichenelle@gmail.com', '672-198-073', '$2y$12$TATOYfhzSVeBwwRmg7bzb.IrT32OeHQr2dqHN/ptQF3gRRgAdjGL6', '3', NULL, '2024-12-12 12:19:27', '2024-12-12 12:19:27'),
(198, 'NGUEKENG MAJIO', 'Lolita', NULL, 'lolamajio398@gmail.com', '654-980-657', '$2y$12$PbRx5DF0MMFIotkMiyS5tuDP6BvYexnR2JNTEdtJMqWYWXjN4Wfkm', '3', NULL, '2024-12-12 12:20:39', '2024-12-12 12:20:39'),
(199, 'Kameni', 'Darcel', NULL, 'darcelkameni@gmail.com', '680-909-193', '$2y$12$7xz399YjHw9GRtJHOyKOFeH4Q6gDQYtAA60QQx5o1rCUHPvrxKJNG', '3', NULL, '2024-12-12 12:34:59', '2024-12-12 12:34:59'),
(200, 'Eboa', 'Styve', '12345', 'nourkajujutsu@gmail.com', '655-501-496', '$2y$12$M6OUzLTAPKs0T8CvUYstreBYfyIDoi3U2uLrOddv4oNY.AKO4fW6G', '3', NULL, '2024-12-12 12:43:34', '2024-12-12 12:43:34'),
(201, 'KWUIDA ngobo', 'Grace keys', '24G01099', 'gracekeysngobo@gmail.com', '698-698-881', '$2y$12$Ire/6WNVdU5vzY29mpIk8uPhQhsAmPb5X.NJj2CanSNmVV21qqn9y', '3', NULL, '2024-12-12 13:40:32', '2024-12-12 13:40:32'),
(202, 'Djouka Fongang', 'Frédéric Mélissa', NULL, 'melissafongang86@gmail.com', '692-966-546', '$2y$12$DQG9KgDFnO4aeV0rD4hWUOhNoghEF8q6qTebYnfgFF3OGALTMNvyi', '3', NULL, '2024-12-12 14:56:08', '2024-12-12 14:56:08'),
(203, 'GUEMBU SIME', 'Guy Valaire', '22G00460', 'guyeinstein15@gmail.com', '620-886-579', '$2y$12$Yg5Cw5qZdJEJbzAql6ZJmO3uMYrU585Hrgd.uR8HADe3HKEtEmFhS', '3', NULL, '2024-12-12 15:34:17', '2024-12-12 15:34:17'),
(204, 'Yombi', 'Sheila', '24G01128', 'sheilayombi@gmail.com', '655-511-173', '$2y$12$EGpFHBRiPV3epXII5mP1Z.r0a1P1WeiTf2.zVjkRzzclOPfDIBMn2', '3', 'images/1734021387.jpg', '2024-12-12 15:36:27', '2024-12-12 15:36:27'),
(205, 'Esseme', 'Franky', '22G00146', 'frankyesseme3@gmail.com', '693-286-665', '$2y$12$LEZ5vByJiyF02OjOKEda/eK3kWQtyxbNg5yIn7SJlvXjLaJeJi82a', '3', NULL, '2024-12-12 15:39:50', '2024-12-12 15:39:50'),
(206, 'Baling balig', 'Charles brunels', NULL, 'teddybalingbaling@icloud.com', '689-950-592', '$2y$12$NlsxEvYyxzmxJXoX31Jtz.QWcSUGL.V6pB2jEy3CRSJY.QXytk45e', '3', NULL, '2024-12-12 15:42:58', '2024-12-12 15:42:58'),
(210, 'TAGUE', 'ETIENNE JUNIOR', '22G00376', 'taguejunior89@gmail.com', '656-326-817', '$2y$12$MYRD99wzek4DsMb86UwXjeifofEEi0WRVGD2TcjJ/roGQ8n9uo4FS', '5', 'images/1734021928.png', '2024-12-12 15:45:28', '2024-12-12 15:45:28'),
(211, 'MVE', 'BELIBI', NULL, 'mvebelibichristian@icloud.com', '681-984-252', '$2y$12$IFOApTvjrNT0sUyzS.z/2ORYqeg4fDsJ1XFYicamQofm66u6pyHqS', '5', NULL, '2024-12-12 15:46:11', '2024-12-12 15:46:11'),
(212, 'EMEYENE', 'Lucie', '22G00987', 'bolagalucie@icloud.com', '697-286-929', '$2y$12$tdGzj5vhW5SfV0ZSersaa.aEdX6PERxiLaT8wEAX49zJHbslM4YUO', '5', NULL, '2024-12-12 15:53:56', '2024-12-12 15:53:56'),
(213, 'NGANTY BIKELE', 'ANICET MARIUS', '22G00308', 'surflinkayos@gmail.com', '696-584-160', '$2y$12$7l/qQPu/TvQTAL8ltw.9HeKujWK1qS4PRv5zDLnkvlmNR1ZJWHRsm', '3', NULL, '2024-12-12 15:57:37', '2024-12-12 15:57:37'),
(214, 'EDJIMBI EDJIMBI', 'Simon Badiane', '24G01087', 'simonedjimbi4@gmail.com', '691-781-539', '$2y$12$7owvqoYWsJtvOlqlUYS71.gIjl3WAOjbww2YaArXrxJ/E4p/Hq6iy', '5', 'images/1734023497.png', '2024-12-12 16:11:38', '2024-12-12 16:11:38'),
(215, 'Ebendeng', 'Cedric Simeon', '22G00028', 'johnebendeng@gmail.com', '620-920-510', '$2y$12$B0uQSitYsFnR9a4A5ncenukGaCaNiS1PYTJW2kNyKHKxvjjJ44AEe', '3', NULL, '2024-12-12 16:15:30', '2024-12-12 16:15:30'),
(216, 'Nyemb', 'Louis perier', '22G01033', 'nyemblouisperier28@gmail.com', '692-825-427', '$2y$12$01M66yS3CyxvrTyPbg.5muticCt9vKkck1uSOUTIqZggUNFdI0LZ2', '3', NULL, '2024-12-12 16:15:54', '2024-12-12 16:15:54'),
(217, 'SIYOU FOTSO', 'STEVE BRIAN', '24G01129', 'fotsobrian29@gmail.com', '652-336-995', '$2y$12$vSxZuI3XToPlLGcVpHBB4./q.abc3E1ZCPRvpa6bH5Uqx5LyenisC', '3', 'images/1734024070.jpg', '2024-12-12 16:21:10', '2024-12-12 16:21:10'),
(218, 'MASSODA', 'Willem', '22G00230', 'willem.mpp@gmail.com', '693-884-094', '$2y$12$j1ntebFrpe1njzU75v8rwOWeJA5Dlcu5P11lp6D.tSjxX1p5TM1ya', '5', NULL, '2024-12-12 16:25:22', '2024-12-12 16:25:22'),
(219, 'Momo', 'Natacha', '22G00264', 'natachamomo02@gmail.com', '653-462-617', '$2y$12$gsB1vJAh2heW9OGIzMwvj.k9RdKS9aplIhevWpLcRLngMu1lyO25u', '3', NULL, '2024-12-12 16:52:21', '2024-12-12 16:52:21'),
(220, 'ELLA', 'Ketsia', '24G01107', 'ellaketsy24@gmail.com', '690-154-088', '$2y$12$ETCX6VBFRA3EyeSzn/2Dh.hHPcsAlGrP85QykIr61nPP2iDxLLaCC', '3', NULL, '2024-12-12 16:55:18', '2024-12-12 16:55:18'),
(221, 'GUEMOGNE', 'Esther', '22G00153', 'esthergeraldineguemogne@gmail.com', '673-249-232', '$2y$12$2rMEqJMjLaojZm/Kc8bgHOWh3/nUppGmcDyHcLANFXoI8W8ldoHQe', '3', NULL, '2024-12-12 17:02:21', '2024-12-12 17:02:21'),
(222, 'Ossomba Atangana', 'Arnold Freddy', '21G00366', 'dressagefree@gmail.com', '680-481-674', '$2y$12$6VVtmzgbKyim1SKDrPq8z.rVZfDWZBLxWrNJGfFqyY/D7uS6DEGLq', '3', 'images/1734027544.jpg', '2024-12-12 17:19:04', '2024-12-12 17:19:04'),
(223, 'Likoum', 'Yves', NULL, 'yveslikoum2@gmail.com', '657-445-531', '$2y$12$1B561uCDk6PFxQWrFkeHS.ULMdTe45uHhN7lETXJ.cPNSS6.z3MFm', '3', NULL, '2024-12-12 17:19:47', '2024-12-12 17:19:47'),
(224, 'Zouentcham', 'Karl-Michel', '22G00551', 'karlzouentcham@icloud.com', '677-777-777', '$2y$12$xDHSTcrks5ZEh5R2M3MIgutyoAV2UpUimZuEbyXBOB.bbHh8D.IM.', '5', NULL, '2024-12-12 17:34:38', '2024-12-12 17:34:38'),
(225, 'Miafo', 'Ivan', '23G01060', 'miafoivan@gmail.com', '675-489-113', '$2y$12$tdmA4rOQC7ImeHe71DGbX.tLHHO65jESAKzvCXhmdpLVmiPPwwVRC', '4', NULL, '2024-12-12 17:40:54', '2024-12-12 17:40:54'),
(226, 'Mongue', 'Charles', '21G00287', 'aimecharlesmongue@gmail.com', '690-963-025', '$2y$12$DUYmHtL7TMFD7uzCOV.q5./GR3CJinybAKJW6js8sYIUKDOcmGtp6', '4', NULL, '2024-12-12 18:39:19', '2024-12-12 18:39:19'),
(227, 'TIAM PEKA', 'Pharel', NULL, 'tiampekapharel@gmail.com', '651-151-615', '$2y$12$tBzj8CB6GFm2PcoFwfBNv.sAAadJfKGt9kCgrxEaLgeb8Hfx7qXO.', '3', NULL, '2024-12-12 19:06:00', '2024-12-12 19:06:00'),
(228, 'Yengue Um IV', 'Dieudonné Lionel', '23G01183', 'lionelum237@gmail.com', '657-461-562', '$2y$12$94qMm.qO/XwiO1LnjIQhVuTQagk/lm0pUW1MMxwiG.CeZ0u0Ch9Pq', '4', 'images/1734034297.jpg', '2024-12-12 19:11:38', '2024-12-12 19:11:38'),
(229, 'Guidjou Tuedem', 'Stefy Godlove', '21G00313', 'stefygodlove@gmail.com', '682-263-107', '$2y$12$KPj9YGzWdJm3Jo1pchmddeX9npcWgbDe49jn3siE35pRJVc3GucjO', '6', NULL, '2024-12-12 19:29:56', '2024-12-12 19:29:56'),
(230, 'TAKAMTE KAMGA', 'Joan Brunel', '23G01233', 'joantakamte19@gmail.com', '657-434-515', '$2y$12$PHIh4gYgFPPN9/4mXZ5lkOr.nJaCQmcCzeHqzaFuJQfK7o2pbJ60y', '4', 'images/1734039815.jpg', '2024-12-12 20:43:36', '2024-12-12 20:43:36'),
(231, 'Doungous', 'Hadiza', '22G00156', 'Salehadiza4@gmail.com', '658-949-325', '$2y$12$qAf2rG5SsL7jRC5A3jUgKuwO2eACE7WUkDajQGGTjR4McxZdOKPvW', '5', NULL, '2024-12-12 20:55:39', '2024-12-12 20:55:39'),
(232, 'KAPTUE KOAGNE', 'FRANCK DUAMEL', '21G00176', 'franck.kaptue3653@gmail.com', '699-587-895', '$2y$12$3JnnxWvmmgKgu7.0tv6bTuYDEsEPQ.SALqLfy6QHUS5poZbCX.KLC', '6', 'images/1734040750.jpg', '2024-12-12 20:59:10', '2024-12-12 20:59:10'),
(233, 'KAJE', 'Warren', '24G01094', 'kajecaponne@gmail.com', '681-726-452', '$2y$12$.S2oGdcN5vwRuuaiWMBc6udjQswEObv2hAizwUDIk0Ihrqwfhs0de', '3', 'images/1734041015.jpg', '2024-12-12 21:03:35', '2024-12-12 21:03:35'),
(234, 'JIOKENG SOBZE', 'Ariel', '22G00168', 'jiokengariel1@gmail.com', '677-983-273', '$2y$12$KhBl2dJApPG8T9vfAxonreM9.dFo7am72KxBSSafzBGAEQd7eC322', '5', NULL, '2024-12-12 21:03:50', '2024-12-12 21:03:50'),
(235, 'Yota', 'Lauren Marcellin', '22G00547', 'yotamarcellin@icloud.com', '683-475-121', '$2y$12$0ty3duo1BwDH2bcLpXGWuO2eJQ1mMKlMMTWcPt7M.bx8IksUuUvR6', '5', NULL, '2024-12-12 21:04:55', '2024-12-12 21:04:55'),
(236, 'TONNANG', 'Letisia', '21G00430', 'cabrelleletisia@gmail.com', '657-534-048', '$2y$12$NSsC5JyYKDupHoG/x6hS.eW9FjyZbcREB6mbFDNBPvzN.ft2bGM9O', '6', NULL, '2024-12-12 21:05:28', '2024-12-12 21:05:28'),
(237, 'DANIEL', 'EBOUELE', '21G00130', 'hansebouele@gmail.com', '694-127-172', '$2y$12$/NfGrU9sMnC/g95S55wyo.wW1JPlHX8SkcwC9qEnekcMqvQsbVWci', '6', NULL, '2024-12-12 21:06:02', '2024-12-12 21:06:02'),
(238, 'DJOUNDA', 'CHRISTIAN', '23G00938', 'christianjunior@fundora.me', '695-607-089', '$2y$12$ULc.GQ2EeAY2V4LMKqhMteW6zeKfsHV03Lk2ErE9HHpWkylQz8l/W', '4', NULL, '2024-12-12 21:08:01', '2024-12-12 21:08:01'),
(239, 'Tsague', 'Leslie', '23G01173', 'tsagueleslie03@gmail.com', '690-655-694', '$2y$12$aN3GqeSErb56cSbHLWKxUuIkB/x5JNhInumgrQiwMzEkwoENtth8y', '6', NULL, '2024-12-12 21:09:38', '2024-12-12 21:09:38'),
(240, 'Lita', 'Vicklane', '21G00278', 'nlavlita2004@gmail.com', '699-833-436', '$2y$12$ZNQDDkjL4z64rxIXGmGfPu6E4YzyXlf5I93ebJ/P7oPd9ZWyRF8si', '6', NULL, '2024-12-12 21:10:32', '2024-12-12 21:10:32'),
(241, 'Kedi a ekite', 'Kemba', '21G00453', 'josephkediaekite@gmail.com', '693-562-422', '$2y$12$qnkeA/IXwJVI0P5MqqpEsO/TspaUA3sIoxH9O0KGXEQO.u3n0wOL.', '6', 'images/1734041506.jpg', '2024-12-12 21:11:46', '2024-12-12 21:11:46'),
(242, 'EMVANA', 'Didier Roland', '21G00328', 'didierrolandemvana@gmail.com', '693-435-424', '$2y$12$2z9bIJlF7w97eB0ajGFpHOtyhoBdBtntsOwxsS.ucRbGev2y2oYOm', '4', 'images/1734041506.jpg', '2024-12-12 21:11:47', '2024-12-12 21:11:47'),
(243, 'Dopguep', 'Manuella', '21G00190', 'dopguepmanuella@gmail.com', '659-061-620', '$2y$12$tRTbwKrcmEB0Jbi4OXrAXOxI/AkZFX3gvlJZ.LlTs7OfxGNBE/bBu', '4', 'images/1734041537.jpg', '2024-12-12 21:12:18', '2024-12-12 21:12:18'),
(244, 'Makon', 'Honoré', '22g00479', 'honomakon@gmail.com', '697-494-717', '$2y$12$/f5H/oiexjYzPXPE7jPrmegKbewirWVZ2mMP1879svZyNEdpT5Cha', '5', NULL, '2024-12-12 21:12:20', '2024-12-12 21:12:20'),
(245, 'ASSOMO', 'Mariellle Cassandra De Paris', '22G00016', 'cassandraassomo32@gmail.com', '698-435-736', '$2y$12$TcecP3fEq6MNakQ/UQOUNe9Z9dzFWcOsErjpYRU/yslohzLWkkUWS', '3', 'images/1734042034.jpg', '2024-12-12 21:20:34', '2024-12-12 21:20:34'),
(246, 'OTSOMOTSI', 'Jean leonardi', '21G0041', 'jeanleonardiotsomotsi@gmail.com', '691-057-931', '$2y$12$eYI5P6YarC0KMoJeVyUEFO5MrCrjGDM9uOberMGsKC45iV4o56Qjy', '4', NULL, '2024-12-12 21:21:17', '2024-12-12 21:21:17'),
(247, 'Wachie Simo', 'Ange Gladys', '22G00542', 'angewachie@gmail.com', '659-128-510', '$2y$12$CV6luHMafQN1psuSKEBqCesciErWMOzAXnuw1QSmk04oWvEhON6.G', '5', NULL, '2024-12-12 21:23:40', '2024-12-12 21:23:40'),
(248, 'Tchouakam', 'Dylan', '23G01157', 'dylantchouakam@gmail.com', '698-770-136', '$2y$12$.wrhVicEHzSU45U93jl3KO5qHqz2q8Mx9.Vy8PfXsrDTqVwhWy7XC', '6', NULL, '2024-12-12 21:24:47', '2024-12-12 21:24:47'),
(249, 'Pouhr', 'Eitel', '20g00381', 'eitelpouhe377@gmail.com', '693-858-045', '$2y$12$Y8yt/81R3wXmKPkVC..En.dDXmQdfzuWlkyy6u3gs9Nz7bwgXiDCC', '6', NULL, '2024-12-12 21:25:48', '2024-12-12 21:25:48'),
(250, 'Kamguin Djoum', 'Normann', '21G00204', 'kamguindjoumnormann@gmail.com', '698-190-166', '$2y$12$2ClEJJUN7ZOzunnXJ4sycuRJCJ2wrFEEIMigR2u7f3gL8aDx9/Uny', '4', 'images/1734042444.jpg', '2024-12-12 21:27:24', '2024-12-12 21:27:24'),
(251, 'Mandack', 'Louis Paul R.', '21G00163', 'mandackpaplo@gmail.com', '699-434-038', '$2y$12$Oy7egZbNwPlkkP0PHEFuG.92xBO35lHeIXB9B4WWUHtastJkDBzpC', '6', 'images/1734042994.jpg', '2024-12-12 21:36:34', '2024-12-12 21:36:34'),
(252, 'DONGMO TENKEU', 'Franck Donald', '21G00217', 'donaldtenkeu27@gmail.com', '694-974-645', '$2y$12$NNRlOh/OjupWniI/uiGGnucT73YG38u7lFekYubIMG3NbAVG2Pwdi', '6', 'images/1734043537.jpg', '2024-12-12 21:45:37', '2024-12-12 21:45:37'),
(253, 'TAWOKAM kamdem', 'Ivan jeremie', NULL, 'ivankamdem5@gmail.com', '657-966-278', '$2y$12$Yxq5MTyMS2f.HjrG0LmNiOs/6Pesik/3VmH2cG4ZkslVAcaAmbvmu', '5', 'images/1734043558.jpg', '2024-12-12 21:45:58', '2024-12-12 21:45:58'),
(254, 'TSANA', 'Georis', '22G00538', 'tsanagueringeoris@gmail.com', '679-393-509', '$2y$12$AV.yXNWVo8AAiWzJ8le4uOm6awYPJeRysBtu3r3hPPRW4qSDd/Rzq', '3', NULL, '2024-12-12 21:55:05', '2024-12-12 21:55:05'),
(255, 'Njoya Foncha', 'Ahmed Nasser', '21G00408', 'nassernjoya912@gmail.com', '656-168-956', '$2y$12$IPQJHohmiNYRRncJcYmjkuL1E3F7fXxm4m/aV3JnpUMpwcUCht2YC', '4', NULL, '2024-12-12 22:00:54', '2024-12-12 22:00:54'),
(256, 'Bikond', 'Maurice', '21G00386', 'bikondmaurice507@gmail.com', '697-491-377', '$2y$12$/SwNLc3mY5WoXSHx50Y0n.82m61j5iZXjwTjNIQKW05iGG.hb/aVi', '4', NULL, '2024-12-12 22:25:32', '2024-12-12 22:25:32'),
(257, 'Tsopnang', 'Joric', '21G00359', 'jorictsopnang@gmail.com', '690-551-837', '$2y$12$12mfWH96Jr7XVdcv.t7tUeODbhsFPpG6.gn6SAz9dDFSJ6W95c/Yu', '6', 'images/1734047088.jpg', '2024-12-12 22:44:48', '2024-12-12 22:44:48'),
(258, 'LEWE NGUEMNA', 'Wilfried', NULL, 'Wilfriedlewe1@gmail.com', '691-319-415', '$2y$12$hjUQVvFc6NTIT/B/gvZ6jeoANu/Az4R13iJTBfd5633qcm8ls680m', '5', 'images/1734051409.jpg', '2024-12-12 23:56:49', '2024-12-12 23:56:49'),
(261, 'EKOSSO', 'Leticia', '21G00432', 'claireebake809@gmail.com', '654-581-491', '$2y$12$sfytPP1ZZN0YCP8EWKKrcewQfU6dvr1Enaur5DRNMoph6ONsyShwe', '6', NULL, '2024-12-13 01:35:16', '2024-12-13 01:35:16');
INSERT INTO `etudiants` (`id`, `nom`, `prenom`, `matricule`, `email`, `phone`, `password`, `id_option`, `image`, `created_at`, `updated_at`) VALUES
(262, 'Penda', 'Franklin gerard', '22G00361', 'franklingerardpenda@gmail.com', '655-356-584', '$2y$12$Najx3d93NWPoL.jxnwEB.OEtbPH9.5PhdqJnnU6aco4l35ucV6cMS', '5', 'images/1734059596.jpg', '2024-12-13 02:13:17', '2024-12-13 02:13:17'),
(263, 'Paning', 'Élisée', '21G00234', 'demanoupaning@gmail.com', '655-239-633', '$2y$12$I3nDI.R6Se7thgrqPcTHX.4o3Boz6wae9vjwfj5BheFcbrQJOs9re', '4', NULL, '2024-12-13 03:27:13', '2024-12-13 03:27:13'),
(264, 'NGASSA YIMGA', 'Loth Ivan', '21G00238', 'lothivanngassayimga@gmail.com', '673-158-050', '$2y$12$/z8xvpPXvdHLgZ4rVxxb4u1a4/v/DdmDgSjlQC73o0Q2LYtDHdn/2', '4', NULL, '2024-12-13 03:44:26', '2024-12-13 03:44:26'),
(265, 'MBOUMEGNI', 'DAÏNA', '22GOO248', 'mewismelda@gmail.com', '674-496-318', '$2y$12$ZjRdIam5addw54FN9GYX8ucLLavxlcUL25gt4zkvID.5TC5aYrhIS', '5', NULL, '2024-12-13 04:19:51', '2024-12-13 04:19:51'),
(266, 'Nouboussi', 'Descartes', '21G00183', 'descartesnouboussi@gmail.com', '655-484-571', '$2y$12$zHXV3cn5rpnaGpJaNrcZJebfKYXDXp46TojGrL1.RVfeLbAyo3aeK', '4', NULL, '2024-12-13 04:26:54', '2024-12-13 04:26:54'),
(267, 'MBAlla eneme', 'Dorcas', '22G001929', 'mballaenemehortensedorcas@gmail.com', '691-916-296', '$2y$12$HtgY9bFYS9FeanXXxmZg5e/XpNhM/VOA4BsUBtPLvxkEb3WhsiEx.', '5', NULL, '2024-12-13 04:33:20', '2024-12-13 04:33:20'),
(268, 'TSEFACK', 'Calvin klein', '22G00540', 'tsefackklein@gmail.com', '653-360-437', '$2y$12$hOxSCb9PcuFwq1Se1AS8GOSk4YIgVghQz.ntDSgkv8bLiLiGqKXbK', '3', NULL, '2024-12-13 04:46:03', '2024-12-13 04:46:03'),
(269, 'Kouda', 'Orline', '22G00202', 'koudaorline@gmail.com', '654-500-320', '$2y$12$dbnfWSEpfedU4yy4zxd8wemiw5x1Lt9xu3HxABGveVfpFq6HdTO4y', '5', 'images/1734070489.jpg', '2024-12-13 05:14:49', '2024-12-13 05:14:49'),
(270, 'Fonkou', 'Corel', '22G00139', 'corelfonkou@gmail.com', '695-703-128', '$2y$12$LTEx94FQ9OS9SixwYiSdqOR1ncOjuPGVfHdc.6ywRtsVhIADXVmDm', '3', NULL, '2024-12-13 05:28:32', '2024-12-13 05:28:32'),
(271, 'Beyaga', 'Gladys', '22G00219', 'gladysmadebeyaga@gmail.com', '657-530-035', '$2y$12$yYLHDy4PFT.JrDL2lXgiteZrgVI4IJkaPl4NcqabFoflw2yckdV7q', '5', NULL, '2024-12-13 06:22:20', '2024-12-13 06:22:20'),
(272, 'NGAMIGNI', 'Marc Aurel', '22g00178', 'marcngams@gmail.com', '656-554-168', '$2y$12$Hlp7KgAuAXIyPRsNtEedZuwwkkHJEeRrK5qfNMag6aduCxz1t9qXW', '3', NULL, '2024-12-13 07:21:09', '2024-12-13 07:21:09'),
(273, 'Rietsch', 'Tiam', '21G00255', 'ngnotchoueTiam@gmail.com', '682-365-391', '$2y$12$2CA2AW9hFaR3ugUk8gKFTuHM8KYAZwl.X0OpIfx0iMjqynrtF7Uie', '4', NULL, '2024-12-13 08:15:03', '2024-12-13 08:15:03'),
(274, 'Messanga', 'Perig', '23G01057', 'messangaperig3@gmail.com', '690-992-259', '$2y$12$o4QKrmKxNwildIgjietJcOac8jQQb7v..9xHP7SrYAEwpaQGVSk.6', '4', 'images/1734082767.jpg', '2024-12-13 08:39:28', '2024-12-13 08:39:28'),
(275, 'Tchuente', 'Iris Maryse', '21G00172', 'irismaryset@gmail.com', '678-706-578', '$2y$12$Grf/QsDP59FAzb2n/qZd8e4ek3Eng51lkWTsL7nhF2tZCNpwfUN36', '4', 'images/1734085819.png', '2024-12-13 09:30:20', '2024-12-13 09:30:20'),
(276, 'Nganso', 'Alex', '22G00306', 'alexnganso143@gmail.com', '694-382-719', '$2y$12$UnFFKSz1FA1Pj6XXU9h5ru6DyYnuEvheaOeGFO.CGPUW3a7PxOSl.', '3', NULL, '2024-12-13 09:38:53', '2024-12-13 09:38:53'),
(277, 'Dongmo', 'Harold', NULL, 'dongrold@gmail.com', '653-149-884', '$2y$12$uP6k6OvTt4XURqTYM9LI5uv05.zwyTeMVxBeUXayEUBSv2sLXWhkW', '3', NULL, '2024-12-13 09:48:56', '2024-12-13 09:48:56'),
(278, 'Bilong', 'Georges Patrice', '22G00056', 'georges101b@gmail.com', '687-136-707', '$2y$12$A4Jb.PMFUfSj11J3WZbAterk6Yrb64A2/qkJh9mJC2WV/TZjpgp0S', '3', NULL, '2024-12-13 10:19:05', '2024-12-13 10:19:05'),
(279, 'MBONO MASSA', 'Emmanuel prince', NULL, 'princembono7@gmail.com', '653-267-009', '$2y$12$xjlpYxlKc25TI3Ur.K0DAOWKwiU3FL4/FKXeFitGPr4FHZNr/tW4W', '3', 'images/1734088864.jpg', '2024-12-13 10:21:04', '2024-12-13 10:21:04'),
(280, 'AZEBAZE', 'Ingride', '21G00426', 'ingridecherelleazebaze@gmail.com', '658-936-366', '$2y$12$.jedONueCDqv9pCrGLA.CO1zp7VtrBpmuHItIST/QfsCt2Td6nv3m', '6', NULL, '2024-12-13 10:22:35', '2024-12-13 10:22:35'),
(281, 'NGAHA FIETMO', 'NELSON FAGUY', '21G00428', 'ngahanelson@gmail.com', '658-935-958', '$2y$12$NYlndxJI2n5rBr0Y.AFV6O1MTD1RsHxvA/fGteLENRoeZJLA6K4FS', '6', NULL, '2024-12-13 10:25:13', '2024-12-13 10:25:13'),
(282, 'EKEBE', 'Natacha', '21G00126', 'natachaekebe@gmail.com', '694-264-343', '$2y$12$ggLh5jahRM5eHoS7LdSRT.kivZF3sC/I5ZhmQS98L1TJExQzlzAF6', '6', NULL, '2024-12-13 12:29:34', '2024-12-13 12:29:34'),
(283, 'Silapeux', 'Sydney', '23G01155', 'sydneylamba@gmail.com', '658-161-680', '$2y$12$NZtNzKS0RspsXYDzduKsButXTsD5zprSfOFMThVgkiKjG7rqIMYxK', '4', NULL, '2024-12-13 13:19:58', '2024-12-13 13:19:58'),
(284, 'lontsi', 'hermann', '21g00200', 'lnhm87404@gmail.com', '653-389-095', '$2y$12$aWwXb3r7M2RFyiYXogBLH.0jnTH41.rQtzTHX.mS4SPZGBW6AH59C', '4', NULL, '2024-12-13 13:37:51', '2024-12-13 13:37:51'),
(285, 'Makembe', 'Frantz', '21G00103', 'frantzmakembe4@gmail.com', '695-841-258', '$2y$12$1GwFGLxSLbdt.oz1YYBG5upfT2rxvDfxGlTN/R.0A5ePWSTzqund.', '6', NULL, '2024-12-13 14:03:22', '2024-12-13 14:03:22'),
(286, 'EKOMO', 'Yvan', '21G00272', 'ntongayvan82@gmail.com', '699-160-454', '$2y$12$kdXFSvhApBEyLOB8Z4TpouSk.z6rRXEjCe0P9rSxssDTuhD.y0PZi', '4', NULL, '2024-12-13 15:07:37', '2024-12-13 15:07:37'),
(287, 'Mousseni', 'Yann', '20g00369', 'mousseniy@gmail.com', '659-395-743', '$2y$12$ZfjPb23l5R7B7PxZm6eWF.bUM.Th20vpHQmsoI4xeP6msMAGYArxu', '4', NULL, '2024-12-13 15:29:15', '2024-12-13 15:29:15'),
(288, 'Mbah mbang', 'Boris', '22G00238', 'borismbang209@gmail.com', '675-974-309', '$2y$12$Pn8pearx94fAeps5YWVwI.p0.fMSfKJJI.JFJXzwcanIzgOpE6.5O', '3', NULL, '2024-12-13 15:42:11', '2024-12-13 15:42:11'),
(289, 'Tido', 'Leal', '22G00393', 'tidoleal65@gmail.com', '653-036-927', '$2y$12$sBjIqRiOfwlFroU4p.t38ux71HV4LZlbeGC9PiOWM.oqhI8Gdlsi6', '3', NULL, '2024-12-13 15:50:17', '2024-12-13 15:50:17'),
(290, 'Ekoko', 'Emmanuel', NULL, 'emmanuelbindzi72@gmail.com', '691-043-434', '$2y$12$kfhPs9UWAO8S8WPXJp.td.H4wvqKZkvFC51K3HIz.iuScJGSYTx9.', '3', NULL, '2024-12-13 15:54:14', '2024-12-13 15:54:14'),
(291, 'Onanena', 'Hubert', '22I00843', 'hubertonanena2004@gmail.com', '658-595-620', '$2y$12$jN4fgdwMLxXOVcwNipHELuWp5NZ3VQh4u2LtHbSF8uMRBUJGBf3X6', '5', NULL, '2024-12-13 16:08:04', '2024-12-13 16:08:04'),
(292, 'MONGO BIDJOKA', 'Gabriel Franklin', '24G01114', 'gabrielescanor415@gmail.com', '693-846-020', '$2y$12$SrsCA7uUv0Ke8M84cWB9tOsnmBJcqKs69DsV6hATiSNEUPTEZO5m.', '3', NULL, '2024-12-13 16:09:24', '2024-12-13 16:09:24'),
(293, 'Dymitri', 'Ngayo', '21G00210', 'ngayodimitry@gmail.com', '697-831-381', '$2y$12$oZpB30U8pi2SGArS0tadNuYNextCtb60/JSDXB3ruwKk.rACchCV6', '4', NULL, '2024-12-13 16:43:06', '2024-12-13 16:43:06'),
(294, 'Ndouma', 'Vanessa', '21G00022', 'hilarylucresse@gmail.com', '655-519-835', '$2y$12$WnslFdp/uaDEwrzrfZlgpul8C7DgJs0eWcaA/l8dmlcSwMj.bRPyq', '6', NULL, '2024-12-13 16:48:51', '2024-12-13 16:48:51'),
(295, 'Madé', 'Annabelle', '22G00220', 'Annabellemade95@gmail.com', '656-196-017', '$2y$12$WrFFODLgLDN81v4uJLG9wexwYNOxgzRWeQ8tlyheuMbCoDT8oUms.', '3', NULL, '2024-12-13 16:49:45', '2024-12-13 16:49:45'),
(296, 'SOBKIKA DABA', 'Mathieu', NULL, 'msobkika.77@gmail.com', '655-455-439', '$2y$12$aZF9TGuQPPHWUi7rFXxREeKxt3lVCAeJNpf.7kveAN/LWYXZBJZ0S', '5', NULL, '2024-12-13 18:01:35', '2024-12-13 18:01:35'),
(299, 'TANA', 'Isidore', '22G00525', 'theophiletana6@gmail.com', '678-181-036', '$2y$12$HaOWYwr7smqgCkKSpaZBv.HPaAFv49/5ydYCQJ4lFKobJJyBYoEZ.', '3', NULL, '2024-12-14 08:50:41', '2024-12-14 08:50:41'),
(300, 'SONHAFOUO MANFOUO', 'JEANNIA', NULL, 'jeanniasonhafouo@gmail.com', '692-808-735', '$2y$12$EWbnAMeV5tqlxoraWRqOR.7n/4y0CinWAoM1pLHG/rBt22CBnM2s2', '3', 'images/1734179032.jpg', '2024-12-14 11:23:52', '2024-12-14 11:23:52'),
(301, 'EFFA', 'Arthur Junior', '23G00950', 'effajunior237@gmail.com', '690-903-045', '$2y$12$nL2CEtMpvOdCe7BueehVQOsBshB29tHzUVvCc/Xp/2iQoWHayqCgC', '4', NULL, '2024-12-14 15:43:01', '2024-12-14 15:43:01');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `filleuls`
--

CREATE TABLE `filleuls` (
  `id` int(11) NOT NULL,
  `id_etudiant` int(10) UNSIGNED NOT NULL,
  `id_parrain` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `filleuls`
--

INSERT INTO `filleuls` (`id`, `id_etudiant`, `id_parrain`) VALUES
(35, 19, 21),
(36, 21, 22),
(37, 23, 23),
(38, 24, 24),
(39, 26, 25),
(40, 27, 26),
(41, 28, 27),
(42, 30, 28),
(43, 31, 21),
(44, 32, 22),
(45, 33, 23),
(46, 34, 24),
(47, 35, 25),
(48, 36, 26),
(49, 37, 27),
(50, 38, 28),
(51, 39, 29),
(52, 40, 30),
(53, 42, 31),
(54, 43, 32),
(55, 44, 33),
(56, 45, 34),
(57, 50, 35),
(58, 51, 36),
(59, 53, 37),
(60, 54, 38),
(61, 56, 39),
(62, 57, 40),
(63, 58, 41),
(64, 59, 42),
(65, 60, 43),
(66, 61, 44),
(67, 63, 45),
(68, 64, 46),
(69, 65, 47),
(70, 66, 48),
(71, 71, 49),
(72, 72, 50),
(73, 75, 51),
(74, 76, 52),
(75, 78, 53),
(76, 79, 54),
(77, 82, 55),
(78, 20, 56),
(79, 25, 57),
(80, 41, 58),
(81, 46, 59),
(82, 47, 60),
(83, 49, 61),
(84, 52, 62),
(85, 55, 63),
(86, 62, 64),
(87, 67, 65),
(88, 68, 66),
(89, 80, 67),
(90, 97, 68),
(91, 108, 69),
(92, 113, 70),
(93, 116, 71),
(94, 125, 72),
(95, 126, 73),
(96, 129, 74),
(97, 132, 75),
(98, 135, 76),
(99, 137, 77),
(100, 139, 78),
(101, 145, 79),
(102, 151, 80),
(103, 153, 56),
(104, 155, 57),
(105, 157, 58),
(106, 161, 59),
(107, 164, 60),
(108, 170, 61),
(109, 174, 62),
(110, 177, 63),
(111, 179, 64),
(112, 185, 65),
(113, 186, 66),
(114, 188, 67),
(115, 210, 68),
(116, 211, 69),
(117, 212, 70),
(118, 214, 71),
(119, 218, 72),
(120, 224, 73),
(121, 231, 74),
(122, 234, 75),
(123, 235, 76),
(124, 244, 77),
(125, 247, 78),
(126, 253, 79),
(127, 258, 80),
(128, 262, 56),
(129, 265, 57),
(130, 267, 58),
(131, 269, 59),
(132, 271, 60),
(133, 83, 21),
(134, 84, 22),
(135, 86, 23),
(136, 89, 24),
(137, 90, 25),
(138, 93, 26),
(139, 96, 27),
(140, 100, 28),
(141, 103, 29),
(142, 104, 30),
(143, 109, 31),
(144, 110, 32),
(145, 111, 33),
(146, 114, 34),
(147, 117, 35),
(148, 118, 36),
(149, 119, 37),
(150, 122, 38),
(151, 123, 39),
(152, 127, 40),
(153, 128, 41),
(154, 131, 42),
(155, 134, 43),
(156, 140, 44),
(157, 143, 45),
(158, 147, 46),
(159, 148, 47),
(160, 149, 48),
(161, 154, 49),
(162, 156, 50),
(163, 158, 51),
(164, 160, 52),
(165, 163, 53),
(166, 169, 54),
(167, 171, 55),
(168, 172, 81),
(169, 173, 82),
(170, 175, 83),
(171, 176, 84),
(172, 178, 85),
(173, 180, 86),
(174, 184, 87),
(175, 189, 88),
(176, 191, 89),
(177, 192, 90),
(178, 194, 91),
(179, 195, 92),
(180, 196, 93),
(181, 197, 94),
(182, 198, 95),
(183, 199, 96),
(184, 200, 21),
(185, 201, 22),
(186, 202, 23),
(187, 203, 24),
(188, 204, 25),
(189, 205, 26),
(190, 206, 27),
(191, 213, 28),
(192, 215, 29),
(193, 216, 30),
(194, 217, 31),
(195, 219, 32),
(196, 220, 33),
(197, 221, 34),
(198, 222, 35),
(199, 223, 36),
(200, 227, 37),
(201, 233, 38),
(202, 245, 39),
(203, 254, 40),
(204, 268, 41),
(205, 270, 42),
(206, 272, 43),
(207, 276, 44),
(208, 277, 45),
(209, 278, 46),
(210, 279, 47),
(211, 288, 21),
(212, 289, 21),
(213, 290, 22);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `managers`
--

CREATE TABLE `managers` (
  `id` int(11) NOT NULL,
  `id_etudiant` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `managers`
--

INSERT INTO `managers` (`id`, `id_etudiant`, `code`) VALUES
(1, 2, 'BARCA1'),
(2, 232, 'GRT1234');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_09_082354_create_etudiants_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `options`
--

INSERT INTO `options` (`id`, `nom`, `link`) VALUES
(1, 'TCO 1', 'TCO 2'),
(2, 'TCO 2', 'TCO 1'),
(3, 'GLO 3', 'GLO 4'),
(4, 'GLO 4', 'GLO 3'),
(5, 'GRT 3', 'GRT 4'),
(6, 'GRT 4', 'GRT 3'),
(7, 'GE 3', 'GE 4'),
(8, 'GE 4', 'GE 3');

-- --------------------------------------------------------

--
-- Structure de la table `parrains`
--

CREATE TABLE `parrains` (
  `id` int(11) NOT NULL,
  `id_etudiant` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `parrains`
--

INSERT INTO `parrains` (`id`, `id_etudiant`) VALUES
(21, 2),
(22, 13),
(23, 14),
(24, 15),
(25, 16),
(56, 17),
(26, 18),
(27, 22),
(57, 29),
(28, 48),
(29, 69),
(30, 70),
(31, 73),
(58, 74),
(59, 77),
(32, 81),
(33, 85),
(34, 88),
(60, 91),
(61, 92),
(35, 94),
(36, 99),
(37, 101),
(38, 102),
(39, 112),
(40, 115),
(41, 120),
(42, 121),
(43, 124),
(44, 130),
(62, 133),
(45, 146),
(46, 150),
(47, 152),
(48, 159),
(49, 162),
(50, 165),
(51, 167),
(52, 168),
(53, 181),
(54, 182),
(55, 183),
(81, 187),
(63, 190),
(82, 193),
(83, 225),
(84, 226),
(85, 228),
(64, 229),
(86, 230),
(65, 232),
(66, 236),
(67, 237),
(87, 238),
(68, 239),
(69, 240),
(70, 241),
(88, 242),
(89, 243),
(90, 246),
(71, 248),
(72, 249),
(91, 250),
(73, 251),
(74, 252),
(92, 255),
(93, 256),
(75, 257),
(76, 261),
(94, 263),
(95, 264),
(96, 266),
(77, 280),
(78, 281),
(79, 282),
(80, 285);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9lCJaxT4tMj0bHYoEfWHvGYqCzP7V6bj6TvMyF0w', NULL, '129.0.76.178', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZnJVek1aN0dwanUwTkVEUGZxYnpTY3lDWEVtZk1HcTMyMUNFbEhVcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vcGFycmFpbmFnZTIwMjQubWNzYXJsLmNtL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1734197684),
('KsdJgrlAbFQDafokoEKhU4nYaoaSNSxi7rIDRzGa', NULL, '129.0.76.109', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkFCWW4xMmdlazdQQjZjOHFBcWtqbnE1Umcwbm16dEoyRXZ6T2tibyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vcGFycmFpbmFnZTIwMjQubWNzYXJsLmNtL3JlZ2lzdGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1734199946),
('lVl22fBoelxn73EJXEo92nymHePakj1jA5vpMXLf', NULL, '45.140.143.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkdYM3BjSWNiak1PaFBOSzJyT040RkowMDMyRVVEUTVXQ1JSNEZZTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vcGFycmFpbmFnZTIwMjQubWNzYXJsLmNtL3Byb2ZpbGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1734201572),
('rUHgY6Yx0PWGWxhPsWPNa8amiYk8SLtcGPnypxA7', 19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieEk4bmY1MXM1dGpZaGpxaDRnOHozMHlTWk1rNmlmNnRvSmhaS25qZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9leHBvcnQtZmlsbGV1bHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxOTt9', 1734204708),
('SIIt5bfU89EiKq9mtEkSs4uD8fyLbzLNt2oCfqzb', 2, '129.0.76.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMFpVcEQ4ODJJaW50WkZLU05pR29NY2t4UDVDWG1SZm8wUnNPTGdhRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vcGFycmFpbmFnZTIwMjQubWNzYXJsLmNtL3Byb2ZpbGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1734201527);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `etudiants_email_unique` (`email`),
  ADD UNIQUE KEY `etudiants_matricule_unique` (`matricule`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `filleuls`
--
ALTER TABLE `filleuls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parrain` (`id_parrain`),
  ADD KEY `id_etudiant` (`id_etudiant`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_etudiant` (`id_etudiant`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `parrains`
--
ALTER TABLE `parrains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_etudiant` (`id_etudiant`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `filleuls`
--
ALTER TABLE `filleuls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `parrains`
--
ALTER TABLE `parrains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `filleuls`
--
ALTER TABLE `filleuls`
  ADD CONSTRAINT `filleuls_ibfk_1` FOREIGN KEY (`id_parrain`) REFERENCES `parrains` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `filleuls_ibfk_2` FOREIGN KEY (`id_etudiant`) REFERENCES `etudiants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `managers`
--
ALTER TABLE `managers`
  ADD CONSTRAINT `managers_ibfk_1` FOREIGN KEY (`id_etudiant`) REFERENCES `etudiants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `parrains`
--
ALTER TABLE `parrains`
  ADD CONSTRAINT `parrains_ibfk_1` FOREIGN KEY (`id_etudiant`) REFERENCES `etudiants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
