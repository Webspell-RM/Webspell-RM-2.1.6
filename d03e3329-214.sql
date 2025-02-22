-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 07. Feb 2025 um 21:54
-- Server-Version: 10.6.18-MariaDB-0ubuntu0.22.04.1-log
-- PHP-Version: 7.4.33-nmm7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `d03e3329`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_backups`
--

CREATE TABLE `rm_214_backups` (
  `id` int(11) NOT NULL,
  `filename` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdby` int(11) NOT NULL DEFAULT 0,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_banned_ips`
--

CREATE TABLE `rm_214_banned_ips` (
  `banID` int(11) NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deltime` int(15) NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_captcha`
--

CREATE TABLE `rm_214_captcha` (
  `hash` varchar(255) NOT NULL DEFAULT '',
  `captcha` int(11) NOT NULL DEFAULT 0,
  `deltime` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_captcha`
--

INSERT INTO `rm_214_captcha` (`hash`, `captcha`, `deltime`) VALUES
('58850b331dc1e7974caf730792a76cf3', 0, 1738945350);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_contact`
--

CREATE TABLE `rm_214_contact` (
  `contactID` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_contact`
--

INSERT INTO `rm_214_contact` (`contactID`, `name`, `email`, `sort`) VALUES
(1, 'Administrator', 'info@webspell-rm.de', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_cookies`
--

CREATE TABLE `rm_214_cookies` (
  `userID` int(11) NOT NULL,
  `cookie` binary(64) NOT NULL,
  `expiration` int(14) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_counter`
--

CREATE TABLE `rm_214_counter` (
  `hits` int(20) NOT NULL DEFAULT 0,
  `online` int(14) NOT NULL DEFAULT 0,
  `maxonline` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_counter`
--

INSERT INTO `rm_214_counter` (`hits`, `online`, `maxonline`) VALUES
(3191, 1696255942, 76);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_counter_iplist`
--

CREATE TABLE `rm_214_counter_iplist` (
  `dates` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `del` int(20) NOT NULL DEFAULT 0,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_counter_iplist`
--

INSERT INTO `rm_214_counter_iplist` (`dates`, `del`, `ip`) VALUES
('07.02.2025', 1738905028, '47.128.124.94'),
('07.02.2025', 1738929915, '147.185.132.45'),
('06.02.2025', 1738872381, '47.128.99.223'),
('07.02.2025', 1738947469, '66.249.78.37'),
('07.02.2025', 1738918390, '51.8.102.73'),
('07.02.2025', 1738883331, '47.128.49.215'),
('07.02.2025', 1738883852, '172.203.190.138'),
('06.02.2025', 1738877648, '47.128.19.218'),
('07.02.2025', 1738954973, '66.249.78.36'),
('07.02.2025', 1738944150, '172.203.190.134'),
('07.02.2025', 1738944149, '172.203.190.143'),
('06.02.2025', 1738874451, '47.128.97.243'),
('06.02.2025', 1738875305, '47.128.97.234'),
('07.02.2025', 1738918388, '51.8.102.228');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_counter_stats`
--

CREATE TABLE `rm_214_counter_stats` (
  `dates` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `count` int(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_counter_stats`
--

INSERT INTO `rm_214_counter_stats` (`dates`, `count`) VALUES
('02.10.2023', 1),
('03.10.2023', 1),
('04.10.2023', 1),
('05.10.2023', 5),
('06.10.2023', 4),
('07.10.2023', 4),
('08.10.2023', 4),
('09.10.2023', 2),
('10.10.2023', 2),
('11.10.2023', 5),
('12.10.2023', 2),
('13.10.2023', 5),
('14.10.2023', 1),
('15.10.2023', 3),
('16.10.2023', 3),
('17.10.2023', 4),
('18.10.2023', 2),
('19.10.2023', 2),
('20.10.2023', 4),
('21.10.2023', 4),
('22.10.2023', 4),
('24.10.2023', 3),
('25.10.2023', 1),
('26.10.2023', 1),
('28.10.2023', 3),
('29.10.2023', 2),
('31.10.2023', 1),
('03.11.2023', 1),
('06.11.2023', 2),
('09.11.2023', 2),
('14.11.2023', 1),
('21.11.2023', 4),
('05.12.2023', 3),
('08.12.2023', 2),
('16.12.2023', 2),
('18.12.2023', 2),
('20.12.2023', 3),
('21.12.2023', 1),
('22.12.2023', 3),
('23.12.2023', 2),
('27.12.2023', 3),
('02.01.2024', 1),
('04.01.2024', 1),
('05.01.2024', 2),
('06.01.2024', 2),
('10.01.2024', 2),
('12.01.2024', 2),
('13.01.2024', 3),
('14.01.2024', 3),
('15.01.2024', 2),
('16.01.2024', 2),
('18.01.2024', 3),
('19.01.2024', 2),
('21.01.2024', 2),
('22.01.2024', 1),
('24.01.2024', 3),
('27.01.2024', 2),
('30.01.2024', 3),
('31.01.2024', 2),
('01.02.2024', 1),
('02.02.2024', 1),
('04.02.2024', 2),
('06.02.2024', 2),
('07.02.2024', 1),
('08.02.2024', 3),
('09.02.2024', 2),
('11.02.2024', 3),
('12.02.2024', 2),
('14.02.2024', 2),
('16.02.2024', 1),
('18.02.2024', 2),
('21.02.2024', 2),
('22.02.2024', 1),
('24.02.2024', 2),
('25.02.2024', 1),
('26.02.2024', 3),
('05.03.2024', 2),
('06.03.2024', 7),
('08.03.2024', 2),
('10.03.2024', 3),
('11.03.2024', 2),
('12.03.2024', 1),
('14.03.2024', 3),
('15.03.2024', 1),
('16.03.2024', 2),
('19.03.2024', 2),
('20.03.2024', 1),
('23.03.2024', 3),
('26.03.2024', 2),
('27.03.2024', 1),
('28.03.2024', 3),
('29.03.2024', 2),
('30.03.2024', 2),
('31.03.2024', 2),
('01.04.2024', 2),
('01.04.2024', 2),
('02.04.2024', 1),
('05.04.2024', 1),
('10.04.2024', 2),
('11.04.2024', 2),
('14.04.2024', 3),
('16.04.2024', 1),
('18.04.2024', 2),
('19.04.2024', 16),
('22.04.2024', 3),
('24.04.2024', 2),
('25.04.2024', 2),
('27.04.2024', 2),
('28.04.2024', 1),
('30.04.2024', 2),
('02.05.2024', 2),
('04.05.2024', 2),
('05.05.2024', 11),
('06.05.2024', 2),
('08.05.2024', 3),
('09.05.2024', 29),
('10.05.2024', 2),
('11.05.2024', 3),
('14.05.2024', 2),
('17.05.2024', 3),
('21.05.2024', 5),
('24.05.2024', 3),
('25.05.2024', 4),
('30.05.2024', 2),
('01.06.2024', 1),
('02.06.2024', 1),
('04.06.2024', 2),
('05.06.2024', 1),
('06.06.2024', 1),
('09.06.2024', 4),
('10.06.2024', 2),
('12.06.2024', 3),
('13.06.2024', 23),
('14.06.2024', 3),
('16.06.2024', 3),
('17.06.2024', 3),
('18.06.2024', 1),
('19.06.2024', 2),
('21.06.2024', 2),
('24.06.2024', 1),
('25.06.2024', 1),
('26.06.2024', 3),
('27.06.2024', 3),
('28.06.2024', 2),
('29.06.2024', 3),
('01.07.2024', 1),
('02.07.2024', 2),
('03.07.2024', 3),
('04.07.2024', 4),
('05.07.2024', 3),
('06.07.2024', 2),
('07.07.2024', 1),
('11.07.2024', 2),
('12.07.2024', 1),
('14.07.2024', 3),
('15.07.2024', 1),
('16.07.2024', 4),
('17.07.2024', 9),
('18.07.2024', 5),
('19.07.2024', 3),
('20.07.2024', 6),
('21.07.2024', 5),
('22.07.2024', 4),
('23.07.2024', 7),
('24.07.2024', 7),
('25.07.2024', 4),
('26.07.2024', 4),
('27.07.2024', 6),
('28.07.2024', 7),
('29.07.2024', 6),
('30.07.2024', 5),
('31.07.2024', 3),
('01.08.2024', 4),
('02.08.2024', 16),
('03.08.2024', 9),
('04.08.2024', 3),
('05.08.2024', 2),
('06.08.2024', 8),
('07.08.2024', 4),
('08.08.2024', 3),
('09.08.2024', 3),
('10.08.2024', 2),
('11.08.2024', 3),
('12.08.2024', 6),
('13.08.2024', 12),
('14.08.2024', 21),
('15.08.2024', 5),
('16.08.2024', 9),
('17.08.2024', 4),
('18.08.2024', 4),
('19.08.2024', 5),
('19.08.2024', 5),
('19.08.2024', 5),
('20.08.2024', 7),
('21.08.2024', 5),
('22.08.2024', 7),
('23.08.2024', 5),
('24.08.2024', 6),
('25.08.2024', 4),
('26.08.2024', 1),
('27.08.2024', 4),
('28.08.2024', 3),
('29.08.2024', 6),
('30.08.2024', 4),
('31.08.2024', 8),
('01.09.2024', 6),
('02.09.2024', 3),
('03.09.2024', 1),
('04.09.2024', 5),
('05.09.2024', 2),
('06.09.2024', 2),
('07.09.2024', 2),
('08.09.2024', 6),
('09.09.2024', 12),
('10.09.2024', 6),
('11.09.2024', 1),
('12.09.2024', 13),
('13.09.2024', 6),
('14.09.2024', 9),
('15.09.2024', 1),
('16.09.2024', 6),
('17.09.2024', 4),
('18.09.2024', 3),
('19.09.2024', 4),
('20.09.2024', 8),
('21.09.2024', 6),
('22.09.2024', 4),
('23.09.2024', 9),
('24.09.2024', 5),
('25.09.2024', 3),
('26.09.2024', 4),
('27.09.2024', 98),
('28.09.2024', 23),
('29.09.2024', 55),
('30.09.2024', 12),
('01.10.2024', 11),
('02.10.2024', 17),
('03.10.2024', 22),
('04.10.2024', 15),
('05.10.2024', 29),
('06.10.2024', 13),
('07.10.2024', 18),
('08.10.2024', 19),
('09.10.2024', 19),
('10.10.2024', 20),
('11.10.2024', 16),
('12.10.2024', 13),
('13.10.2024', 16),
('14.10.2024', 17),
('15.10.2024', 7),
('16.10.2024', 9),
('17.10.2024', 21),
('18.10.2024', 10),
('19.10.2024', 6),
('20.10.2024', 13),
('21.10.2024', 12),
('22.10.2024', 9),
('23.10.2024', 18),
('24.10.2024', 4),
('25.10.2024', 9),
('26.10.2024', 10),
('27.10.2024', 9),
('28.10.2024', 16),
('29.10.2024', 11),
('30.10.2024', 5),
('31.10.2024', 12),
('01.11.2024', 11),
('02.11.2024', 9),
('03.11.2024', 6),
('04.11.2024', 3),
('05.11.2024', 11),
('06.11.2024', 11),
('07.11.2024', 15),
('08.11.2024', 11),
('09.11.2024', 11),
('10.11.2024', 12),
('11.11.2024', 58),
('12.11.2024', 79),
('13.11.2024', 402),
('14.11.2024', 5),
('15.11.2024', 13),
('16.11.2024', 14),
('17.11.2024', 14),
('18.11.2024', 12),
('19.11.2024', 11),
('19.11.2024', 11),
('20.11.2024', 5),
('21.11.2024', 8),
('22.11.2024', 5),
('23.11.2024', 7),
('24.11.2024', 11),
('25.11.2024', 7),
('26.11.2024', 10),
('27.11.2024', 3),
('28.11.2024', 8),
('29.11.2024', 7),
('30.11.2024', 6),
('01.12.2024', 2),
('02.12.2024', 9),
('03.12.2024', 3),
('04.12.2024', 8),
('05.12.2024', 13),
('06.12.2024', 6),
('07.12.2024', 11),
('08.12.2024', 2),
('09.12.2024', 4),
('10.12.2024', 6),
('11.12.2024', 14),
('12.12.2024', 15),
('13.12.2024', 18),
('14.12.2024', 12),
('15.12.2024', 15),
('16.12.2024', 17),
('17.12.2024', 14),
('18.12.2024', 11),
('19.12.2024', 21),
('20.12.2024', 12),
('21.12.2024', 11),
('22.12.2024', 9),
('23.12.2024', 19),
('24.12.2024', 13),
('25.12.2024', 16),
('26.12.2024', 11),
('27.12.2024', 15),
('28.12.2024', 8),
('29.12.2024', 15),
('30.12.2024', 12),
('31.12.2024', 11),
('01.01.2025', 15),
('02.01.2025', 10),
('03.01.2025', 25),
('04.01.2025', 15),
('05.01.2025', 13),
('06.01.2025', 16),
('07.01.2025', 15),
('08.01.2025', 26),
('09.01.2025', 14),
('10.01.2025', 12),
('11.01.2025', 23),
('12.01.2025', 21),
('13.01.2025', 12),
('14.01.2025', 17),
('15.01.2025', 14),
('16.01.2025', 12),
('17.01.2025', 15),
('18.01.2025', 13),
('19.01.2025', 10),
('20.01.2025', 7),
('21.01.2025', 7),
('22.01.2025', 28),
('23.01.2025', 80),
('24.01.2025', 10),
('25.01.2025', 12),
('26.01.2025', 10),
('27.01.2025', 13),
('28.01.2025', 10),
('29.01.2025', 13),
('30.01.2025', 8),
('31.01.2025', 13),
('01.02.2025', 21),
('02.02.2025', 22),
('03.02.2025', 12),
('04.02.2025', 18),
('05.02.2025', 8),
('06.02.2025', 17),
('07.02.2025', 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_email`
--

CREATE TABLE `rm_214_email` (
  `emailID` int(1) NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` int(5) NOT NULL,
  `debug` int(1) NOT NULL,
  `auth` int(1) NOT NULL,
  `html` int(1) NOT NULL,
  `smtp` int(1) NOT NULL,
  `secure` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_email`
--

INSERT INTO `rm_214_email` (`emailID`, `user`, `password`, `host`, `port`, `debug`, `auth`, `html`, `smtp`, `secure`) VALUES
(1, '', '', '', 25, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_failed_login_attempts`
--

CREATE TABLE `rm_214_failed_login_attempts` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wrong` int(2) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_forum_groups`
--

CREATE TABLE `rm_214_forum_groups` (
  `fgrID` int(11) NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_forum_groups`
--

INSERT INTO `rm_214_forum_groups` (`fgrID`, `name`) VALUES
(1, 'Intern board users');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_forum_moderators`
--

CREATE TABLE `rm_214_forum_moderators` (
  `modID` int(11) NOT NULL,
  `boardID` int(11) NOT NULL DEFAULT 0,
  `userID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_forum_posts_spam`
--

CREATE TABLE `rm_214_forum_posts_spam` (
  `postID` int(11) NOT NULL,
  `boardID` int(11) NOT NULL DEFAULT 0,
  `topicID` int(11) NOT NULL DEFAULT 0,
  `date` int(14) NOT NULL DEFAULT 0,
  `poster` int(11) NOT NULL DEFAULT 0,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_forum_ranks`
--

CREATE TABLE `rm_214_forum_ranks` (
  `rankID` int(11) NOT NULL,
  `rank` varchar(255) NOT NULL DEFAULT '',
  `pic` varchar(255) NOT NULL DEFAULT '',
  `postmin` int(11) NOT NULL DEFAULT 0,
  `postmax` int(11) NOT NULL DEFAULT 0,
  `special` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_forum_ranks`
--

INSERT INTO `rm_214_forum_ranks` (`rankID`, `rank`, `pic`, `postmin`, `postmax`, `special`) VALUES
(1, 'Rank 0', 'rank0.png', 0, 9, 0),
(2, 'Rank 1', 'rank1.png', 10, 29, 0),
(3, 'Rank 2', 'rank2.png', 30, 49, 0),
(4, 'Rank 3', 'rank3.png', 50, 69, 0),
(5, 'Rank 4', 'rank4.png', 70, 89, 0),
(6, 'Rank 5', 'rank5.png', 90, 119, 0),
(7, 'Rank 6', 'rank6.png', 100, 299, 0),
(8, 'Rank 7', 'rank7.png', 300, 599, 0),
(9, 'Rank 8', 'rank8.png', 600, 899, 0),
(10, 'Rank 9', 'rank9.png', 900, 1299, 0),
(11, 'Rank 10', 'rank10.png', 1300, 1599, 0),
(12, 'Rank 11', 'rank11.png', 1600, 1999, 0),
(13, 'Rank 12', 'rank12.png', 2000, 2147483647, 0),
(14, 'Administrator', 'admin.png', 0, 0, 1),
(15, 'Moderator', 'moderator.png', 0, 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_forum_topics_spam`
--

CREATE TABLE `rm_214_forum_topics_spam` (
  `topicID` int(11) NOT NULL,
  `boardID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `date` int(14) NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` int(1) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_lock`
--

CREATE TABLE `rm_214_lock` (
  `time` int(11) NOT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_lock`
--

INSERT INTO `rm_214_lock` (`time`, `reason`) VALUES
(1697900360, 'dbgdg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_modrewrite`
--

CREATE TABLE `rm_214_modrewrite` (
  `ruleID` int(11) NOT NULL,
  `regex` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `replace_regex` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `replace_result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rebuild_regex` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rebuild_result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_modrewrite`
--

INSERT INTO `rm_214_modrewrite` (`ruleID`, `regex`, `link`, `fields`, `replace_regex`, `replace_result`, `rebuild_regex`, `rebuild_result`) VALUES
(1, 'about.html', 'index.php?site=about_us', 'a:0:{}', 'index.php?site=about_us', 'about.html', 'about.html', 'index.php?site=about_us'),
(2, 'clan_rules.html', 'index.php?site=clan_rules', 'a:0:{}', 'index.php?site=clan_rules', 'clan_rules.html', 'clan_rules.html', 'index.php?site=clan_rules'),
(3, 'clanwars.html', 'index.php?site=clanwars', 'a:0:{}', 'index.php?site=clanwars', 'clanwars.html', 'clanwars.html', 'index.php?site=clanwars'),
(4, 'contact.html', 'index.php?site=contact', 'a:0:{}', 'index.php?site=contact', 'contact.html', 'contact.html', 'index.php?site=contact'),
(5, 'counter.html', 'index.php?site=counter', 'a:0:{}', 'index.php?site=counter', 'counter.html', 'counter.html', 'index.php?site=counter'),
(6, 'discord.html', 'index.php?site=discord', 'a:0:{}', 'index.php?site=discord', 'discord.html', 'discord.html', 'index.php?site=discord'),
(7, 'faq.html', 'index.php?site=faq', 'a:0:{}', 'index.php?site=faq', 'faq.html', 'faq.html', 'index.php?site=faq'),
(8, 'faq/{catID}.html', 'index.php?site=faq&action=faqcat&faqcatID={catID}', 'a:1:{s:5:\"catID\";s:7:\"integer\";}', 'index.php?site=faq[&|&amp;]*action=faqcat[&|&amp;]*faqcatID=([0-9]+)', 'faq/$3.html', 'faq/([0-9]+?).html', 'index.php?site=faq&action=faqcat&faqcatID=$1'),
(9, 'faq/{catID}/{faqID}.html', 'index.php?site=faq&action=faq&faqID={faqID}&faqcatID={catID}', 'a:2:{s:5:\"faqID\";s:7:\"integer\";s:5:\"catID\";s:7:\"integer\";}', 'index.php?site=faq[&|&amp;]*action=faq[&|&amp;]*faqID=([0-9]+)[&|&amp;]*faqcatID=([0-9]+)', 'faq/$4/$3.html', 'faq/([0-9]+?)/([0-9]+?).html', 'index.php?site=faq&action=faq&faqID=$2&faqcatID=$1'),
(10, 'files.html', 'index.php?site=files', 'a:0:{}', 'index.php?site=files', 'files.html', 'files.html', 'index.php?site=files'),
(11, 'files/category/{catID}', 'index.php?site=files&cat={catID}', 'a:1:{s:5:\"catID\";s:7:\"integer\";}', 'index.php?site=files[&|&amp;]*cat=([0-9]+)', 'files/category/$3', 'files/category/([0-9]+?)', 'index.php?site=files&cat=$1'),
(12, 'files/file/{fileID}', 'index.php?site=files&file={fileID}', 'a:1:{s:6:\"fileID\";s:7:\"integer\";}', 'index.php?site=files[&|&amp;]*file=([0-9]+)', 'files/file/$3', 'files/file/([0-9]+?)', 'index.php?site=files&file=$1'),
(13, 'files/report/{fileID}', 'index.php?site=files&action=report&link={fileID}', 'a:1:{s:6:\"fileID\";s:7:\"integer\";}', 'index.php?site=files[&|&amp;]*action=report[&|&amp;]*link=([0-9]+)', 'files/report/$3', 'files/report/([0-9]+?)', 'index.php?site=files&action=report&link=$1'),
(14, 'forum.html', 'index.php?site=forum', 'a:0:{}', 'index.php?site=forum', 'forum.html', 'forum.html', 'index.php?site=forum'),
(15, 'forum/{action}/board/{board}.html', 'index.php?site=forum&board={board}&action={action}', 'a:2:{s:5:\"board\";s:7:\"integer\";s:6:\"action\";s:6:\"string\";}', 'index.php?site=forum[&|&amp;]*board=([0-9]+)[&|&amp;]*action=(w*?)', 'forum/$4/board/$3.html', 'forum/(w*?)/board/([0-9]+?).html', 'index.php?site=forum&board=$2&action=$1'),
(16, 'forum/action.html', 'forum.php', 'a:0:{}', 'forum.php', 'forum/action.html', 'forum/action.html', 'forum.php'),
(17, 'forum/actions/markall.html', 'index.php?site=forum&action=markall', 'a:0:{}', 'index.php?site=forum[&|&amp;]*action=markall', 'forum/actions/markall.html', 'forum/actions/markall.html', 'index.php?site=forum&action=markall'),
(18, 'forum/board/{board}.html', 'index.php?site=forum&board={board}', 'a:1:{s:5:\"board\";s:7:\"integer\";}', 'index.php?site=forum[&|&amp;]*board=([0-9]+)', 'forum/board/$3.html', 'forum/board/([0-9]+?).html', 'index.php?site=forum&board=$1'),
(19, 'forum/board/{board}/addtopic.html', 'index.php?site=forum&addtopic=true&board={board}', 'a:1:{s:5:\"board\";s:7:\"integer\";}', 'index.php?site=forum[&|&amp;]*addtopic=true[&|&amp;]*board=([0-9]+)', 'forum/board/$3/addtopic.html', 'forum/board/([0-9]+?)/addtopic.html', 'index.php?site=forum&addtopic=true&board=$1'),
(20, 'forum/cat/{cat}.html', 'index.php?site=forum&cat={cat}', 'a:1:{s:3:\"cat\";s:7:\"integer\";}', 'index.php?site=forum[&|&amp;]*cat=([0-9]+)', 'forum/cat/$3.html', 'forum/cat/([0-9]+?).html', 'index.php?site=forum&cat=$1'),
(21, 'gallery.html', 'index.php?site=gallery', 'a:0:{}', 'index.php?site=gallery', 'gallery.html', 'gallery.html', 'index.php?site=gallery'),
(22, 'gallery/{gallerycatID}.html', 'index.php?site=gallery&action=show&gallerycatID={gallerycatID}', 'a:1:{s:12:\"gallerycatID\";s:7:\"integer\";}', 'index.php?site=gallery[&|&amp;]*action=show[&|&amp;]*gallerycatID=([0-9]+)', 'gallery/$3.html', 'gallery/([0-9]+?).html', 'index.php?site=gallery&action=show&gallerycatID=$1'),
(23, 'history.html', 'index.php?site=history', 'a:0:{}', 'index.php?site=history', 'history.html', 'history.html', 'index.php?site=history'),
(24, 'imprint.html', 'index.php?site=imprint', 'a:0:{}', 'index.php?site=imprint', 'imprint.html', 'imprint.html', 'index.php?site=imprint'),
(25, 'joinus.html', 'index.php?site=joinus', 'a:0:{}', 'index.php?site=joinus', 'joinus.html', 'joinus.html', 'index.php?site=joinus'),
(26, 'joinus/save.html', 'index.php?site=joinus&action=save', 'a:0:{}', 'index.php?site=joinus[&|&amp;]*action=save', 'joinus/save.html', 'joinus/save.html', 'index.php?site=joinus&action=save'),
(27, 'links.html', 'index.php?site=links', 'a:0:{}', 'index.php?site=links', 'links.html', 'links.html', 'index.php?site=links'),
(28, 'links/category/{catID}.html', 'index.php?site=links&action=show&linkcatID={catID}', 'a:1:{s:5:\"catID\";s:7:\"integer\";}', 'index.php?site=links[&|&amp;]*action=show[&|&amp;]*linkcatID=([0-9]+)', 'links/category/$3.html', 'links/category/([0-9]+?).html', 'index.php?site=links&action=show&linkcatID=$1'),
(29, 'linkus.html', 'index.php?site=linkus', 'a:0:{}', 'index.php?site=linkus', 'linkus.html', 'linkus.html', 'index.php?site=linkus'),
(30, 'login.html', 'index.php?site=login', 'a:0:{}', 'index.php?site=login', 'login.html', 'login.html', 'index.php?site=login'),
(31, 'logout.html', 'logout.php', 'a:0:{}', 'logout.php', 'logout.html', 'logout.html', 'logout.php'),
(32, 'lostpassword.html', 'index.php?site=lostpassword', 'a:0:{}', 'index.php?site=lostpassword', 'lostpassword.html', 'lostpassword.html', 'index.php?site=lostpassword'),
(33, 'members.html', 'index.php?site=members', 'a:0:{}', 'index.php?site=members', 'members.html', 'members.html', 'index.php?site=members'),
(34, 'members/{squadID}.html', 'index.php?site=members&action=show&squadID={squadID}', 'a:1:{s:7:\"squadID\";s:7:\"integer\";}', 'index.php?site=members[&|&amp;]*action=show[&|&amp;]*squadID=([0-9]+)', 'members/$3.html', 'members/([0-9]+?).html', 'index.php?site=members&action=show&squadID=$1'),
(35, 'messenger.html', 'index.php?site=messenger', 'a:0:{}', 'index.php?site=messenger', 'messenger.html', 'messenger.html', 'index.php?site=messenger'),
(36, 'messenger/{messageID}/read.html', 'index.php?site=messenger&action=show&id={messageID}', 'a:1:{s:9:\"messageID\";s:7:\"integer\";}', 'index.php?site=messenger[&|&amp;]*action=show[&|&amp;]*id=([0-9]+)', 'messenger/$3/read.html', 'messenger/([0-9]+?)/read.html', 'index.php?site=messenger&action=show&id=$1'),
(37, 'messenger/{messageID}/reply.html', 'index.php?site=messenger&action=reply&id={messageID}', 'a:1:{s:9:\"messageID\";s:7:\"integer\";}', 'index.php?site=messenger[&|&amp;]*action=reply[&|&amp;]*id=([0-9]+)', 'messenger/$3/reply.html', 'messenger/([0-9]+?)/reply.html', 'index.php?site=messenger&action=reply&id=$1'),
(38, 'messenger/action.html', 'messenger.php', 'a:0:{}', 'messenger.php', 'messenger/action.html', 'messenger/action.html', 'messenger.php'),
(39, 'messenger/incoming.html', 'index.php?site=messenger&action=incoming', 'a:0:{}', 'index.php?site=messenger[&|&amp;]*action=incoming', 'messenger/incoming.html', 'messenger/incoming.html', 'index.php?site=messenger&action=incoming'),
(40, 'messenger/new.html', 'index.php?site=messenger&action=newmessage', 'a:0:{}', 'index.php?site=messenger[&|&amp;]*action=newmessage', 'messenger/new.html', 'messenger/new.html', 'index.php?site=messenger&action=newmessage'),
(41, 'messenger/outgoing.html', 'index.php?site=messenger&action=outgoing', 'a:0:{}', 'index.php?site=messenger[&|&amp;]*action=outgoing', 'messenger/outgoing.html', 'messenger/outgoing.html', 'index.php?site=messenger&action=outgoing'),
(42, 'news.html', 'index.php?site=news', 'a:0:{}', 'index.php?site=news', 'news.html', 'news.html', 'index.php?site=news'),
(43, 'news_contents/{newsID}.html', 'index.php?site=news&action=news_contents&newsID={newsID}', 'a:1:{s:6:\"newsID\";s:7:\"integer\";}', 'index.php?site=news[&|&amp;]*action=news_contents[&|&amp;]*newsID=([0-9]+)', 'news_contents/$3.html', 'news_contents/([0-9]+?).html', 'index.php?site=news&action=news_contents&newsID=$1'),
(44, 'news/archive.html', 'index.php?site=news_archive', 'a:0:{}', 'index.php?site=news_archive', 'news/archive.html', 'news/archive.html', 'index.php?site=news_archive'),
(45, 'portfolio.html', 'index.php?site=portfolio', 'a:0:{}', 'index.php?site=portfolio', 'portfolio.html', 'portfolio.html', 'index.php?site=portfolio'),
(46, 'privacy_policy.html', 'index.php?site=privacy_policy', 'a:0:{}', 'index.php?site=privacy_policy', 'privacy_policy.html', 'privacy_policy.html', 'index.php?site=privacy_policy'),
(47, 'profile/{action}/{id}.html', 'index.php?site=profile&id={id}&action={action}', 'a:2:{s:2:\"id\";s:7:\"integer\";s:6:\"action\";s:6:\"string\";}', 'index.php?site=profile[&|&amp;]*id=([0-9]+)[&|&amp;]*action=(w*?)', 'profile/$4/$3.html', 'profile/(w*?)/([0-9]+?).html', 'index.php?site=profile&id=$2&action=$1'),
(48, 'profile/{action}/{id}.html', 'index.php?site=profile&action={action}&id={id}', 'a:2:{s:2:\"id\";s:7:\"integer\";s:6:\"action\";s:6:\"string\";}', 'index.php?site=profile[&|&amp;]*action=(w*?)[&|&amp;]*id=([0-9]+)', 'profile/$3/$4.html', 'profile/(w*?)/([0-9]+?).html', 'index.php?site=profile&action=$1&id=$2'),
(49, 'profile/{id}.html', 'index.php?site=profile&id={id}', 'a:1:{s:2:\"id\";s:7:\"integer\";}', 'index.php?site=profile[&|&amp;]*id=([0-9]+)', 'profile/$3.html', 'profile/([0-9]+?).html', 'index.php?site=profile&id=$1'),
(50, 'profile/edit.html', 'index.php?site=myprofile', 'a:0:{}', 'index.php?site=myprofile', 'profile/edit.html', 'profile/edit.html', 'index.php?site=myprofile'),
(51, 'profile/mail.html', 'index.php?site=myprofile&action=editmail', 'a:0:{}', 'index.php?site=myprofile[&|&amp;]*action=editmail', 'profile/mail.html', 'profile/mail.html', 'index.php?site=myprofile&action=editmail'),
(52, 'profile/password.html', 'index.php?site=myprofile&action=editpwd', 'a:0:{}', 'index.php?site=myprofile[&|&amp;]*action=editpwd', 'profile/password.html', 'profile/password.html', 'index.php?site=myprofile&action=editpwd'),
(53, 'register.html', 'index.php?site=register', 'a:0:{}', 'index.php?site=register', 'register.html', 'register.html', 'index.php?site=register'),
(54, 'search.html', 'index.php?site=search', 'a:0:{}', 'index.php?site=search', 'search.html', 'search.html', 'index.php?site=search'),
(55, 'search/results.html', 'index.php?site=search&action=search', 'a:0:{}', 'index.php?site=search[&|&amp;]*action=search', 'search/results.html', 'search/results.html', 'index.php?site=search&action=search'),
(56, 'search/submit.html', 'search.php', 'a:0:{}', 'search.php', 'search/submit.html', 'search/submit.html', 'search.php'),
(57, 'server_rules.html', 'index.php?site=server_rules', 'a:0:{}', 'index.php?site=server_rules', 'server_rules.html', 'server_rules.html', 'index.php?site=server_rules'),
(58, 'server.html', 'index.php?site=servers', 'a:0:{}', 'index.php?site=servers', 'server.html', 'server.html', 'index.php?site=servers'),
(59, 'sponsors.html', 'index.php?site=sponsors', 'a:0:{}', 'index.php?site=sponsors', 'sponsors.html', 'sponsors.html', 'index.php?site=sponsors'),
(60, 'squads.html', 'index.php?site=squads', 'a:0:{}', 'index.php?site=squads', 'squads.html', 'squads.html', 'index.php?site=squads'),
(61, 'squads/{squadID}.html', 'index.php?site=squads&action=show&squadID={squadID}', 'a:1:{s:7:\"squadID\";s:7:\"integer\";}', 'index.php?site=squads[&|&amp;]*action=show[&|&amp;]*squadID=([0-9]+)', 'squads/$3.html', 'squads/([0-9]+?).html', 'index.php?site=squads&action=show&squadID=$1'),
(62, 'static/{staticID}.html', 'index.php?site=static&staticID={staticID}', 'a:1:{s:8:\"staticID\";s:7:\"integer\";}', 'index.php?site=static[&|&amp;]*staticID=([0-9]+)', 'static/$3.html', 'static/([0-9]+?).html', 'index.php?site=static&staticID=$1'),
(63, 'todo.html', 'index.php?site=todo', 'a:0:{}', 'index.php?site=todo', 'todo.html', 'todo.html', 'index.php?site=todo'),
(64, 'twitter.html', 'index.php?site=twitter', 'a:0:{}', 'index.php?site=twitter', 'twitter.html', 'twitter.html', 'index.php?site=twitter'),
(65, 'userlist.html', 'index.php?site=userlist', 'a:0:{}', 'index.php?site=userlist', 'userlist.html', 'userlist.html', 'index.php?site=userlist'),
(66, 'videos.html', 'index.php?site=videos', 'a:0:{}', 'index.php?site=videos', 'videos.html', 'videos.html', 'index.php?site=videos'),
(67, 'videos/{videosID}.html', 'index.php?site=videos&action=watch&videosID={videosID}', 'a:1:{s:8:\"videosID\";s:7:\"integer\";}', 'index.php?site=videos[&|&amp;]*action=watch[&|&amp;]*videosID=([0-9]+)', 'videos/$3.html', 'videos/([0-9]+?).html', 'index.php?site=videos&action=watch&videosID=$1'),
(68, 'whoisonline.html', 'index.php?site=whoisonline', 'a:0:{}', 'index.php?site=whoisonline', 'whoisonline.html', 'whoisonline.html', 'index.php?site=whoisonline'),
(69, 'whoisonline.html#was', 'index.php?site=whoisonline#was', 'a:0:{}', 'index.php?site=whoisonline#was', 'whoisonline.html#was', 'whoisonline.html#was', 'index.php?site=whoisonline#was'),
(70, 'whoisonline/{sort}/{type}.html', 'index.php?site=whoisonline&sort={sort}&type={type}', 'a:2:{s:4:\"sort\";s:6:\"string\";s:4:\"type\";s:6:\"string\";}', 'index.php?site=whoisonline[&|&amp;]*sort=(w*?)[&|&amp;]*type=(w*?)', 'whoisonline/$3/$4.html', 'whoisonline/(w*?)/(w*?).html', 'index.php?site=whoisonline&sort=$1&type=$2'),
(71, 'forum/topic/{topicID}.html', 'index.php?site=forum_topic&topic={topicID}', 'a:1:{s:7:\"topicID\";s:7:\"integer\";}', 'index.php?site=forum_topic[&|&amp;]*topic=([0-9]+)', 'forum/topic/$3.html', 'forum/topic/([0-9]+?).html', 'index.php?site=forum_topic&topic=$1'),
(72, 'myprofile/deleteaccount.html', 'index.php?site=myprofile&action=deleteaccount', 'a:0:{}', 'index.php?site=myprofile[&|&amp;]*action=deleteaccount', 'myprofile/deleteaccount.html', 'myprofile/deleteaccount.html', 'index.php?site=myprofile&action=deleteaccount'),
(78, 'news/{page}.html', 'index.php?site=news&page={page}', 'a:1:{s:4:\"page\";s:7:\"integer\";}', 'index.php?site=news[&|&amp;]*page=([0-9]+)', 'news/$3.html', 'news/([0-9]+?).html', 'index.php?site=news&page=$1'),
(79, 'shoutbox.html', 'index.php?site=shoutbox_content&action=showall', 'a:0:{}', 'index.php?site=shoutbox_content[&|&amp;]*action=showall', 'shoutbox.html', 'shoutbox.html', 'index.php?site=shoutbox_content&action=showall'),
(74, 'partners.html', 'index.php?site=partners', 'a:0:{}', 'index.php?site=partners', 'partners.html', 'partners.html', 'index.php?site=partners'),
(75, 'streams.html', 'index.php?site=streams', 'a:0:{}', 'index.php?site=streams', 'streams.html', 'streams.html', 'index.php?site=streams'),
(81, 'streams/{streamID}.html', 'index.php?site=streams&id={streamID}', 'a:1:{s:8:\"streamID\";s:7:\"integer\";}', 'index.php?site=streams[&|&amp;]*id=([0-9]+)', 'streams/$3.html', 'streams/([0-9]+?).html', 'index.php?site=streams&id=$1'),
(77, 'forum_topic/{topicID}/{type}/{page}.html', 'index.php?site=forum_topic&topic={topicID}&type={type}&page={page}', 'a:3:{s:7:\"topicID\";s:6:\"string\";s:4:\"type\";s:6:\"string\";s:4:\"page\";s:7:\"integer\";}', 'index.php?site=forum_topic[&|&amp;]*topic=(w*?)[&|&amp;]*type=(w*?)[&|&amp;]*page=([0-9]+)', 'forum_topic/$3/$4/$5.html', 'forum_topic/(w*?)/(w*?)/([0-9]+?).html', 'index.php?site=forum_topic&topic=$1&type=$2&page=$3'),
(80, 'calendar.html', 'index.php?site=calendar', 'a:0:{}', 'index.php?site=calendar', 'calendar.html', 'calendar.html', 'index.php?site=calendar'),
(82, 'shoutbox.html', 'index.php?site=shoutbox_content', 'a:0:{}', 'index.php?site=shoutbox_content', 'shoutbox.html', 'shoutbox.html', 'index.php?site=shoutbox_content'),
(83, 'candidature.html', 'index.php?site=candidature', 'a:0:{}', 'index.php?site=candidature', 'candidature.html', 'candidature.html', 'index.php?site=candidature'),
(84, 'candidature/new.html', 'index.php?site=candidature&action=new', 'a:0:{}', 'index.php?site=candidature[&|&amp;]*action=new', 'candidature/new.html', 'candidature/new.html', 'index.php?site=candidature&action=new'),
(85, 'loginoverview.html', 'index.php?site=loginoverview', 'a:0:{}', 'index.php?site=loginoverview', 'loginoverview.html', 'loginoverview.html', 'index.php?site=loginoverview'),
(86, 'guestbook.html', 'index.php?site=guestbook', 'a:0:{}', 'index.php?site=guestbook', 'guestbook.html', 'guestbook.html', 'index.php?site=guestbook'),
(87, 'news_contents/{newsID}.html', 'index.php?site=news_contents&newsID={newsID}', 'a:1:{s:6:\"newsID\";s:7:\"integer\";}', 'index.php?site=news_contents[&|&amp;]*newsID=([0-9]+)', 'news_contents/$3.html', 'news_contents/([0-9]+?).html', 'index.php?site=news_contents&newsID=$1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_navigation_dashboard_categories`
--

CREATE TABLE `rm_214_navigation_dashboard_categories` (
  `catID` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fa_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accesslevel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` int(1) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_navigation_dashboard_categories`
--

INSERT INTO `rm_214_navigation_dashboard_categories` (`catID`, `name`, `fa_name`, `accesslevel`, `default`, `sort`) VALUES
(1, '{[de]}Webseiten Info - Einstellungen{[en]}Website Info - Settings{[it]}Informazioni - Impostazioni del sito web', 'fas fa-chart-bar', 'any', 0, 1),
(2, '{[de]}Spam{[en]}Spam{[it]}Spam', 'fas fa-exclamation-triangle', 'user', 0, 2),
(3, '{[de]}Benutzer Administration{[en]}User Administration{[it]}Amministrazione Utenti', 'fa fa-user-plus', 'user', 0, 3),
(4, '{[de]}Team - Clan{[en]}Team - Clan{[it]}Team - Clan', 'fa fa-users', 'any', 0, 4),
(5, '{[de]}Template - Layout{[en]}Template - Layout{[it]}Template - Disposizione', 'fa fa-sitemap', 'page', 0, 5),
(6, '{[de]}Plugin Verwaltung{[en]}Plugin Administration{[it]}Gestione Plugin', 'fas fa-puzzle-piece', 'page', 0, 6),
(7, '{[de]}Webseiteninhalte{[en]}Website Content{[it]}Contenuto del sito web', 'fa fa-folder-open', 'page', 0, 7),
(8, '{[de]}Grafik - Video - Projekte{[en]}Grafik - Video - Projekte{[it]}Grafik - Video - Projekte', 'fa fa-video ', 'gallery', 0, 8),
(9, '{[de]}Header - Slider{[en]}Header - Slider{[it]}Header - Slider', 'fa fa-image', 'page', 0, 9),
(10, '{[de]}Game - Voice Server Tools{[en]}Game - Voice Server Tools{[it]}Game - Voice Server Tools', 'fa fa-gamepad', 'clanwars', 0, 10),
(11, '{[de]}Social Media{[en]}Social Media{[it]}Social Media', 'fab fa-steam', 'feedback', 0, 11),
(12, '{[de]}Links - Download - Sponsoren{[en]}Links - Download - Sponsore{[it]}Links - Download - Sponsore', 'fa fa-link', 'any', 0, 12);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_navigation_dashboard_links`
--

CREATE TABLE `rm_214_navigation_dashboard_links` (
  `linkID` int(11) NOT NULL,
  `catID` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modulname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accesslevel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_navigation_dashboard_links`
--

INSERT INTO `rm_214_navigation_dashboard_links` (`linkID`, `catID`, `name`, `modulname`, `url`, `accesslevel`, `sort`) VALUES
(1, 1, '{[de]}Webserver-Info{[en]}Webserver-Info{[it]}Informazioni sul sito web', 'ac_overview', 'admincenter.php?site=overview', 'any', 1),
(2, 1, '{[de]}Seiten Statistiken{[en]}Page Statistics{[it]}Pagina delle Statistiche', 'ac_page_statistic', 'admincenter.php?site=page_statistic', 'any', 2),
(3, 1, '{[de]}Besucher Statistiken{[en]}Visitor Statistics{[it]}Statistiche Visitatori', 'ac_visitor_statistic', 'admincenter.php?site=visitor_statistic', 'any', 3),
(4, 1, '{[de]}Allgemeine Einstellungen{[en]}General Settings{[it]}Impostazioni Generali', 'ac_settings', 'admincenter.php?site=settings', 'page', 4),
(5, 1, '{[de]}Admincenter Navigation{[en]}Admincenter Navigation{[it]}Menu Navigazione Admin', 'ac_dashboard_navigation', 'admincenter.php?site=dashboard_navigation', 'page', 5),
(6, 1, '{[de]}E-Mail{[en]}E-Mail{[it]}E-Mail', 'ac_email', 'admincenter.php?site=email', 'page', 6),
(7, 1, '{[de]}Kontakte{[en]}Contacts{[it]}Contatti', 'ac_contact', 'admincenter.php?site=contact', 'page', 7),
(8, 1, '{[de]}Mod-Rewrite{[en]}Mod-Rewrite{[it]}Mod-Rewrite', 'ac_modrewrite', 'admincenter.php?site=modrewrite', 'page', 8),
(9, 1, '{[de]}Datenbank{[en]}Database', 'ac_database', 'admincenter.php?site=database', 'page', 9),
(10, 1, '{[de]}Webspell-RM Update{[en]}Webspell-RM Update{[it]}Webspell-RM Update', 'ac_update', 'admincenter.php?site=update', 'page', 10),
(11, 3, '{[de]}Registrierte Benutzer{[en]}Registered Users{[it]}Utenti Registrati', 'ac_users', 'admincenter.php?site=users', 'user', 1),
(12, 2, '{[de]}Geblockte Inhalte{[en]}Blocked Content{[it]}Contenuti Bloccati', 'ac_spam_forum', 'admincenter.php?site=spam&amp;action=forum_spam', 'user', 1),
(13, 2, '{[de]}Nutzer l&ouml;schen{[en]}Remove User{[it]}Rimuovi Utente', 'ac_spam_user', 'admincenter.php?site=spam&amp;action=user', 'user', 2),
(14, 2, '{[de]}Multi-Accounts{[en]}Multi-Accounts{[it]}Multi-Account', 'ac_spam_multi', 'admincenter.php?site=spam&amp;action=multi', 'user', 3),
(15, 2, '{[de]}gebannte IPs{[en]}banned IPs{[it]}IP bannati', 'ac_spam_banned_ips', 'admincenter.php?site=banned_ips', 'user', 4),
(16, 4, '{[de]}Teams{[en]}Squads{[it]}Squadre', 'ac_squads', 'admincenter.php?site=squads', 'user', 1),
(17, 4, '{[de]}Clanmitglieder{[en]}Clanmembers{[it]}Membri del Clan', 'ac_members', 'admincenter.php?site=members', 'user', 2),
(18, 4, '{[de]}Spiele{[en]}Games{[it]}Giochi', 'ac_games', 'admincenter.php?site=settings_games', 'page', 3),
(19, 5, '{[de]}Webseiten Navigation{[en]}Webside Navigation{[it]}Menu Navigazione Web', 'ac_webside_navigation', 'admincenter.php?site=webside_navigation', 'page', 1),
(20, 5, '{[de]}Templates Installer{[en]}Templates Installer{[it]}Installazione Temi', 'ac_template_installer', 'admincenter.php?site=template_installer', 'page', 2),
(21, 5, '{[de]}Templates - Style{[en]}Templates - Style{[it]}Templates Grafici - stile', 'ac_templates', 'admincenter.php?site=settings_templates', 'page', 3),
(22, 5, '{[de]}Head Elements{[en]}Head Elements{[it]}Head Elements', 'ac_headelements', 'admincenter.php?site=settings_headelements', 'page', 4),
(23, 5, '{[de]}Startseite{[en]}Start Page{[it]}Pagina Principale', 'ac_startpage', 'admincenter.php?site=settings_startpage', 'page', 5),
(24, 5, '{[de]}Statische Seiten{[en]}Static Pages{[it]}Pagine Statiche', 'ac_static', 'admincenter.php?site=settings_static', 'page', 6),
(25, 5, '{[de]}Impressum{[en]}Imprint{[it]}Impronta Editoriale', 'ac_imprint', 'admincenter.php?site=settings_imprint', 'page', 7),
(26, 5, '{[de]}Datenschutz-Bestimmungen{[en]}Privacy Policy{[it]}Informativa sulla privacy', 'ac_privacy_policy', 'admincenter.php?site=settings_privacy_policy', 'page', 8),
(27, 6, '{[de]}Plugin Manager{[en]}Plugin Manager{[it]}Gestione Plugin', 'ac_plugin_manager', 'admincenter.php?site=plugin_manager', 'page', 1),
(28, 6, '{[de]}Plugin Installer{[en]}Plugin Installer{[it]}Installazione Plugin', 'ac_plugin_installer', 'admincenter.php?site=plugin_installer', 'page', 2),
(29, 6, '{[de]}Widget Verwaltung{[en]}Widget Control{[it]}Gestione Widget', 'ac_plugin_widgets', 'admincenter.php?site=plugin_widgets', 'page', 3),
(69, 7, '{[de]}Footer{[en]}Footer{[it]}Piè di pagina', 'footer', 'admincenter.php?site=admin_footer', 'page', 1),
(87, 7, '{[de]}Blog{[en]}Blog{[it]}Blog', 'blog', 'admincenter.php?site=admin_blog', 'page', 1),
(132, 4, '{[de]}Über uns{[en]}About us{[it]}Chi Siamo', 'about_us', 'admincenter.php?site=admin_about_us', 'page', 1),
(81, 12, '{[de]}Sponsoren{[en]}Sponsors{[it]}Sponsor', 'sponsors', 'admincenter.php?site=admin_sponsors', 'page', 1),
(143, 8, '{[de]}Portfolio{[en]}Portfolio', 'portfolio', 'admincenter.php?site=admin_portfolio', 'page', 1),
(142, 9, '{[de]}Slideshow{[en]}Carousel{[pl]}Carousel{[it]}Carosello Immagini', 'carousel', 'admincenter.php?site=admin_carousel', 'page', 1),
(110, 7, '{[de]}Features{[en]}Features{[it]}Features', 'features', 'admincenter.php?site=admin_features', 'page', 1),
(95, 8, '{[de]}Videos{[en]}Videos', 'videos', 'admincenter.php?site=admin_videos', 'page', 1),
(138, 8, '{[de]}Galerie{[en]}Gallery', 'gallery', 'admincenter.php?site=admin_gallery', 'page', 1),
(141, 7, '{[de]}News{[en]}News{[it]}Notizia', 'news_manager', 'admincenter.php?site=admin_news_manager', 'page', 1),
(139, 7, '{[de]}Forum{[en]}Forum{[it]}Forum', 'forum', 'admincenter.php?site=admin_forum', 'page', 1),
(98, 12, '{[de]}Download{[en]}Download', 'files', 'admincenter.php?site=admin_files', 'page', 1),
(99, 9, '{[de]}Parallax Header{[en]}Parallax Header', 'parallax', 'admincenter.php?site=admin_parallaxheader', 'page', 1),
(100, 9, '{[de]}Text Slider{[en]}Textslider{[pl]}Textslider', 'textslider', 'admincenter.php?site=admin_textslider', 'page', 1),
(109, 7, '{[de]}Features{[en]}Features{[it]}Features', 'features_box', 'admincenter.php?site=admin_features_box', 'page', 1),
(120, 7, '{[de]}Artikel{[en]}Articles{[it]}Articles', 'articles', 'admincenter.php?site=admin_articles', 'page', 1),
(121, 3, '{[de]}User Rechte{[en]}User Rights{[it]}Diritti Utente', 'userrights', 'admincenter.php?site=admin_userrights', 'page', 1),
(123, 7, '{[de]}Kalender{[en]}Calendar{[it]}Calendario', 'calendar', 'admincenter.php?site=admin_calendar', 'page', 1),
(125, 10, '{[de]}TS3 Zuschauer{[en]}TS3 Viewer', 'ts3viewer', 'admincenter.php?site=admin_ts3viewer', 'page', 1),
(126, 12, '{[de]}Links{[en]}Links', 'links', 'admincenter.php?site=admin_links', 'page', 1),
(127, 10, '{[de]}Server{[en]}Servers{[it]}Server', 'servers', 'admincenter.php?site=admin_servers', 'page', 1),
(129, 7, '{[de]}Umfrage{[en]}Polls', 'polls', 'admincenter.php?site=admin_polls', 'page', 1),
(130, 12, '{[de]}Partner{[en]}Partners', 'partners', 'admincenter.php?site=admin_partners', 'page', 1),
(144, 11, '{[de]}Discord{[en]}Discord{[it]}Discord', 'discord', 'admincenter.php?site=admin_discord', 'page', 1),
(145, 11, '{[de]}Twitter{[en]}Twitter{[pl]}Twitter{[it]}Twitter', 'twitter', 'admincenter.php?site=admin_twitter', 'page', 1),
(146, 11, '{[de]}Streams{[en]}Streams', 'streams', 'admincenter.php?site=admin_streams', 'page', 1),
(147, 3, '{[de]}Newsletter{[en]}Newsletter', 'newsletter', 'admincenter.php?site=admin_newsletter', 'page', 1),
(148, 9, '{[de]}Agency Navi Header{[en]}Agency Navi Header', 'navigation_agency', 'admincenter.php?site=admin_navigation_agency', 'page', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_navigation_website_main`
--

CREATE TABLE `rm_214_navigation_website_main` (
  `mnavID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `default` int(11) NOT NULL DEFAULT 1,
  `sort` int(2) NOT NULL DEFAULT 0,
  `isdropdown` int(1) NOT NULL DEFAULT 1,
  `windows` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_navigation_website_main`
--

INSERT INTO `rm_214_navigation_website_main` (`mnavID`, `name`, `url`, `default`, `sort`, `isdropdown`, `windows`) VALUES
(1, '{[de]}HAUPT{[en]}MAIN{[pl]}STRONA GLÃƒâ€œWNA{[it]}PRINCIPALE', '#', 1, 1, 1, 1),
(2, '{[de]}TEAM{[en]}TEAM{[pl]}DRUZYNA{[it]}TEAM', '#', 1, 2, 1, 1),
(3, '{[de]}GEMEINSCHAFT{[en]}COMMUNITY{[pl]}SPOLECZNOSC{[it]}COMMUNITY', '#', 1, 3, 1, 1),
(4, '{[de]}MEDIEN{[en]}MEDIA{[pl]}MEDIA{[it]}MEDIA', '#', 1, 4, 1, 1),
(5, '{[de]}SONSTIGES{[en]}MISCELLANEOUS{[pl]}RÃƒâ€œZNE{[it]}VARIE', '#', 1, 5, 1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_navigation_website_sub`
--

CREATE TABLE `rm_214_navigation_website_sub` (
  `snavID` int(11) NOT NULL,
  `mnavID` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `modulname` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `sort` int(2) NOT NULL DEFAULT 0,
  `indropdown` int(1) NOT NULL DEFAULT 1,
  `themes_modulname` varchar(255) DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_navigation_website_sub`
--

INSERT INTO `rm_214_navigation_website_sub` (`snavID`, `mnavID`, `name`, `modulname`, `url`, `sort`, `indropdown`, `themes_modulname`) VALUES
(1, 5, '{[de]}Kontakt{[en]}Contact{[it]}Contatti', 'contact', 'index.php?site=contact', 1, 1, 'default'),
(2, 5, '{[de]}Datenschutz-Bestimmungen{[en]}Privacy Policy{[it]}Informativa sulla privacy', 'privacy_policy', 'index.php?site=privacy_policy', 2, 1, 'default'),
(3, 5, '{[de]}Impressum{[en]}Imprint{[it]}Impronta Editoriale', 'imprint', 'index.php?site=imprint', 3, 1, 'default'),
(58, 4, '{[de]}Sponsoren{[en]}Sponsors{[it]}Sponsor', 'sponsors', 'index.php?site=sponsors', 1, 1, 'default'),
(65, 3, '{[de]}Blog{[en]}Blog{[it]}Blog', 'blog', 'index.php?site=blog', 1, 1, 'default'),
(73, 2, '{[de]}Mitglieder Liste{[en]}Members List', 'memberslist', 'index.php?site=memberslist', 1, 1, 'default'),
(74, 4, '{[de]}Videos{[en]}Videos', 'videos', 'index.php?site=videos', 1, 1, 'default'),
(78, 4, '{[de]}Download{[en]}Download', 'files', 'index.php?site=files', 1, 1, 'default'),
(138, 5, '{[de]}Kontakt{[en]}Contact{[it]}Contatti', 'contact', 'index.php?site=contact', 1, 1, 'simplex'),
(139, 5, '{[de]}Datenschutz-Bestimmungen{[en]}Privacy Policy{[it]}Informativa sulla privacy', 'privacy_policy', 'index.php?site=privacy_policy', 2, 1, 'simplex'),
(140, 5, '{[de]}Impressum{[en]}Imprint{[it]}Impronta Editoriale', 'imprint', 'index.php?site=imprint', 3, 1, 'simplex'),
(141, 4, '{[de]}Sponsoren{[en]}Sponsors{[it]}Sponsor', 'sponsors', 'index.php?site=sponsors', 1, 1, 'simplex'),
(143, 3, '{[de]}Blog{[en]}Blog{[it]}Blog', 'blog', 'index.php?site=blog', 1, 1, 'simplex'),
(144, 2, '{[de]}Mitglieder Liste{[en]}Members List', 'memberslist', 'index.php?site=memberslist', 1, 1, 'simplex'),
(145, 2, '{[de]}Artikel{[en]}Articles{[it]}Articles', 'articles', 'index.php?site=articles', 1, 1, 'default'),
(146, 5, '{[de]}Kontakt{[en]}Contact{[it]}Contatti', 'contact', 'index.php?site=contact', 1, 1, 'slate'),
(147, 5, '{[de]}Datenschutz-Bestimmungen{[en]}Privacy Policy{[it]}Informativa sulla privacy', 'privacy_policy', 'index.php?site=privacy_policy', 2, 1, 'slate'),
(148, 5, '{[de]}Impressum{[en]}Imprint{[it]}Impronta Editoriale', 'imprint', 'index.php?site=imprint', 3, 1, 'slate'),
(150, 5, '{[de]}Kontakt{[en]}Contact{[it]}Contatti', 'contact', 'index.php?site=contact', 1, 1, 'cyborg'),
(151, 5, '{[de]}Datenschutz-Bestimmungen{[en]}Privacy Policy{[it]}Informativa sulla privacy', 'privacy_policy', 'index.php?site=privacy_policy', 2, 1, 'cyborg'),
(152, 5, '{[de]}Impressum{[en]}Imprint{[it]}Impronta Editoriale', 'imprint', 'index.php?site=imprint', 3, 1, 'cyborg'),
(154, 2, '{[de]}Mitglieder Liste{[en]}Members List', 'memberslist', 'index.php?site=memberslist', 1, 1, 'cyborg'),
(155, 3, '{[de]}Blog{[en]}Blog{[it]}Blog', 'blog', 'index.php?site=blog', 1, 1, 'cyborg'),
(156, 4, '{[de]}Sponsoren{[en]}Sponsors{[it]}Sponsor', 'sponsors', 'index.php?site=sponsors', 1, 1, 'cyborg'),
(158, 4, '{[de]}Sponsoren{[en]}Sponsors{[it]}Sponsor', 'sponsors', 'index.php?site=sponsors', 1, 1, 'slate'),
(160, 3, '{[de]}Blog{[en]}Blog{[it]}Blog', 'blog', 'index.php?site=blog', 1, 1, 'slate'),
(161, 2, '{[de]}Mitglieder Liste{[en]}Members List', 'memberslist', 'index.php?site=memberslist', 1, 1, 'slate'),
(163, 4, '{[de]}Download{[en]}Download', 'files', 'index.php?site=files', 1, 1, 'simplex'),
(164, 4, '{[de]}Download{[en]}Download', 'files', 'index.php?site=files', 1, 1, 'slate'),
(171, 4, '{[de]}Download{[en]}Download', 'files', 'index.php?site=files', 1, 1, 'cyborg'),
(172, 2, '{[de]}Artikel{[en]}Articles{[it]}Articles', 'articles', 'index.php?site=articles', 1, 1, 'cyborg'),
(175, 1, '{[de]}Kalender{[en]}Calendar{[it]}Calendario', 'calendar', 'index.php?site=calendar', 1, 1, 'default'),
(176, 1, '{[de]}Kalender{[en]}Calendar{[it]}Calendario', 'calendar', 'index.php?site=calendar', 1, 1, 'simplex'),
(177, 5, '{[de]}Kontakt{[en]}Contact{[it]}Contatti', 'contact', 'index.php?site=contact', 1, 1, 'inrage'),
(178, 5, '{[de]}Datenschutz-Bestimmungen{[en]}Privacy Policy{[it]}Informativa sulla privacy', 'privacy_policy', 'index.php?site=privacy_policy', 2, 1, 'inrage'),
(179, 5, '{[de]}Impressum{[en]}Imprint{[it]}Impronta Editoriale', 'imprint', 'index.php?site=imprint', 3, 1, 'inrage'),
(180, 5, '{[de]}Seitenstatistik{[en]}Counter{[it]}Contatori', 'counter', 'index.php?site=counter', 1, 1, 'inrage'),
(185, 5, '{[de]}Seitenstatistik{[en]}Counter{[it]}Contatori', 'counter', 'index.php?site=counter', 1, 1, 'default'),
(188, 4, '{[de]}Sponsoren{[en]}Sponsors{[it]}Sponsor', 'sponsors', 'index.php?site=sponsors', 1, 1, 'inrage'),
(190, 3, '{[de]}Blog{[en]}Blog{[it]}Blog', 'blog', 'index.php?site=blog', 1, 1, 'inrage'),
(191, 2, '{[de]}Mitglieder Liste{[en]}Members List', 'memberslist', 'index.php?site=memberslist', 1, 1, 'inrage'),
(193, 4, '{[de]}Links{[en]}Links', 'links', 'index.php?site=links', 1, 1, 'default'),
(194, 4, '{[de]}Links{[en]}Links', 'links', 'index.php?site=links', 1, 1, 'cyborg'),
(195, 5, '{[de]}Seitenstatistik{[en]}Counter{[it]}Contatori', 'counter', 'index.php?site=counter', 1, 1, 'cyborg'),
(196, 3, '{[de]}Server{[en]}Servers{[it]}Server', 'servers', 'index.php?site=servers', 1, 1, 'default'),
(197, 3, '{[de]}Server{[en]}Servers{[it]}Server', 'servers', 'index.php?site=servers', 1, 1, 'cyborg'),
(202, 1, '{[de]}Kalender{[en]}Calendar{[it]}Calendario', 'calendar', 'index.php?site=calendar', 1, 1, 'cyborg'),
(203, 2, '{[de]}Umfrage{[en]}Polls', 'polls', 'index.php?site=polls', 1, 1, 'default'),
(204, 2, '{[de]}Umfrage{[en]}Polls', 'polls', 'index.php?site=polls', 1, 1, 'cyborg'),
(205, 4, '{[de]}Partner{[en]}Partners', 'partners', 'index.php?site=partners', 1, 1, 'default'),
(206, 4, '{[de]}Partner{[en]}Partners', 'partners', 'index.php?site=partners', 1, 1, 'cyborg'),
(207, 5, '{[de]}Kontakt{[en]}Contact{[it]}Contatti', 'contact', 'index.php?site=contact', 1, 1, 'sandstone'),
(208, 5, '{[de]}Datenschutz-Bestimmungen{[en]}Privacy Policy{[it]}Informativa sulla privacy', 'privacy_policy', 'index.php?site=privacy_policy', 2, 1, 'sandstone'),
(209, 5, '{[de]}Impressum{[en]}Imprint{[it]}Impronta Editoriale', 'imprint', 'index.php?site=imprint', 3, 1, 'sandstone'),
(210, 4, '{[de]}Sponsoren{[en]}Sponsors{[it]}Sponsor', 'sponsors', 'index.php?site=sponsors', 1, 1, 'sandstone'),
(212, 3, '{[de]}Blog{[en]}Blog{[it]}Blog', 'blog', 'index.php?site=blog', 1, 1, 'sandstone'),
(213, 2, '{[de]}Mitglieder Liste{[en]}Members List', 'memberslist', 'index.php?site=memberslist', 1, 1, 'sandstone'),
(249, 2, '{[de]}Über uns{[en]}About us{[it]}Chi Siamo', 'about_us', 'index.php?site=about_us', 1, 1, 'default'),
(260, 5, '{[de]}Kontakt{[en]}Contact{[it]}Contatti', 'contact', 'index.php?site=contact', 1, 1, 'zay'),
(261, 5, '{[de]}Datenschutz-Bestimmungen{[en]}Privacy Policy{[it]}Informativa sulla privacy', 'privacy_policy', 'index.php?site=privacy_policy', 2, 1, 'zay'),
(262, 5, '{[de]}Impressum{[en]}Imprint{[it]}Impronta Editoriale', 'imprint', 'index.php?site=imprint', 3, 1, 'zay'),
(263, 4, '{[de]}Sponsoren{[en]}Sponsors{[it]}Sponsor', 'sponsors', 'index.php?site=sponsors', 1, 1, 'zay'),
(270, 4, '{[de]}Galerie{[en]}Gallery', 'gallery', 'index.php?site=gallery', 1, 1, 'default'),
(271, 3, '{[de]}Forum{[en]}Forum{[it]}Forum', 'forum', 'index.php?site=forum', 1, 1, 'default'),
(276, 1, '{[de]}News{[en]}News{[it]}Notizia', 'news_manager', 'index.php?site=news_manager', 1, 1, 'default'),
(277, 1, '{[de]}News Archive{[en]}News Archive', 'news_manager', 'index.php?site=news_manager&action=news_archive', 1, 1, 'default'),
(278, 1, '{[de]}News Archive{[en]}News Archive', 'news_manager', 'index.php?site=news_manager&action=news_archive', 1, 1, 'zay'),
(279, 1, '{[de]}News{[en]}News{[it]}Notizia', 'news_manager', 'index.php?site=news_manager', 1, 1, 'zay'),
(280, 3, '{[de]}Forum{[en]}Forum{[it]}Forum', 'forum', 'index.php?site=forum', 1, 1, 'zay'),
(281, 4, '{[de]}Portfolio{[en]}Portfolio', 'portfolio', 'index.php?site=portfolio', 1, 1, 'default'),
(282, 4, '{[de]}Portfolio{[en]}Portfolio', 'portfolio', 'index.php?site=portfolio', 1, 1, 'cyborg'),
(283, 4, '{[de]}Videos{[en]}Videos', 'videos', 'index.php?site=videos', 1, 1, 'cyborg'),
(284, 4, '{[de]}Discord{[en]}Discord{[it]}Discord', 'discord', 'index.php?site=discord', 1, 1, 'default'),
(285, 4, '{[de]}Twitter{[en]}Twitter{[pl]}Twitter{[it]}Twitter', 'twitter', 'index.php?site=twitter', 1, 1, 'default'),
(286, 4, '{[de]}Discord{[en]}Discord{[it]}Discord', 'discord', 'index.php?site=discord', 1, 1, 'cyborg'),
(287, 4, '{[de]}Twitter{[en]}Twitter{[pl]}Twitter{[it]}Twitter', 'twitter', 'index.php?site=twitter', 1, 1, 'cyborg'),
(288, 4, '{[de]}Streams{[en]}Streams', 'streams', 'index.php?site=streams', 1, 1, 'default'),
(289, 4, '{[de]}Streams{[en]}Streams', 'streams', 'index.php?site=streams', 1, 1, 'cyborg'),
(290, 2, '{[de]}Über uns{[en]}About us{[it]}Chi Siamo', 'about_us', 'index.php?site=about_us', 1, 1, 'cyborg'),
(291, 4, '{[de]}Galerie{[en]}Gallery', 'gallery', 'index.php?site=gallery', 1, 1, 'cyborg'),
(292, 1, '{[de]}News Archive{[en]}News Archive', 'news_manager', 'index.php?site=news_manager&action=news_archive', 1, 1, 'cyborg'),
(293, 1, '{[de]}News{[en]}News{[it]}Notizia', 'news_manager', 'index.php?site=news_manager', 1, 1, 'cyborg'),
(294, 5, '{[de]}Newsletter{[en]}Newsletter', 'newsletter', 'index.php?site=newsletter', 1, 1, 'default'),
(295, 5, '{[de]}Newsletter{[en]}Newsletter', 'newsletter', 'index.php?site=newsletter', 1, 1, 'cyborg'),
(296, 2, '{[de]}Über uns{[en]}About us{[it]}Chi Siamo', 'about_us', 'index.php?site=about_us', 1, 1, 'simplex'),
(297, 4, '{[de]}Portfolio{[en]}Portfolio', 'portfolio', 'index.php?site=portfolio', 1, 1, 'simplex'),
(298, 0, '', 'navigation_default_flag', '', 1, 1, 'simplex'),
(300, 4, '{[de]}Partner{[en]}Partners', 'partners', 'index.php?site=partners', 1, 1, 'slate');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_about_us`
--

CREATE TABLE `rm_214_plugins_about_us` (
  `aboutID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `aboutchars` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_about_us`
--

INSERT INTO `rm_214_plugins_about_us` (`aboutID`, `title`, `text`, `aboutchars`) VALUES
(1, 'Einstellungen der Webseite', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '300');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_articles`
--

CREATE TABLE `rm_214_plugins_articles` (
  `articleID` int(11) NOT NULL,
  `articlecatID` int(11) NOT NULL DEFAULT 0,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` text NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `date` int(14) NOT NULL DEFAULT 0,
  `poster` int(11) NOT NULL DEFAULT 0,
  `displayed` int(11) NOT NULL DEFAULT 0,
  `rating` int(11) NOT NULL DEFAULT 0,
  `points` int(11) NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `comments` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_articles`
--

INSERT INTO `rm_214_plugins_articles` (`articleID`, `articlecatID`, `question`, `answer`, `sort`, `date`, `poster`, `displayed`, `rating`, `points`, `votes`, `views`, `comments`) VALUES
(1, 1, 'Wie halte ich Webspell-RM auf den aktuellen Stand? (Ab Version 2.1.3)', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 1, 1696702330, 1, 1, 0, 0, 0, 14, 2),
(2, 1, 'Wie kommt ein Widget auf meine Website? (Ab Version 2.1.3)', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 1, 1696702341, 1, 1, 0, 0, 0, 22, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_articles_categories`
--

CREATE TABLE `rm_214_plugins_articles_categories` (
  `articlecatID` int(11) NOT NULL,
  `articlecatname` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_articles_categories`
--

INSERT INTO `rm_214_plugins_articles_categories` (`articlecatID`, `articlecatname`, `description`, `sort`) VALUES
(1, 'FULL responsive', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_articles_comments`
--

CREATE TABLE `rm_214_plugins_articles_comments` (
  `commentID` int(11) NOT NULL,
  `parentID` int(11) NOT NULL DEFAULT 0,
  `type` char(2) NOT NULL DEFAULT '',
  `userID` int(11) NOT NULL DEFAULT 0,
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `date` int(14) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_articles_comments`
--

INSERT INTO `rm_214_plugins_articles_comments` (`commentID`, `parentID`, `type`, `userID`, `nickname`, `date`, `comment`, `url`, `email`, `ip`) VALUES
(1, 2, 'ar', 1, '', 1697235526, 'wdwd', '', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_articles_settings`
--

CREATE TABLE `rm_214_plugins_articles_settings` (
  `articlessetID` int(11) NOT NULL,
  `articles` int(11) NOT NULL,
  `articleschars` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_articles_settings`
--

INSERT INTO `rm_214_plugins_articles_settings` (`articlessetID`, `articles`, `articleschars`) VALUES
(1, 4, 300);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_blog`
--

CREATE TABLE `rm_214_plugins_blog` (
  `blogID` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `userID` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `comments` int(1) NOT NULL,
  `headline` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `visits` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_blog`
--

INSERT INTO `rm_214_plugins_blog` (`blogID`, `date`, `userID`, `msg`, `comments`, `headline`, `banner`, `visits`) VALUES
(1, '1696496120', '1', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 2, 'Die neue Version 2.1.3 von Webspell-RM ist da!', '1.jpg', 7),
(2, '1696591272', '1', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 2, 'Die neue Version 2.1.3 von Webspell-RM ist da!', '2.jpg', 142),
(3, '1696591296', '1', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 0, 'Die neue Version 2.1.3 von Webspell-RM ist da!', '3.jpg', 172);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_blog_comments`
--

CREATE TABLE `rm_214_plugins_blog_comments` (
  `commentID` int(11) NOT NULL,
  `parentID` int(11) NOT NULL DEFAULT 0,
  `type` char(2) NOT NULL DEFAULT '',
  `userID` int(11) NOT NULL DEFAULT 0,
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `date` int(14) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_blog_comments`
--

INSERT INTO `rm_214_plugins_blog_comments` (`commentID`, `parentID`, `type`, `userID`, `nickname`, `date`, `comment`, `url`, `email`, `ip`) VALUES
(1, 2, 'bl', 1, '', 1696594342, 'egege', '', '', ''),
(2, 2, 'bl', 1, '', 1696598025, 'wdwd', '', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_blog_settings`
--

CREATE TABLE `rm_214_plugins_blog_settings` (
  `blogsetID` int(11) NOT NULL,
  `blog` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_blog_settings`
--

INSERT INTO `rm_214_plugins_blog_settings` (`blogsetID`, `blog`) VALUES
(1, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_carousel`
--

CREATE TABLE `rm_214_plugins_carousel` (
  `carouselID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `ani_title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL DEFAULT '',
  `ani_link` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `ani_description` varchar(255) NOT NULL,
  `carousel_pic` varchar(255) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT 1,
  `displayed` varchar(255) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_carousel`
--

INSERT INTO `rm_214_plugins_carousel` (`carouselID`, `title`, `ani_title`, `link`, `ani_link`, `description`, `ani_description`, `carousel_pic`, `sort`, `displayed`) VALUES
(1, 'The Best <span>Games</span> Out There', 'rollIn', 'http://webspell-rm.de/', 'fadeInRight', 'The Bootstrap Carousel in Webspell? No way?! Yes we did it!', 'fadeInUp', '1.jpg', 1, '0'),
(2, 'The Best <span>Games</span> Out There', 'fadeInDown', 'http://webspell-rm.de/', 'fadeInRight', 'The Bootstrap Carousel in Webspell? No way?! Yes we did it!', 'fadeInLeft', '2.jpg', 1, '0'),
(3, 'The Best <span>Games</span> Out There', 'fadeInUp', '', 'fadeInDown', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada\r\nlorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien.\r\nSuspendisse cursus faucibus finibus.', 'fadeInRight', '3.jpg', 1, '0'),
(4, 'The Best <span>Games</span> Out There', 'fadeInRightBig', 'http://', 'fadeInLeft', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. Suspendisse cursus faucibus finibus.', 'fadeInUp', '4.jpg', 1, '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_features`
--

CREATE TABLE `rm_214_plugins_features` (
  `featuresID` int(11) NOT NULL,
  `title_one` varchar(255) NOT NULL DEFAULT '',
  `text_one` text NOT NULL,
  `title_two` varchar(255) NOT NULL,
  `text_two` text NOT NULL,
  `title_three` varchar(255) NOT NULL,
  `text_three` text NOT NULL,
  `title_four` varchar(255) NOT NULL,
  `text_four` text NOT NULL,
  `title_five` varchar(255) NOT NULL,
  `text_five` text NOT NULL,
  `title_six` varchar(255) NOT NULL,
  `text_six` text NOT NULL,
  `features_box_chars` varchar(255) NOT NULL DEFAULT '160'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_features`
--

INSERT INTO `rm_214_plugins_features` (`featuresID`, `title_one`, `text_one`, `title_two`, `text_two`, `title_three`, `text_three`, `title_four`, `text_four`, `title_five`, `text_five`, `title_six`, `text_six`, `features_box_chars`) VALUES
(1, 'FULL responsive', 'The new version was adjusted with bootstrap so that it\'s possible to display your website perfect on any device. Test it now..', 'add-on & mods', 'With the Add-ons and modifications you can get your own individual system. Whether a navigation addon or a recaptcha mod, or, or, or.. ', 'Community', 'If you have issues or problems. The community about Webspell-RM can help to solve a lots of problems.', 'Plugin-Installer', 'The new version was adjusted with bootstrap so that it\'s possible to display your website perfect on any device. Test it now..', 'Template-Installer', 'With the Add-ons and modifications you can get your own individual system. Whether a navigation addon or a recaptcha mod, or, or, or.. ', 'Community', 'If you have issues or problems. The community about Webspell-RM can help to solve a lots of problems.', '100');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_features_box`
--

CREATE TABLE `rm_214_plugins_features_box` (
  `featuresID` int(11) NOT NULL,
  `title_one` varchar(255) NOT NULL DEFAULT '',
  `title_small_one` varchar(255) NOT NULL,
  `text_one` text NOT NULL,
  `title_two` varchar(255) NOT NULL,
  `title_small_two` varchar(255) NOT NULL,
  `text_two` text NOT NULL,
  `title_three` varchar(255) NOT NULL,
  `title_small_three` varchar(255) NOT NULL,
  `text_three` text NOT NULL,
  `features_box_chars` varchar(255) NOT NULL DEFAULT '160'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_features_box`
--

INSERT INTO `rm_214_plugins_features_box` (`featuresID`, `title_one`, `title_small_one`, `text_one`, `title_two`, `title_small_two`, `text_two`, `title_three`, `title_small_three`, `text_three`, `features_box_chars`) VALUES
(1, 'FULL responsive', 'Looks awesome on any device', 'The new version was adjusted with bootstrap so that it\'s possible to display your website perfect on any device. Test it now..', 'add-on & mods', 'expand your system', 'With the Add-ons and modifications you can get your own individual system. Whether a navigation addon or a recaptcha mod, or, or, or.. ', 'Community', 'helping each other', 'If you have issues or problems. The community about Webspell-RM can help to solve a lots of problems.', '160');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_files`
--

CREATE TABLE `rm_214_plugins_files` (
  `fileID` int(11) NOT NULL,
  `filecatID` int(11) NOT NULL DEFAULT 0,
  `date` int(14) NOT NULL DEFAULT 0,
  `update` int(14) NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` varchar(255) NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `file` varchar(255) NOT NULL DEFAULT '',
  `mirrors` text NOT NULL,
  `downloads` int(11) NOT NULL DEFAULT 0,
  `accesslevel` int(1) NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `poster` int(11) NOT NULL,
  `banner` varchar(255) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_files`
--

INSERT INTO `rm_214_plugins_files` (`fileID`, `filecatID`, `date`, `update`, `filename`, `filesize`, `info`, `file`, `mirrors`, `downloads`, `accesslevel`, `votes`, `points`, `rating`, `poster`, `banner`, `sort`) VALUES
(1, 1, 1696591296, 1697288523, 'Webspell-RM Version', '46551.04', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 'radiomodul.zip', 'http://214.webspell-rm.de/index.php?site=files&file=1||http://214.webspell-rm.de/index.php?site=files&file=1', 1, 1, 0, 0, 0, 1, '', 0),
(2, 3, 1696591296, 1697292783, 'Update von Ver. 2.1.2 auf 2.1.3', '50677.76', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '1696698636_6.jpg', '', 5, 0, 0, 0, 0, 1, '', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_files_categories`
--

CREATE TABLE `rm_214_plugins_files_categories` (
  `filecatID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `subcatID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_files_categories`
--

INSERT INTO `rm_214_plugins_files_categories` (`filecatID`, `name`, `subcatID`) VALUES
(1, 'Webspell CMS', 0),
(2, 'Webspell Update', 0),
(3, 'test', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_files_settings`
--

CREATE TABLE `rm_214_plugins_files_settings` (
  `filessetID` int(11) NOT NULL,
  `sc_files` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_files_settings`
--

INSERT INTO `rm_214_plugins_files_settings` (`filessetID`, `sc_files`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_footer`
--

CREATE TABLE `rm_214_plugins_footer` (
  `footID` int(11) NOT NULL,
  `banner` varchar(255) NOT NULL DEFAULT '',
  `about` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `strasse` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefon` varchar(255) NOT NULL,
  `since` varchar(255) NOT NULL DEFAULT '',
  `linkname1` varchar(255) NOT NULL,
  `navilink1` varchar(255) NOT NULL,
  `linkname2` varchar(255) NOT NULL,
  `navilink2` varchar(255) NOT NULL,
  `linkname3` varchar(255) NOT NULL,
  `navilink3` varchar(255) NOT NULL,
  `linkname4` varchar(255) NOT NULL,
  `navilink4` varchar(255) NOT NULL,
  `linkname5` varchar(255) NOT NULL,
  `navilink5` varchar(255) NOT NULL,
  `linkname6` varchar(255) NOT NULL,
  `navilink6` varchar(255) NOT NULL,
  `linkname7` varchar(255) NOT NULL,
  `navilink7` varchar(255) NOT NULL,
  `linkname8` varchar(255) NOT NULL,
  `navilink8` varchar(255) NOT NULL,
  `linkname9` varchar(255) NOT NULL,
  `navilink9` varchar(255) NOT NULL,
  `linkname10` varchar(255) NOT NULL,
  `navilink10` varchar(255) NOT NULL,
  `social_text` varchar(255) NOT NULL,
  `social_link_name1` text NOT NULL,
  `social_link1` varchar(255) NOT NULL,
  `social_link_name2` varchar(255) NOT NULL,
  `social_link2` varchar(255) NOT NULL,
  `social_link_name3` varchar(255) NOT NULL,
  `social_link3` varchar(255) NOT NULL,
  `copyright_link_name1` varchar(255) NOT NULL,
  `copyright_link1` varchar(255) NOT NULL,
  `copyright_link_name2` varchar(255) NOT NULL,
  `copyright_link2` varchar(255) NOT NULL,
  `copyright_link_name3` varchar(255) NOT NULL,
  `copyright_link3` varchar(255) NOT NULL,
  `copyright_link_name4` varchar(255) NOT NULL,
  `copyright_link4` varchar(255) NOT NULL,
  `copyright_link_name5` varchar(255) NOT NULL,
  `copyright_link5` varchar(255) NOT NULL,
  `widget_left` varchar(255) NOT NULL,
  `widget_center` varchar(255) NOT NULL,
  `widget_right` varchar(255) NOT NULL,
  `widgetname_left` varchar(255) NOT NULL,
  `widgetname_center` varchar(255) NOT NULL,
  `widgetname_right` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_footer`
--

INSERT INTO `rm_214_plugins_footer` (`footID`, `banner`, `about`, `name`, `strasse`, `email`, `telefon`, `since`, `linkname1`, `navilink1`, `linkname2`, `navilink2`, `linkname3`, `navilink3`, `linkname4`, `navilink4`, `linkname5`, `navilink5`, `linkname6`, `navilink6`, `linkname7`, `navilink7`, `linkname8`, `navilink8`, `linkname9`, `navilink9`, `linkname10`, `navilink10`, `social_text`, `social_link_name1`, `social_link1`, `social_link_name2`, `social_link2`, `social_link_name3`, `social_link3`, `copyright_link_name1`, `copyright_link1`, `copyright_link_name2`, `copyright_link2`, `copyright_link_name3`, `copyright_link3`, `copyright_link_name4`, `copyright_link4`, `copyright_link_name5`, `copyright_link5`, `widget_left`, `widget_center`, `widget_right`, `widgetname_left`, `widgetname_center`, `widgetname_right`) VALUES
(1, '', 'Team Clanname ist eine 1999 gegr&uuml;ndete deutsche E-Sport-Organisation, welche &uuml;ber professionelle Spieler in unterschiedlichen Disziplinen verf&uuml;gt...', 'Hans Mustermann', 'Musterhausen 11, Germany', 'mail@Clanname-esport.de', '(123) 456-7890', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Impressum', 'index.php?site=imprint', 'Datenschutz', 'index.php?site=privacy_policy', 'Kontakt', 'index.php?site=contact', 'Counter', 'index.php?site=counter', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_footer_target`
--

CREATE TABLE `rm_214_plugins_footer_target` (
  `targetID` int(11) NOT NULL,
  `windows1` int(1) NOT NULL DEFAULT 1,
  `windows2` int(1) NOT NULL DEFAULT 1,
  `windows3` int(1) NOT NULL DEFAULT 1,
  `windows4` int(1) NOT NULL DEFAULT 1,
  `windows5` int(1) NOT NULL DEFAULT 1,
  `windows6` int(1) NOT NULL DEFAULT 1,
  `windows7` int(1) NOT NULL DEFAULT 1,
  `windows8` int(1) NOT NULL DEFAULT 1,
  `windows9` int(1) NOT NULL DEFAULT 1,
  `windows10` int(1) NOT NULL DEFAULT 1,
  `windows11` int(1) NOT NULL DEFAULT 1,
  `windows12` int(1) NOT NULL DEFAULT 1,
  `windows13` int(1) NOT NULL DEFAULT 1,
  `windows14` int(1) NOT NULL DEFAULT 1,
  `windows15` int(1) NOT NULL DEFAULT 1,
  `windows16` int(1) NOT NULL DEFAULT 1,
  `windows17` int(1) NOT NULL DEFAULT 1,
  `windows18` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_footer_target`
--

INSERT INTO `rm_214_plugins_footer_target` (`targetID`, `windows1`, `windows2`, `windows3`, `windows4`, `windows5`, `windows6`, `windows7`, `windows8`, `windows9`, `windows10`, `windows11`, `windows12`, `windows13`, `windows14`, `windows15`, `windows16`, `windows17`, `windows18`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_forum_announcements`
--

CREATE TABLE `rm_214_plugins_forum_announcements` (
  `announceID` int(11) NOT NULL,
  `boardID` int(11) NOT NULL DEFAULT 0,
  `readgrps` text NOT NULL,
  `userID` int(11) NOT NULL DEFAULT 0,
  `date` int(14) NOT NULL DEFAULT 0,
  `topic` varchar(255) NOT NULL DEFAULT '',
  `announcement` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_forum_boards`
--

CREATE TABLE `rm_214_plugins_forum_boards` (
  `boardID` int(11) NOT NULL,
  `category` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  `readgrps` text NOT NULL,
  `writegrps` text NOT NULL,
  `sort` int(2) NOT NULL DEFAULT 0,
  `topics` int(11) NOT NULL DEFAULT 0,
  `posts` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_forum_boards`
--

INSERT INTO `rm_214_plugins_forum_boards` (`boardID`, `category`, `name`, `info`, `readgrps`, `writegrps`, `sort`, `topics`, `posts`) VALUES
(1, 1, 'Main Board', 'The general public board', '', '', 1, 3, 3),
(2, 2, 'Main Board', 'The general intern board', '1', '', 2, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_forum_categories`
--

CREATE TABLE `rm_214_plugins_forum_categories` (
  `catID` int(11) NOT NULL,
  `readgrps` text NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_forum_categories`
--

INSERT INTO `rm_214_plugins_forum_categories` (`catID`, `readgrps`, `name`, `info`, `sort`) VALUES
(1, '', 'Public Boards', '', 1),
(2, '1', 'Intern Boards', '', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_forum_notify`
--

CREATE TABLE `rm_214_plugins_forum_notify` (
  `notifyID` int(11) NOT NULL,
  `topicID` int(11) NOT NULL DEFAULT 0,
  `userID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_forum_poll`
--

CREATE TABLE `rm_214_plugins_forum_poll` (
  `topicID` int(11) NOT NULL,
  `enddate` bigint(20) NOT NULL,
  `poll` int(1) NOT NULL,
  `title` char(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `value1` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `value2` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `value3` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `value4` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `value5` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_forum_posts`
--

CREATE TABLE `rm_214_plugins_forum_posts` (
  `postID` int(11) NOT NULL,
  `boardID` int(11) NOT NULL DEFAULT 0,
  `topicID` int(11) NOT NULL DEFAULT 0,
  `date` int(14) NOT NULL DEFAULT 0,
  `poster` int(11) NOT NULL DEFAULT 0,
  `message` text NOT NULL,
  `thank` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_forum_posts`
--

INSERT INTO `rm_214_plugins_forum_posts` (`postID`, `boardID`, `topicID`, `date`, `poster`, `message`, `thank`) VALUES
(1, 1, 1, 1696689376, 1, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', ''),
(2, 1, 2, 1696689549, 1, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', ''),
(3, 1, 2, 1696692185, 1, 'vdvdv', ''),
(4, 1, 3, 1696697898, 1, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', ''),
(5, 1, 3, 1696701525, 1, '&amp;nbsp;ddbdb&lt;br /&gt;\r\ndbdb&lt;br /&gt;\r\nbdbdb', ''),
(6, 1, 2, 1696701551, 1, 'bdbdbdb', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_forum_topics`
--

CREATE TABLE `rm_214_plugins_forum_topics` (
  `topicID` int(11) NOT NULL,
  `boardID` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(255) NOT NULL DEFAULT '',
  `readgrps` text NOT NULL,
  `writegrps` text NOT NULL,
  `userID` int(11) NOT NULL DEFAULT 0,
  `date` int(14) NOT NULL DEFAULT 0,
  `topic` varchar(255) NOT NULL DEFAULT '',
  `lastdate` int(14) NOT NULL DEFAULT 0,
  `lastposter` int(11) NOT NULL DEFAULT 0,
  `lastpostID` int(11) NOT NULL DEFAULT 0,
  `replys` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `closed` int(1) NOT NULL DEFAULT 0,
  `moveID` int(11) NOT NULL DEFAULT 0,
  `sticky` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_forum_topics`
--

INSERT INTO `rm_214_plugins_forum_topics` (`topicID`, `boardID`, `icon`, `readgrps`, `writegrps`, `userID`, `date`, `topic`, `lastdate`, `lastposter`, `lastpostID`, `replys`, `views`, `closed`, `moveID`, `sticky`) VALUES
(1, 1, '', '', '', 1, 1696689376, 'Die neue RM Version 2.1.3 ist da!', 1696689376, 1, 0, 0, 26, 0, 0, 0),
(2, 1, '', '', '', 1, 1696689549, 'Herzlich Willkommen', 1696701551, 1, 6, 2, 48, 0, 0, 0),
(3, 1, '', '', '', 1, 1696697898, 'Anpassungen', 1696701525, 1, 5, 1, 33, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_forum_votes`
--

CREATE TABLE `rm_214_plugins_forum_votes` (
  `voteID` int(11) NOT NULL,
  `topicID` int(11) NOT NULL DEFAULT 0,
  `userID` int(11) NOT NULL DEFAULT 0,
  `value1` int(1) NOT NULL,
  `value2` int(1) NOT NULL,
  `value3` int(1) NOT NULL,
  `value4` int(1) NOT NULL,
  `value5` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_gallery`
--

CREATE TABLE `rm_214_plugins_gallery` (
  `galleryID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` int(14) NOT NULL,
  `groupID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_gallery`
--

INSERT INTO `rm_214_plugins_gallery` (`galleryID`, `userID`, `name`, `date`, `groupID`) VALUES
(1, 0, 'sendeplan', 1697825017, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_gallery_comments`
--

CREATE TABLE `rm_214_plugins_gallery_comments` (
  `commentID` int(11) NOT NULL,
  `parentID` int(11) NOT NULL DEFAULT 0,
  `type` char(2) NOT NULL DEFAULT '',
  `userID` int(11) NOT NULL DEFAULT 0,
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `date` int(14) NOT NULL DEFAULT 0,
  `comments` text NOT NULL,
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_gallery_groups`
--

CREATE TABLE `rm_214_plugins_gallery_groups` (
  `groupID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_gallery_groups`
--

INSERT INTO `rm_214_plugins_gallery_groups` (`groupID`, `name`, `sort`) VALUES
(1, 'test', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_gallery_pictures`
--

CREATE TABLE `rm_214_plugins_gallery_pictures` (
  `picID` int(11) NOT NULL,
  `galleryID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `banner` int(11) NOT NULL,
  `comment` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `comments` int(1) NOT NULL DEFAULT 1,
  `votes` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_gallery_pictures`
--

INSERT INTO `rm_214_plugins_gallery_pictures` (`picID`, `galleryID`, `name`, `banner`, `comment`, `views`, `comments`, `votes`, `points`, `rating`) VALUES
(1, 1, 'Webteam', 0, '', 28, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_gallery_settings`
--

CREATE TABLE `rm_214_plugins_gallery_settings` (
  `gallerysetID` int(11) NOT NULL,
  `publicadmin` int(11) NOT NULL,
  `usergalleries` int(11) NOT NULL DEFAULT 0,
  `maxusergalleries` int(11) NOT NULL,
  `thumbwidth` int(11) NOT NULL,
  `pictures` int(11) NOT NULL,
  `groups` int(11) NOT NULL,
  `picsize_l` int(11) NOT NULL,
  `picsize_h` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_gallery_settings`
--

INSERT INTO `rm_214_plugins_gallery_settings` (`gallerysetID`, `publicadmin`, `usergalleries`, `maxusergalleries`, `thumbwidth`, `pictures`, `groups`, `picsize_l`, `picsize_h`) VALUES
(1, 1, 1, 20971520, 250, 8, 4, 50, 100);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_links`
--

CREATE TABLE `rm_214_plugins_links` (
  `linkID` int(11) NOT NULL,
  `linkcatID` int(11) NOT NULL DEFAULT 0,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` text NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `banner` varchar(255) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT 0,
  `date` int(14) NOT NULL DEFAULT 0,
  `poster` int(11) NOT NULL DEFAULT 0,
  `displayed` int(11) NOT NULL DEFAULT 0,
  `rating` int(11) NOT NULL DEFAULT 0,
  `points` int(11) NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_links`
--

INSERT INTO `rm_214_plugins_links` (`linkID`, `linkcatID`, `question`, `answer`, `url`, `banner`, `sort`, `date`, `poster`, `displayed`, `rating`, `points`, `votes`, `views`) VALUES
(1, 1, 'Der Schlosskeller', 'Der SchlossKeller Online Gaming Community - Livin&#39; on the Edge - Website. Wir sind begeisterte Counterstrike-Spieler und w&uuml;rden uns &uuml;ber neue Mitglieder oder eine Herausforderung sehr freuen. Keep fragging!', 'https://www.webspell-rm.de', '1.jpg', 1, 1697303253, 1, 1, 0, 0, 0, 17);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_links_categories`
--

CREATE TABLE `rm_214_plugins_links_categories` (
  `linkcatID` int(11) NOT NULL,
  `linkcatname` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_links_categories`
--

INSERT INTO `rm_214_plugins_links_categories` (`linkcatID`, `linkcatname`, `description`, `sort`) VALUES
(1, 'Webspell-RM - Referenzen', '', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_links_settings`
--

CREATE TABLE `rm_214_plugins_links_settings` (
  `linkssetID` int(11) NOT NULL,
  `links` int(11) NOT NULL,
  `linkchars` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_links_settings`
--

INSERT INTO `rm_214_plugins_links_settings` (`linkssetID`, `links`, `linkchars`) VALUES
(1, 4, 300);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_memberslist`
--

CREATE TABLE `rm_214_plugins_memberslist` (
  `ruID` int(11) NOT NULL,
  `users` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_memberslist`
--

INSERT INTO `rm_214_plugins_memberslist` (`ruID`, `users`) VALUES
(1, 15);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_messenger`
--

CREATE TABLE `rm_214_plugins_messenger` (
  `messageID` int(11) NOT NULL,
  `userID` int(11) NOT NULL DEFAULT 0,
  `date` int(14) NOT NULL DEFAULT 0,
  `fromuser` int(11) NOT NULL DEFAULT 0,
  `touser` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `viewed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_navigation_agency`
--

CREATE TABLE `rm_214_plugins_navigation_agency` (
  `headerID` int(11) NOT NULL,
  `header_pic` varchar(255) NOT NULL DEFAULT '',
  `height` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_news`
--

CREATE TABLE `rm_214_plugins_news` (
  `newsID` int(11) NOT NULL,
  `rubric` int(11) NOT NULL DEFAULT 0,
  `date` int(14) NOT NULL DEFAULT 0,
  `poster` int(11) NOT NULL DEFAULT 0,
  `headline` varchar(255) NOT NULL DEFAULT '',
  `link1` varchar(255) NOT NULL,
  `url1` varchar(255) NOT NULL DEFAULT '',
  `window1` int(11) NOT NULL DEFAULT 0,
  `link2` varchar(255) NOT NULL,
  `url2` varchar(255) NOT NULL,
  `window2` int(11) NOT NULL DEFAULT 0,
  `content` text NOT NULL,
  `banner` varchar(255) NOT NULL DEFAULT '',
  `displayed` int(11) NOT NULL DEFAULT 0,
  `screens` text NOT NULL,
  `comments` int(1) NOT NULL DEFAULT 0,
  `recomments` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_news`
--

INSERT INTO `rm_214_plugins_news` (`newsID`, `rubric`, `date`, `poster`, `headline`, `link1`, `url1`, `window1`, `link2`, `url2`, `window2`, `content`, `banner`, `displayed`, `screens`, `comments`, `recomments`) VALUES
(1, 3, 1696629600, 1, 'Die neue Version 2.1.3 von Webspell-RM ist da!', '', '', 0, '', '', 0, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '', 1, '', 2, 0),
(2, 2, 1696629600, 1, 'Die neue Version 2.1.3 von Webspell-RM ist da!', '', '', 0, '', '', 0, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '', 1, '', 2, 0),
(3, 1, 1696693621, 1, 'Die neue Version 2.1.3 von Webspell-RM ist da!', '', '', 0, '', '', 0, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '', 1, '', 2, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_newsletter`
--

CREATE TABLE `rm_214_plugins_newsletter` (
  `email` varchar(255) NOT NULL DEFAULT '',
  `pass` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_news_comments`
--

CREATE TABLE `rm_214_plugins_news_comments` (
  `commentID` int(11) NOT NULL,
  `parentID` int(11) NOT NULL DEFAULT 0,
  `type` char(2) NOT NULL DEFAULT '',
  `userID` int(11) NOT NULL DEFAULT 0,
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `date` int(14) NOT NULL DEFAULT 0,
  `newscomments` text NOT NULL,
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_news_comments_recomment`
--

CREATE TABLE `rm_214_plugins_news_comments_recomment` (
  `recoID` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `datetime` int(14) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `type` varchar(2) NOT NULL,
  `parentID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_news_rubrics`
--

CREATE TABLE `rm_214_plugins_news_rubrics` (
  `rubricID` int(11) NOT NULL,
  `rubric` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `displayed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_news_rubrics`
--

INSERT INTO `rm_214_plugins_news_rubrics` (`rubricID`, `rubric`, `pic`, `displayed`) VALUES
(1, 'sendeplan', '1.png', 0),
(2, 'Webteam', '2.png', 0),
(3, 'streambox', '3.png', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_news_settings`
--

CREATE TABLE `rm_214_plugins_news_settings` (
  `newssetID` int(11) NOT NULL,
  `admin_news` int(11) NOT NULL DEFAULT 0,
  `news` int(11) NOT NULL DEFAULT 0,
  `newsarchiv` int(11) NOT NULL DEFAULT 0,
  `headlines` int(11) NOT NULL DEFAULT 0,
  `newschars` int(11) NOT NULL DEFAULT 0,
  `headlineschars` int(11) NOT NULL DEFAULT 0,
  `topnewschars` int(11) NOT NULL DEFAULT 0,
  `feedback` int(11) NOT NULL DEFAULT 0,
  `switchen` int(11) NOT NULL DEFAULT 12
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_news_settings`
--

INSERT INTO `rm_214_plugins_news_settings` (`newssetID`, `admin_news`, `news`, `newsarchiv`, `headlines`, `newschars`, `headlineschars`, `topnewschars`, `feedback`, `switchen`) VALUES
(1, 5, 3, 10, 4, 700, 200, 200, 5, 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_parallax`
--

CREATE TABLE `rm_214_plugins_parallax` (
  `headerID` int(11) NOT NULL,
  `header_pic` varchar(255) NOT NULL DEFAULT '',
  `height` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_parallax`
--

INSERT INTO `rm_214_plugins_parallax` (`headerID`, `header_pic`, `height`) VALUES
(1, '1.jpg', '50vh');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_partners`
--

CREATE TABLE `rm_214_plugins_partners` (
  `partnerID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `date` int(14) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `displayed` varchar(255) NOT NULL DEFAULT '1',
  `hits` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_partners`
--

INSERT INTO `rm_214_plugins_partners` (`partnerID`, `name`, `url`, `facebook`, `twitter`, `banner`, `info`, `date`, `sort`, `displayed`, `hits`) VALUES
(1, 'Partner 1', 'https://www.webspell-rm.de', 'https://www.facebook.com/WebspellRM', 'https://twitter.com/webspell_rm', '1.png', 'Hallo. Ich bin ein kleiner Blindtext. Und zwar schon so lange ich denken kann. Es war nicht leicht zu verstehen, was es bedeutet, ein blinder Text zu sein: Man ergibt keinen Sinn. Wirklich keinen Sinn. Man wird zusammenhangslos eingeschoben und rumgedreht &ndash; und oftmals gar nicht erst gelesen. Aber bin ich allein deshalb ein schlechterer Text als andere? Na gut, ich werde nie in den Bestsellerlisten stehen. Aber andere Texte schaffen das auch nicht. Und darum st&ouml;rt es mich nicht besonders blind zu sein. Und sollten Sie diese Zeilen noch immer lesen, so habe ich als kleiner Blindtext etwas geschafft, wovon all die richtigen und wichtigen Texte meist nur tr&auml;umen.', 1577612091, 1, '1', 2),
(2, 'Partner 2', 'https://www.webspell-rm.de', 'https://www.facebook.com/WebspellRM', 'https://twitter.com/webspell_rm', '2.png', 'Hallo. Ich bin ein kleiner Blindtext. Und zwar schon so lange ich denken kann. Es war nicht leicht zu verstehen, was es bedeutet, ein blinder Text zu sein: Man ergibt keinen Sinn. Wirklich keinen Sinn. Man wird zusammenhangslos eingeschoben und rumgedreht &ndash; und oftmals gar nicht erst gelesen. Aber bin ich allein deshalb ein schlechterer Text als andere? Na gut, ich werde nie in den Bestsellerlisten stehen. Aber andere Texte schaffen das auch nicht. Und darum st&ouml;rt es mich nicht besonders blind zu sein. Und sollten Sie diese Zeilen noch immer lesen, so habe ich als kleiner Blindtext etwas geschafft, wovon all die richtigen und wichtigen Texte meist nur tr&auml;umen.', 1577612226, 1, '1', 2),
(3, 'Partner 3', 'https://www.webspell-rm.de', 'https://www.facebook.com/WebspellRM', 'https://twitter.com/webspell_rm', '3.png', 'Hallo. Ich bin ein kleiner Blindtext. Und zwar schon so lange ich denken kann. Es war nicht leicht zu verstehen, was es bedeutet, ein blinder Text zu sein: Man ergibt keinen Sinn. Wirklich keinen Sinn. Man wird zusammenhangslos eingeschoben und rumgedreht &ndash; und oftmals gar nicht erst gelesen. Aber bin ich allein deshalb ein schlechterer Text als andere? Na gut, ich werde nie in den Bestsellerlisten stehen. Aber andere Texte schaffen das auch nicht. Und darum st&ouml;rt es mich nicht besonders blind zu sein. Und sollten Sie diese Zeilen noch immer lesen, so habe ich als kleiner Blindtext etwas geschafft, wovon all die richtigen und wichtigen Texte meist nur tr&auml;umen.', 1577612301, 1, '1', 2),
(4, 'Partner 4', 'https://www.webspell-rm.de', 'https://www.facebook.com/WebspellRM', 'https://twitter.com/webspell_rm', '4.png', 'Hallo. Ich bin ein kleiner Blindtext. Und zwar schon so lange ich denken kann. Es war nicht leicht zu verstehen, was es bedeutet, ein blinder Text zu sein: Man ergibt keinen Sinn. Wirklich keinen Sinn. Man wird zusammenhangslos eingeschoben und rumgedreht &ndash; und oftmals gar nicht erst gelesen. Aber bin ich allein deshalb ein schlechterer Text als andere? Na gut, ich werde nie in den Bestsellerlisten stehen. Aber andere Texte schaffen das auch nicht. Und darum st&ouml;rt es mich nicht besonders blind zu sein. Und sollten Sie diese Zeilen noch immer lesen, so habe ich als kleiner Blindtext etwas geschafft, wovon all die richtigen und wichtigen Texte meist nur tr&auml;umen.', 1577612446, 1, '1', 2),
(5, 'Partner 5', 'https://www.webspell-rm.de', 'https://www.facebook.com/WebspellRM', 'https://twitter.com/webspell_rm', '5.png', 'Hallo. Ich bin ein kleiner Blindtext. Und zwar schon so lange ich denken kann. Es war nicht leicht zu verstehen, was es bedeutet, ein blinder Text zu sein: Man ergibt keinen Sinn. Wirklich keinen Sinn. Man wird zusammenhangslos eingeschoben und rumgedreht &ndash; und oftmals gar nicht erst gelesen. Aber bin ich allein deshalb ein schlechterer Text als andere? Na gut, ich werde nie in den Bestsellerlisten stehen. Aber andere Texte schaffen das auch nicht. Und darum st&ouml;rt es mich nicht besonders blind zu sein. Und sollten Sie diese Zeilen noch immer lesen, so habe ich als kleiner Blindtext etwas geschafft, wovon all die richtigen und wichtigen Texte meist nur tr&auml;umen.', 1577613122, 1, '1', 2),
(6, 'Partner 6', 'https://www.webspell-rm.de', 'https://www.facebook.com/WebspellRM', 'https://twitter.com/webspell_rm', '6.png', 'Hallo. Ich bin ein kleiner Blindtext. Und zwar schon so lange ich denken kann. Es war nicht leicht zu verstehen, was es bedeutet, ein blinder Text zu sein: Man ergibt keinen Sinn. Wirklich keinen Sinn. Man wird zusammenhangslos eingeschoben und rumgedreht &ndash; und oftmals gar nicht erst gelesen. Aber bin ich allein deshalb ein schlechterer Text als andere? Na gut, ich werde nie in den Bestsellerlisten stehen. Aber andere Texte schaffen das auch nicht. Und darum st&ouml;rt es mich nicht besonders blind zu sein. Und sollten Sie diese Zeilen noch immer lesen, so habe ich als kleiner Blindtext etwas geschafft, wovon all die richtigen und wichtigen Texte meist nur tr&auml;umen.', 1577613187, 1, '1', 2),
(7, 'Partner 7', 'https://www.webspell-rm.de', 'https://www.facebook.com/WebspellRM', 'https://twitter.com/webspell_rm', '7.png', 'Hallo. Ich bin ein kleiner Blindtext. Und zwar schon so lange ich denken kann. Es war nicht leicht zu verstehen, was es bedeutet, ein blinder Text zu sein: Man ergibt keinen Sinn. Wirklich keinen Sinn. Man wird zusammenhangslos eingeschoben und rumgedreht &ndash; und oftmals gar nicht erst gelesen. Aber bin ich allein deshalb ein schlechterer Text als andere? Na gut, ich werde nie in den Bestsellerlisten stehen. Aber andere Texte schaffen das auch nicht. Und darum st&ouml;rt es mich nicht besonders blind zu sein. Und sollten Sie diese Zeilen noch immer lesen, so habe ich als kleiner Blindtext etwas geschafft, wovon all die richtigen und wichtigen Texte meist nur tr&auml;umen.', 1577613221, 1, '1', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_partners_settings`
--

CREATE TABLE `rm_214_plugins_partners_settings` (
  `partnerssetID` int(11) NOT NULL,
  `partners` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_partners_settings`
--

INSERT INTO `rm_214_plugins_partners_settings` (`partnerssetID`, `partners`) VALUES
(1, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_polls`
--

CREATE TABLE `rm_214_plugins_polls` (
  `pollID` int(10) NOT NULL,
  `aktiv` int(1) NOT NULL DEFAULT 0,
  `laufzeit` bigint(20) NOT NULL DEFAULT 0,
  `titel` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL,
  `o1` varchar(255) NOT NULL DEFAULT '',
  `o2` varchar(255) NOT NULL DEFAULT '',
  `o3` varchar(255) NOT NULL DEFAULT '',
  `o4` varchar(255) NOT NULL DEFAULT '',
  `o5` varchar(255) NOT NULL DEFAULT '',
  `o6` varchar(255) NOT NULL DEFAULT '',
  `o7` varchar(255) NOT NULL DEFAULT '',
  `o8` varchar(255) NOT NULL DEFAULT '',
  `o9` varchar(255) NOT NULL DEFAULT '',
  `o10` varchar(255) NOT NULL DEFAULT '',
  `comments` int(1) NOT NULL DEFAULT 0,
  `hosts` text NOT NULL,
  `intern` int(1) NOT NULL DEFAULT 0,
  `userIDs` text NOT NULL,
  `published` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_polls`
--

INSERT INTO `rm_214_plugins_polls` (`pollID`, `aktiv`, `laufzeit`, `titel`, `description`, `o1`, `o2`, `o3`, `o4`, `o5`, `o6`, `o7`, `o8`, `o9`, `o10`, `comments`, `hosts`, `intern`, `userIDs`, `published`) VALUES
(4, 1, 1698663600, 'Einstellungen der Webseite', 'gegeg', 'Option 1', 'Option 2', 'Option 3', 'Option 4', '', '', '', '', '', '', 1, '', 0, '', '1'),
(11, 1, 1698228000, 'Lorem ipsum dolor sit amet 11', 'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet', 'Option 1', 'Option 2', 'Option 3', 'Option 4', '', '', '', '', '', '', 1, '#94.31.101.69#', 1, '1', '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_polls_comments`
--

CREATE TABLE `rm_214_plugins_polls_comments` (
  `commentID` int(11) NOT NULL,
  `parentID` int(11) NOT NULL DEFAULT 0,
  `type` char(2) NOT NULL DEFAULT '',
  `userID` int(11) NOT NULL DEFAULT 0,
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `date` int(14) NOT NULL DEFAULT 0,
  `comments` text NOT NULL,
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_polls_comments`
--

INSERT INTO `rm_214_plugins_polls_comments` (`commentID`, `parentID`, `type`, `userID`, `nickname`, `date`, `comments`, `homepage`, `email`, `ip`) VALUES
(5, 3, 'po', 1, '', 1697480747, 'wdwdw', '', '', ''),
(6, 11, 'po', 1, '', 1697480774, 'xxxxxxxxxxxxxxx\r\naaaaaaaaaaaaa', '', '', ''),
(7, 11, 'po', 1, '', 1697488493, '11', '', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_polls_votes`
--

CREATE TABLE `rm_214_plugins_polls_votes` (
  `pollID` int(10) NOT NULL DEFAULT 0,
  `o1` int(11) NOT NULL DEFAULT 0,
  `o2` int(11) NOT NULL DEFAULT 0,
  `o3` int(11) NOT NULL DEFAULT 0,
  `o4` int(11) NOT NULL DEFAULT 0,
  `o5` int(11) NOT NULL DEFAULT 0,
  `o6` int(11) NOT NULL DEFAULT 0,
  `o7` int(11) NOT NULL DEFAULT 0,
  `o8` int(11) NOT NULL DEFAULT 0,
  `o9` int(11) NOT NULL DEFAULT 0,
  `o10` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_polls_votes`
--

INSERT INTO `rm_214_plugins_polls_votes` (`pollID`, `o1`, `o2`, `o3`, `o4`, `o5`, `o6`, `o7`, `o8`, `o9`, `o10`) VALUES
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_portfolio`
--

CREATE TABLE `rm_214_plugins_portfolio` (
  `portfolioID` int(11) NOT NULL,
  `portfoliocatID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `effects` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_portfolio`
--

INSERT INTO `rm_214_plugins_portfolio` (`portfolioID`, `portfoliocatID`, `name`, `text`, `effects`, `url`, `banner`, `sort`) VALUES
(1, 1, 'Bild1', '', '', '', '1.jpg', 0),
(2, 1, 'Bild2', '', '', '', '2.jpg', 0),
(3, 1, 'Bild3', '', '', '', '3.jpg', 0),
(4, 2, 'Bild4', '', '', '', '4.jpg', 0),
(5, 2, 'Bild5', '', '', '', '5.jpg', 0),
(6, 2, 'Bild6', '', '', '', '6.jpg', 0),
(7, 2, 'Bild7', '', '', '', '7.jpg', 0),
(8, 3, 'Bild8', '', '', '', '8.jpg', 0),
(9, 3, 'Bild9', '', '', '', '9.jpg', 0),
(10, 4, 'Bild10', '', '', '', '10.jpg', 0),
(11, 5, 'Bild11', '', '', '', '11.jpg', 0),
(12, 5, 'Bild12', '', '', '', '12.jpg', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_portfolio_categories`
--

CREATE TABLE `rm_214_plugins_portfolio_categories` (
  `portfoliocatID` int(11) NOT NULL,
  `catname` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_portfolio_categories`
--

INSERT INTO `rm_214_plugins_portfolio_categories` (`portfoliocatID`, `catname`, `description`, `sort`) VALUES
(1, 'Category1', '', 0),
(2, 'Category2', '', 0),
(3, 'Category3', '', 0),
(4, 'Category4', '', 0),
(5, 'Category5', '', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_sendeplan`
--

CREATE TABLE `rm_214_plugins_sendeplan` (
  `sende_id` int(11) NOT NULL,
  `information` text NOT NULL,
  `djname` varchar(255) DEFAULT NULL,
  `musik` varchar(255) DEFAULT NULL,
  `sendepic` varchar(255) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `sende_start_time` int(11) NOT NULL,
  `sende_end_time` int(11) NOT NULL,
  `vertretung` int(11) NOT NULL,
  `stream` int(11) NOT NULL DEFAULT 1,
  `start_day_send` date NOT NULL,
  `videoID` int(1) NOT NULL,
  `videourl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `rm_214_plugins_sendeplan`
--

INSERT INTO `rm_214_plugins_sendeplan` (`sende_id`, `information`, `djname`, `musik`, `sendepic`, `userID`, `sende_start_time`, `sende_end_time`, `vertretung`, `stream`, `start_day_send`, `videoID`, `videourl`) VALUES
(1, 'dqdqd', 'DJ', 'Mix', 'electro_on_technics.jpg', 1, 1696174632, 2147483647, 0, 1, '2023-10-02', 0, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_servers`
--

CREATE TABLE `rm_214_plugins_servers` (
  `serverID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(255) NOT NULL DEFAULT '',
  `game` varchar(10) NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `date` int(14) NOT NULL,
  `displayed` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_servers`
--

INSERT INTO `rm_214_plugins_servers` (`serverID`, `name`, `ip`, `game`, `info`, `date`, `displayed`, `sort`) VALUES
(1, 'VARGUL.NET - GUNS', '85.14.228.228:28960', 'cs_go', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 0, '1', 1),
(2, 'VARGUL.NET | !GUNS', '85.14.228.228:28960', 'cod_mw', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 0, '1', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_servers_settings`
--

CREATE TABLE `rm_214_plugins_servers_settings` (
  `serverssetID` int(11) NOT NULL,
  `servers` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_servers_settings`
--

INSERT INTO `rm_214_plugins_servers_settings` (`serverssetID`, `servers`) VALUES
(1, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_sponsors`
--

CREATE TABLE `rm_214_plugins_sponsors` (
  `sponsorID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `banner` varchar(255) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT 1,
  `banner_small` varchar(255) NOT NULL DEFAULT '',
  `displayed` varchar(255) NOT NULL DEFAULT '1',
  `mainsponsor` varchar(255) NOT NULL DEFAULT '0',
  `hits` int(11) DEFAULT 0,
  `date` int(14) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_sponsors`
--

INSERT INTO `rm_214_plugins_sponsors` (`sponsorID`, `name`, `url`, `info`, `banner`, `sort`, `banner_small`, `displayed`, `mainsponsor`, `hits`, `date`) VALUES
(1, 'Sponsor 1', 'https://www.webspell-rm.de', 'Hallo. Ich bin ein kleiner Blindtext. Und zwar schon so lange ich denken kann. Es war nicht leicht zu verstehen, was es bedeutet, ein blinder Text zu sein: Man ergibt keinen Sinn. Wirklich keinen Sinn. Man wird zusammenhangslos eingeschoben und rumgedreht &ndash; und oftmals gar nicht erst gelesen. Aber bin ich allein deshalb ein schlechterer Text als andere? Na gut, ich werde nie in den Bestsellerlisten stehen. Aber andere Texte schaffen das auch nicht. Und darum st&ouml;rt es mich nicht besonders blind zu sein. Und sollten Sie diese Zeilen noch immer lesen, so habe ich als kleiner Blindtext etwas geschafft, wovon all die richtigen und wichtigen Texte meist nur tr&auml;umen.', '1.png', 1, '1_small.png', '1', '0', 0, 1692376041),
(2, 'Sponsor 2', 'https://www.webspell-rm.de', 'Hallo. Ich bin ein kleiner Blindtext. Und zwar schon so lange ich denken kann. Es war nicht leicht zu verstehen, was es bedeutet, ein blinder Text zu sein: Man ergibt keinen Sinn. Wirklich keinen Sinn. Man wird zusammenhangslos eingeschoben und rumgedreht &ndash; und oftmals gar nicht erst gelesen. Aber bin ich allein deshalb ein schlechterer Text als andere? Na gut, ich werde nie in den Bestsellerlisten stehen. Aber andere Texte schaffen das auch nicht. Und darum st&ouml;rt es mich nicht besonders blind zu sein. Und sollten Sie diese Zeilen noch immer lesen, so habe ich als kleiner Blindtext etwas geschafft, wovon all die richtigen und wichtigen Texte meist nur tr&auml;umen.', '2.png', 1, '2_small.png', '1', '0', 0, 1692376062),
(3, 'Sponsor 3', 'https://www.webspell-rm.de', 'Hallo. Ich bin ein kleiner Blindtext. Und zwar schon so lange ich denken kann. Es war nicht leicht zu verstehen, was es bedeutet, ein blinder Text zu sein: Man ergibt keinen Sinn. Wirklich keinen Sinn. Man wird zusammenhangslos eingeschoben und rumgedreht &ndash; und oftmals gar nicht erst gelesen. Aber bin ich allein deshalb ein schlechterer Text als andere? Na gut, ich werde nie in den Bestsellerlisten stehen. Aber andere Texte schaffen das auch nicht. Und darum st&ouml;rt es mich nicht besonders blind zu sein. Und sollten Sie diese Zeilen noch immer lesen, so habe ich als kleiner Blindtext etwas geschafft, wovon all die richtigen und wichtigen Texte meist nur tr&auml;umen.', '3.png', 1, '3_small.png', '1', '0', 0, 1692376084),
(4, 'Sponsor 4', 'https://www.webspell-rm.de', 'Hallo. Ich bin ein kleiner Blindtext. Und zwar schon so lange ich denken kann. Es war nicht leicht zu verstehen, was es bedeutet, ein blinder Text zu sein: Man ergibt keinen Sinn. Wirklich keinen Sinn. Man wird zusammenhangslos eingeschoben und rumgedreht &ndash; und oftmals gar nicht erst gelesen. Aber bin ich allein deshalb ein schlechterer Text als andere? Na gut, ich werde nie in den Bestsellerlisten stehen. Aber andere Texte schaffen das auch nicht. Und darum st&ouml;rt es mich nicht besonders blind zu sein. Und sollten Sie diese Zeilen noch immer lesen, so habe ich als kleiner Blindtext etwas geschafft, wovon all die richtigen und wichtigen Texte meist nur tr&auml;umen.', '4.png', 1, '4_small.png', '1', '0', 0, 1692376106),
(5, 'Sponsor 5', 'https://www.webspell-rm.de', 'Hallo. Ich bin ein kleiner Blindtext. Und zwar schon so lange ich denken kann. Es war nicht leicht zu verstehen, was es bedeutet, ein blinder Text zu sein: Man ergibt keinen Sinn. Wirklich keinen Sinn. Man wird zusammenhangslos eingeschoben und rumgedreht &ndash; und oftmals gar nicht erst gelesen. Aber bin ich allein deshalb ein schlechterer Text als andere? Na gut, ich werde nie in den Bestsellerlisten stehen. Aber andere Texte schaffen das auch nicht. Und darum st&ouml;rt es mich nicht besonders blind zu sein. Und sollten Sie diese Zeilen noch immer lesen, so habe ich als kleiner Blindtext etwas geschafft, wovon all die richtigen und wichtigen Texte meist nur tr&auml;umen.', '5.png', 1, '5_small.png', '1', '0', 0, 1692376126);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_sponsors_settings`
--

CREATE TABLE `rm_214_plugins_sponsors_settings` (
  `sponsorssetID` int(11) NOT NULL,
  `sponsors` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_sponsors_settings`
--

INSERT INTO `rm_214_plugins_sponsors_settings` (`sponsorssetID`, `sponsors`) VALUES
(1, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_squads_settings`
--

CREATE TABLE `rm_214_plugins_squads_settings` (
  `squadssetID` int(11) NOT NULL,
  `squads` int(11) NOT NULL,
  `squadschars` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_squads_settings`
--

INSERT INTO `rm_214_plugins_squads_settings` (`squadssetID`, `squads`, `squadschars`) VALUES
(1, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_streambox`
--

CREATE TABLE `rm_214_plugins_streambox` (
  `streamboxID` int(11) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `djname` varchar(255) NOT NULL,
  `sende_start_time` datetime NOT NULL,
  `sende_end_time` datetime NOT NULL,
  `show_name` varchar(255) NOT NULL,
  `information` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_streambox`
--

INSERT INTO `rm_214_plugins_streambox` (`streamboxID`, `nickname`, `djname`, `sende_start_time`, `sende_end_time`, `show_name`, `information`) VALUES
(1, '', 'test', '2023-10-01 13:46:00', '2023-10-31 14:00:00', 'mix', '6');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_streams`
--

CREATE TABLE `rm_214_plugins_streams` (
  `streamID` int(11) NOT NULL,
  `provider` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `displayed` varchar(1) NOT NULL DEFAULT '0',
  `widget_displayed` varchar(1) NOT NULL DEFAULT '0',
  `media_widget_displayed` varchar(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_streams`
--

INSERT INTO `rm_214_plugins_streams` (`streamID`, `provider`, `link`, `displayed`, `widget_displayed`, `media_widget_displayed`, `sort`) VALUES
(1, '1', 'fussel_live', '1', '1', '1', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_textslider`
--

CREATE TABLE `rm_214_plugins_textslider` (
  `carouselID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `ani_title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL DEFAULT '',
  `ani_link` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `ani_description` varchar(255) NOT NULL,
  `carousel_pic` varchar(255) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT 1,
  `displayed` varchar(255) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_textslider`
--

INSERT INTO `rm_214_plugins_textslider` (`carouselID`, `title`, `ani_title`, `link`, `ani_link`, `description`, `ani_description`, `carousel_pic`, `sort`, `displayed`) VALUES
(1, 'webSpell | RM 2.0 mit dem neuen <span>Fight Us</span>', 'fadeInRight', 'https://webspell-rm.de/', 'fadeInLeft', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada\r\nlorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien.\r\nSuspendisse cursus faucibus finibus.', 'fadeInLeft', '1.jpg', 1, '1'),
(2, 'webSpell | RM 2.0 mit einem eigenem <span>Blog</span>', 'fadeInDown', 'http://https://www.webspell-rm.de', 'fadeInLeft', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada\r\nlorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien.\r\nSuspendisse cursus faucibus finibus.', 'fadeInRight', '2.jpg', 1, '1'),
(3, 'webSpell | RM 2.0 mit dem neuen <span>News Plugin</span>', 'fadeInDown', 'http://https://webspell-rm.de/', 'fadeInRight', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada\r\nlorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien.\r\nSuspendisse cursus faucibus finibus.', 'fadeInUp', '3.jpg', 1, '1'),
(4, 'webSpell | RM 2.0 mit <span>Game Wars</span>', 'fadeInRight', 'http://https://webspell-rm.de/', 'fadeInLeft', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada\r\nlorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien.\r\nSuspendisse cursus faucibus finibus.', 'fadeInLeft', '4.jpg', 1, '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_ts3viewer`
--

CREATE TABLE `rm_214_plugins_ts3viewer` (
  `ts3_name` varchar(255) NOT NULL,
  `ts3_ip` varchar(255) NOT NULL,
  `ts3_port` varchar(255) NOT NULL,
  `ts3_qport` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_plugins_ts3viewer`
--

INSERT INTO `rm_214_plugins_ts3viewer` (`ts3_name`, `ts3_ip`, `ts3_port`, `ts3_qport`) VALUES
('Server Name', '127.0.0.1', '8888', '10011'),
('Server Name', '127.0.0.1', '8888', '10011');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_upcoming`
--

CREATE TABLE `rm_214_plugins_upcoming` (
  `upID` int(11) NOT NULL,
  `date` int(14) NOT NULL DEFAULT 0,
  `type` char(1) NOT NULL DEFAULT '',
  `squad` int(11) NOT NULL DEFAULT 0,
  `opponent` varchar(255) NOT NULL DEFAULT '',
  `opptag` varchar(255) NOT NULL DEFAULT '',
  `opphp` varchar(255) NOT NULL DEFAULT '',
  `maps` varchar(255) NOT NULL DEFAULT '',
  `server` varchar(255) NOT NULL DEFAULT '',
  `league` varchar(255) NOT NULL DEFAULT '',
  `leaguehp` varchar(255) NOT NULL DEFAULT '',
  `warinfo` text NOT NULL,
  `short` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `enddate` int(14) NOT NULL DEFAULT 0,
  `location` varchar(255) NOT NULL DEFAULT '',
  `locationhp` varchar(255) NOT NULL DEFAULT '',
  `dateinfo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_upcoming`
--

INSERT INTO `rm_214_plugins_upcoming` (`upID`, `date`, `type`, `squad`, `opponent`, `opptag`, `opphp`, `maps`, `server`, `league`, `leaguehp`, `warinfo`, `short`, `title`, `enddate`, `location`, `locationhp`, `dateinfo`) VALUES
(1, 1696878000, 'd', 0, '', '', '', '', '', '', '', '', 'Webseite ', 'Der KGV Eckerresse e.V. Gelsenkirchen veröffentlicht die erste eigene Internetseite.', 0, 'dddd', 'http://', 'vdvdv'),
(2, 1696885200, 'c', 1, 'fff', 'dqdq', 'http://', '', '', 'dqd', 'http://', 'dwdwd', '', '', 0, '', '', ''),
(3, 1696856400, 't', 0, '', '', '', '', 'home', '', '', '', 'Auf unserem Server', '', 1696860000, '', '', 'wdwd');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_upcoming_announce`
--

CREATE TABLE `rm_214_plugins_upcoming_announce` (
  `annID` int(11) NOT NULL,
  `upID` int(11) NOT NULL DEFAULT 0,
  `userID` int(11) NOT NULL DEFAULT 0,
  `status` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_videos`
--

CREATE TABLE `rm_214_plugins_videos` (
  `videosID` int(11) NOT NULL,
  `videoscatID` int(11) NOT NULL,
  `videoname` varchar(255) NOT NULL,
  `uploader` int(11) NOT NULL,
  `description` text NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `date` int(14) NOT NULL,
  `comments` int(1) NOT NULL,
  `displayed` int(1) NOT NULL DEFAULT 0,
  `widget_displayed` int(1) NOT NULL DEFAULT 0,
  `media_widget_displayed` int(1) NOT NULL DEFAULT 0,
  `votes` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_videos`
--

INSERT INTO `rm_214_plugins_videos` (`videosID`, `videoscatID`, `videoname`, `uploader`, `description`, `youtube`, `views`, `date`, `comments`, `displayed`, `widget_displayed`, `media_widget_displayed`, `votes`, `points`, `rating`, `sort`) VALUES
(11, 2, 'tttt', 1, 'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet', 'hhufj1x6vnM', 45, 1697741440, 2, 1, 1, 1, 0, 0, 0, 0),
(12, 2, 'Warhammer 40,000: Darktide - Rejects Will Rise | Official Trailer ', 1, 'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet', 'hhufj1x6vnM', 41, 1697741499, 2, 1, 1, 1, 0, 0, 0, 0),
(13, 2, 'Im Westen nichts Neues | Offizieller Teaser | Netflix', 1, '', 'tPdM-pmqEDg', 121, 1697880706, 2, 1, 1, 1, 0, 0, 0, 0),
(14, 2, 'Top Gun: Maverick (2021) – Neuer Trailer - Paramount Pictures Paramount Pictures', 1, '', 'tPdM-pmqEDg', 56, 1697880715, 2, 1, 1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_videos_categories`
--

CREATE TABLE `rm_214_plugins_videos_categories` (
  `videoscatID` int(11) NOT NULL,
  `catname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Daten für Tabelle `rm_214_plugins_videos_categories`
--

INSERT INTO `rm_214_plugins_videos_categories` (`videoscatID`, `catname`) VALUES
(2, 'Category1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_videos_comments`
--

CREATE TABLE `rm_214_plugins_videos_comments` (
  `commentID` int(11) NOT NULL,
  `parentID` int(11) NOT NULL DEFAULT 0,
  `type` char(2) NOT NULL DEFAULT '',
  `userID` int(11) NOT NULL DEFAULT 0,
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `date` int(14) NOT NULL DEFAULT 0,
  `comments` text NOT NULL,
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_wbox`
--

CREATE TABLE `rm_214_plugins_wbox` (
  `wID` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fromu` varchar(255) NOT NULL,
  `old` int(2) NOT NULL,
  `town` varchar(255) NOT NULL,
  `massage` text NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_wbox_ip`
--

CREATE TABLE `rm_214_plugins_wbox_ip` (
  `wipID` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_plugins_wbox_set`
--

CREATE TABLE `rm_214_plugins_wbox_set` (
  `reg` varchar(255) DEFAULT NULL,
  `reload` varchar(255) NOT NULL,
  `iptime` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `rm_214_plugins_wbox_set`
--

INSERT INTO `rm_214_plugins_wbox_set` (`reg`, `reload`, `iptime`) VALUES
('0', '30', 3600);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_settings`
--

CREATE TABLE `rm_214_settings` (
  `settingID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `hpurl` varchar(255) NOT NULL DEFAULT '',
  `clanname` varchar(255) NOT NULL DEFAULT '',
  `clantag` varchar(255) NOT NULL DEFAULT '',
  `adminname` varchar(255) NOT NULL DEFAULT '',
  `adminemail` varchar(255) NOT NULL DEFAULT '',
  `sball` int(11) NOT NULL DEFAULT 0,
  `topics` int(11) NOT NULL DEFAULT 0,
  `posts` int(11) NOT NULL DEFAULT 0,
  `latesttopics` int(11) NOT NULL,
  `latesttopicchars` int(11) NOT NULL DEFAULT 0,
  `messages` int(11) NOT NULL DEFAULT 0,
  `register_per_ip` int(1) NOT NULL DEFAULT 1,
  `sessionduration` int(3) NOT NULL,
  `closed` int(1) NOT NULL DEFAULT 0,
  `imprint` int(1) NOT NULL DEFAULT 0,
  `default_language` varchar(2) NOT NULL DEFAULT 'en',
  `insertlinks` int(1) NOT NULL DEFAULT 1,
  `search_min_len` int(3) NOT NULL DEFAULT 3,
  `max_wrong_pw` int(2) NOT NULL DEFAULT 10,
  `captcha_math` int(1) NOT NULL DEFAULT 2,
  `captcha_bgcol` varchar(7) NOT NULL DEFAULT '#FFFFFF',
  `captcha_fontcol` varchar(7) NOT NULL DEFAULT '#000000',
  `captcha_type` int(1) NOT NULL DEFAULT 2,
  `captcha_noise` int(3) NOT NULL DEFAULT 100,
  `captcha_linenoise` int(2) NOT NULL DEFAULT 10,
  `bancheck` int(13) NOT NULL,
  `spam_check` int(1) NOT NULL DEFAULT 0,
  `detect_language` int(1) NOT NULL DEFAULT 0,
  `spammaxposts` int(11) NOT NULL DEFAULT 0,
  `spamapiblockerror` int(1) NOT NULL DEFAULT 0,
  `date_format` varchar(255) NOT NULL DEFAULT 'd.m.Y',
  `time_format` varchar(255) NOT NULL DEFAULT 'H:i',
  `modRewrite` int(1) NOT NULL DEFAULT 0,
  `startpage` varchar(255) NOT NULL DEFAULT '',
  `ftpip` varchar(100) NOT NULL,
  `ftpport` varchar(100) NOT NULL,
  `ftppath` varchar(100) NOT NULL,
  `ftpuser` varchar(50) NOT NULL,
  `ftppw` varchar(100) NOT NULL,
  `ftpuse` varchar(4) NOT NULL DEFAULT 'ftp',
  `forum_double` int(1) NOT NULL DEFAULT 1,
  `profilelast` int(11) NOT NULL DEFAULT 10,
  `de_lang` int(1) DEFAULT 1,
  `en_lang` int(1) DEFAULT 1,
  `it_lang` int(1) DEFAULT 1,
  `pl_lang` int(1) DEFAULT 1,
  `birthday` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_settings`
--

INSERT INTO `rm_214_settings` (`settingID`, `title`, `hpurl`, `clanname`, `clantag`, `adminname`, `adminemail`, `sball`, `topics`, `posts`, `latesttopics`, `latesttopicchars`, `messages`, `register_per_ip`, `sessionduration`, `closed`, `imprint`, `default_language`, `insertlinks`, `search_min_len`, `max_wrong_pw`, `captcha_math`, `captcha_bgcol`, `captcha_fontcol`, `captcha_type`, `captcha_noise`, `captcha_linenoise`, `bancheck`, `spam_check`, `detect_language`, `spammaxposts`, `spamapiblockerror`, `date_format`, `time_format`, `modRewrite`, `startpage`, `ftpip`, `ftpport`, `ftppath`, `ftpuser`, `ftppw`, `ftpuse`, `forum_double`, `profilelast`, `de_lang`, `en_lang`, `it_lang`, `pl_lang`, `birthday`) VALUES
(1, 'Webspell-RM', 'http://214.webspell-rm.de', 'Clan Name', 'MyClan', 'T-Seven', 'info@webspell-rm.de', 30, 20, 10, 10, 18, 20, 1, 0, 0, 1, 'de', 1, 3, 10, 2, '#FFFFFF', '#000000', 2, 100, 10, 1738954973, 0, 0, 0, 0, 'd.m.Y', 'H:i', 0, 'startpage', '', '', '', '', '', 'ftp', 0, 10, 1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_settings_buttons`
--

CREATE TABLE `rm_214_settings_buttons` (
  `buttonID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `modulname` varchar(255) NOT NULL DEFAULT '',
  `active` int(11) DEFAULT NULL,
  `version` varchar(11) NOT NULL,
  `button1` varchar(255) NOT NULL DEFAULT '',
  `button2` varchar(255) NOT NULL DEFAULT '',
  `button3` varchar(255) NOT NULL DEFAULT '',
  `button4` varchar(255) NOT NULL DEFAULT '',
  `button5` varchar(255) NOT NULL DEFAULT '',
  `button6` varchar(255) NOT NULL DEFAULT '',
  `button7` varchar(255) NOT NULL DEFAULT '',
  `button8` varchar(255) NOT NULL DEFAULT '',
  `button9` varchar(255) NOT NULL DEFAULT '',
  `button10` varchar(255) NOT NULL DEFAULT '',
  `button11` varchar(255) NOT NULL DEFAULT '',
  `button12` varchar(255) NOT NULL DEFAULT '',
  `button13` varchar(255) NOT NULL DEFAULT '',
  `button14` varchar(255) NOT NULL DEFAULT '',
  `button15` varchar(255) NOT NULL DEFAULT '',
  `button16` varchar(255) NOT NULL DEFAULT '',
  `button17` varchar(255) NOT NULL DEFAULT '',
  `button18` varchar(255) NOT NULL DEFAULT '',
  `button19` varchar(255) NOT NULL DEFAULT '',
  `button20` varchar(255) NOT NULL DEFAULT '',
  `button21` varchar(255) NOT NULL DEFAULT '',
  `button22` varchar(255) NOT NULL DEFAULT '',
  `button23` varchar(255) NOT NULL DEFAULT '',
  `button24` varchar(255) NOT NULL DEFAULT '',
  `button25` varchar(255) NOT NULL DEFAULT '',
  `button26` varchar(255) NOT NULL DEFAULT '',
  `button27` varchar(255) NOT NULL DEFAULT '',
  `button28` varchar(255) NOT NULL DEFAULT '',
  `button29` varchar(255) NOT NULL DEFAULT '',
  `button30` varchar(255) NOT NULL DEFAULT '',
  `button31` varchar(255) NOT NULL DEFAULT '',
  `button32` varchar(255) NOT NULL DEFAULT '',
  `button33` varchar(255) NOT NULL DEFAULT '',
  `button34` varchar(255) NOT NULL DEFAULT '',
  `button35` varchar(255) NOT NULL DEFAULT '',
  `button36` varchar(255) NOT NULL DEFAULT '',
  `button37` varchar(255) NOT NULL DEFAULT '',
  `button38` varchar(255) NOT NULL DEFAULT '',
  `button39` varchar(255) NOT NULL DEFAULT '',
  `button40` varchar(255) NOT NULL DEFAULT '',
  `button41` varchar(255) NOT NULL DEFAULT '',
  `button42` varchar(255) NOT NULL DEFAULT '',
  `btn_border_radius` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_settings_buttons`
--

INSERT INTO `rm_214_settings_buttons` (`buttonID`, `name`, `modulname`, `active`, `version`, `button1`, `button2`, `button3`, `button4`, `button5`, `button6`, `button7`, `button8`, `button9`, `button10`, `button11`, `button12`, `button13`, `button14`, `button15`, `button16`, `button17`, `button18`, `button19`, `button20`, `button21`, `button22`, `button23`, `button24`, `button25`, `button26`, `button27`, `button28`, `button29`, `button30`, `button31`, `button32`, `button33`, `button34`, `button35`, `button36`, `button37`, `button38`, `button39`, `button40`, `button41`, `button42`, `btn_border_radius`) VALUES
(1, 'default', 'default', 1, '0.1', 'rgb(254,130,29)', 'rgb(196,89,1)', 'rgb(255,255,255)', 'rgb(254,130,29)', 'rgb(196,89,1)', 'rgb(108,117,125)', 'rgb(90,98,104)', 'rgb(255,255,255)', 'rgb(108,117,125)', 'rgb(84,91,98)', 'rgb(40,167,69)', 'rgb(33,136,56)', 'rgb(255,255,255)', 'rgb(40,167,69)', 'rgb(30,126,52)', 'rgb(220,53,69)', 'rgb(200,35,51)', 'rgb(255,255,255)', 'rgb(220,53,69)', 'rgb(189,33,48)', 'rgb(255,193,7)', 'rgb(224,168,0)', 'rgb(33,37,41)', 'rgb(255,193,7)', 'rgb(211,158,0)', 'rgb(23,162,184)', 'rgb(19,132,150)', 'rgb(255,255,255)', 'rgb(23,162,184)', 'rgb(17,122,139)', 'rgb(248,249,250)', 'rgb(226,230,234)', 'rgb(33,37,41)', 'rgb(248,249,250)', 'rgb(218,224,229)', 'rgb(52,58,64)', 'rgb(35,39,43)', 'rgb(255,255,255)', 'rgb(52,58,64)', 'rgb(29,33,36)', 'rgb(254,130,29)', 'rgb(196,89,1)', '0px'),
(10, 'Simplex', 'simplex', 1, '0.1', 'rgb(217,35,15)', 'rgb(174,28,12)', 'rgb(245,245,245)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(255,255,255)', 'rgb(182,180,180)', 'rgb(87,71,71)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(70,148,8)', 'rgb(44,92,5)', 'rgb(245,245,245)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(155,71,159)', 'rgb(109,50,112)', 'rgb(245,245,245)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(217,131,31)', 'rgb(223,154,73)', 'rgb(245,245,245)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(2,154,207)', 'rgb(1,103,138)', 'rgb(245,245,245)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(245,245,245)', 'rgb(212,211,211)', 'rgb(87,71,71)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(55,58,60)', 'rgb(104,108,112)', 'rgb(245,245,245)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(217,35,15)', 'rgb(174,28,12)', '25px'),
(11, 'Slate', 'slate', 1, '0.1', 'rgb(58,63,68)', 'rgb(49,54,58)', 'rgb(245,245,245)', 'rgb(170,170,170)', 'rgb(84,91,98)', 'rgb(122,130,136)', 'rgb(104,111,116)', 'rgb(245,245,245)', 'rgb(170,170,170)', 'rgb(84,91,98)', 'rgb(98,196,98)', 'rgb(83,167,83)', 'rgb(245,245,245)', 'rgb(170,170,170)', 'rgb(84,91,98)', 'rgb(238,95,91)', 'rgb(202,81,77)', 'rgb(245,245,245)', 'rgb(170,170,170)', 'rgb(84,91,98)', 'rgb(248,148,6)', 'rgb(211,126,5)', 'rgb(0,0,0)', 'rgb(170,170,170)', 'rgb(84,91,98)', 'rgb(91,192,222)', 'rgb(77,163,189)', 'rgb(245,245,245)', 'rgb(170,170,170)', 'rgb(84,91,98)', 'rgb(233,236,239)', 'rgb(198,201,203)', 'rgb(0,0,0)', 'rgb(170,170,170)', 'rgb(84,91,98)', 'rgb(39,43,48)', 'rgb(71,75,79)', 'rgb(245,245,245)', 'rgb(170,170,170)', 'rgb(84,91,98)', 'rgb(254,130,29)', 'rgb(196,89,1)', '0px'),
(12, 'Cyborg', 'cyborg', 1, '0.1', 'rgb(255,193,7)', 'rgb(225,171,6)', 'rgb(0,0,0)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(85,85,85)', 'rgb(149,148,148)', 'rgb(255,255,255)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(119,179,0)', 'rgb(94,140,1)', 'rgb(255,255,255)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(204,0,0)', 'rgb(173,2,2)', 'rgb(245,245,245)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(255,136,0)', 'rgb(203,109,2)', 'rgb(0,0,0)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(42,159,214)', 'rgb(19,132,150)', 'rgb(245,245,245)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(173,175,174)', 'rgb(237,237,237)', 'rgb(0,0,0)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(34,34,34)', 'rgb(152,151,151)', 'rgb(245,245,245)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(255,193,7)', 'rgb(225,171,6)', '0px'),
(13, 'Inrage', 'inrage', 1, '0.1', 'rgb(8,166,240)', 'rgb(6,143,207)', 'rgb(255,255,255)', 'rgb(148,114,100)', 'rgb(148,114,100)', 'rgb(255,255,255)', 'rgb(182,180,180)', 'rgb(87,71,71)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(70,148,8)', 'rgb(44,92,5)', 'rgb(245,245,245)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(155,71,159)', 'rgb(109,50,112)', 'rgb(245,245,245)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(217,131,31)', 'rgb(223,154,73)', 'rgb(245,245,245)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(2,154,207)', 'rgb(1,103,138)', 'rgb(245,245,245)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(245,245,245)', 'rgb(212,211,211)', 'rgb(87,71,71)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(55,58,60)', 'rgb(104,108,112)', 'rgb(245,245,245)', 'rgb(87,71,71)', 'rgb(57,47,47)', 'rgb(8,166,240)', 'rgb(6,147,213)', '0px'),
(14, 'Sandstone', 'sandstone', 1, '0.1', 'rgb(217,210,197)', 'rgb(221,221,221)', 'rgb(85,85,85)', 'rgb(140,140,140)', 'rgb(140,140,140)', 'rgb(108,117,125)', 'rgb(90,98,104)', 'rgb(255,255,255)', 'rgb(108,117,125)', 'rgb(84,91,98)', 'rgb(40,167,69)', 'rgb(33,136,56)', 'rgb(255,255,255)', 'rgb(40,167,69)', 'rgb(30,126,52)', 'rgb(220,53,69)', 'rgb(200,35,51)', 'rgb(255,255,255)', 'rgb(220,53,69)', 'rgb(189,33,48)', 'rgb(255,193,7)', 'rgb(224,168,0)', 'rgb(33,37,41)', 'rgb(255,193,7)', 'rgb(211,158,0)', 'rgb(23,162,184)', 'rgb(19,132,150)', 'rgb(255,255,255)', 'rgb(23,162,184)', 'rgb(17,122,139)', 'rgb(248,249,250)', 'rgb(226,230,234)', 'rgb(33,37,41)', 'rgb(248,249,250)', 'rgb(218,224,229)', 'rgb(52,58,64)', 'rgb(35,39,43)', 'rgb(255,255,255)', 'rgb(52,58,64)', 'rgb(29,33,36)', 'rgb(254,130,29)', 'rgb(196,89,1)', '5px'),
(22, 'Zay', 'zay', 1, '0.2', 'rgb(105,187,126)', 'rgb(84,148,101)', 'rgb(245,245,245)', 'rgb(170,170,170)', 'rgb(57,47,47)', 'rgb(108,117,125)', 'rgb(90,98,104)', 'rgb(245,245,245)', 'rgb(170,170,170)', 'rgb(57,47,47)', 'rgb(3,120,29)', 'rgb(45,181,75)', 'rgb(245,245,245)', 'rgb(170,170,170)', 'rgb(57,47,47)', 'rgb(220,53,69)', 'rgb(200,35,51)', 'rgb(245,245,245)', 'rgb(170,170,170)', 'rgb(57,47,47)', 'rgb(255,193,7)', 'rgb(224,168,0)', 'rgb(0,0,0)', 'rgb(170,170,170)', 'rgb(57,47,47)', 'rgb(23,162,184)', 'rgb(19,132,150)', 'rgb(245,245,245)', 'rgb(170,170,170)', 'rgb(57,47,47)', 'rgb(248,249,250)', 'rgb(226,230,234)', 'rgb(0,0,0)', 'rgb(170,170,170)', 'rgb(57,47,47)', 'rgb(52,58,64)', 'rgb(35,39,43)', 'rgb(245,245,245)', 'rgb(170,170,170)', 'rgb(57,47,47)', 'rgb(105,187,126)', 'rgb(84,148,101)', '5px');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_settings_games`
--

CREATE TABLE `rm_214_settings_games` (
  `gameID` int(11) NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_settings_games`
--

INSERT INTO `rm_214_settings_games` (`gameID`, `tag`, `name`) VALUES
(1, 'apex_l', 'Apex Legends'),
(2, 'ark_se', 'ARK: Survival Evolved'),
(3, 'ac', 'Assetto Corsa'),
(4, 'bf_1', 'Battlefield'),
(5, 'bf_4', 'Battlefield 4'),
(6, 'bf_5', 'Battlefield 5'),
(7, 'bd', 'Black Desert'),
(8, 'cod_mw', 'Call of Duty: Modern Warfare'),
(9, 'cod_wz', 'Call of Duty: Warzone'),
(10, 'ce', 'Conan Exiles'),
(11, 'cs_go', 'Counter-Strike: GO'),
(12, 'cs_s', 'Counter-Strike: Source'),
(13, 'dbd', 'Dead by Daylight'),
(14, 'd_2', 'Destiny 2'),
(15, 'di_3', 'Diablo III'),
(16, 'dac', 'Dota Auto Chess'),
(17, 'do_2', 'Dota 2'),
(18, 'd_ul', 'Dota Underlords'),
(19, 'teso', 'The Elder Scrolls Online'),
(20, 'f1_2020', 'F1 2020'),
(21, 'fifa_20', 'FIFA 20'),
(22, 'ff_14', 'Final Fantasy XIV'),
(23, 'fort', 'Fortnite'),
(24, 'gta_on', 'Grand Theft Auto Online'),
(25, 'gw_2', 'Guild Wars 2'),
(26, 'hs_how', 'Hearthstone: Heroes of Warcraft'),
(27, 'h_sd', 'Hunt: Showdown'),
(28, 'lol', 'League of Legends'),
(29, 'lor', 'Legends of Runeterra'),
(30, 'mc', 'Minecraft'),
(31, 'mc_d', 'Minecraft Dungeons'),
(32, 'mh_w', 'Monster Hunter: World'),
(33, 'ow', 'Overwatch'),
(34, 'poe', 'Path of Exile'),
(35, 'pd_2', 'Payday 2'),
(36, 'pubg', 'Playerunknown\'s Battlegrounds'),
(37, 'rs_s', 'Rainbow Six: Siege'),
(38, 'rd_o', 'Red Dead Online'),
(39, 'rl', 'Rocket League'),
(40, 'smi', 'Smite'),
(41, 'sc2_wol', 'StarCraft II: Wings of Liberty'),
(42, 'swbf2', 'Star Wars Battlefront II'),
(43, 'swbf1', 'Star Wars: Battlefront'),
(44, 'tf_t', 'Teamfight Tactics'),
(45, 'td2', 'The Division 2'),
(46, 'vt', 'Valorant'),
(47, 'war_f', 'Warframe'),
(48, 'wc3_roc', 'Warcraft III: Reign of Chaos'),
(49, 'wc3_ref', 'Warcraft III: Reforged'),
(50, 'wot', 'World of Tanks'),
(51, 'wow', 'World of Warcraft');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_settings_headelements`
--

CREATE TABLE `rm_214_settings_headelements` (
  `headelementID` int(11) NOT NULL,
  `banner` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `site` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modulname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text NOT NULL,
  `displayed` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_settings_headelements`
--

INSERT INTO `rm_214_settings_headelements` (`headelementID`, `banner`, `name`, `site`, `modulname`, `info`, `displayed`) VALUES
(1, '', '', '', 'startpage', '', 1),
(2, '', '', 'startpage', 'startpage', '', 0),
(3, '3.jpg', 'Datenschutz', 'privacy_policy', 'privacy_policy', '', 1),
(4, '', 'Partner', 'partners', 'partners', '', 1),
(5, '', 'Sponsoren', 'sponsors', 'sponsors', '', 1),
(6, '', 'Seitenstatistik', 'counter', '', '', 1),
(7, '', 'Newsletter', 'newsletter', '', '', 1),
(8, '', 'Über uns', 'about_us', '', '', 1),
(26, '', 'Nachrichten', 'messenger', '', '', 1),
(27, '', 'Kalender', 'calendar', '', '', 1),
(29, '', 'Links', 'links', '', '', 1),
(30, '', 'Contact', 'contact', 'contact', '', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_settings_imprint`
--

CREATE TABLE `rm_214_settings_imprint` (
  `imprintID` int(11) NOT NULL,
  `imprint` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `disclaimer_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_settings_imprint`
--

INSERT INTO `rm_214_settings_imprint` (`imprintID`, `imprint`, `disclaimer_text`) VALUES
(1, '{[de]} Impressum in deutscher Sprache.<br /><span style=\"color:#c0392b\"><strong>Konfigurieren Sie bitte Ihr Impressum!</strong></span><br />{[en]} Imprint in English.<br /><span style=\"color:#c0392b\"><strong>Please configure your imprint!</strong></span>{[it]} Impronta Editoriale in Italianoh.<br /><span style=\"color:#c0392b\"><strong>Si prega di configurare l&rsquo;impronta!</strong></span>', '{[de]} Haftungsausschluss in deutscher Sprache.<br /><span style=\"color:#c0392b\"><strong>Konfigurieren Sie bitte Ihr Haftungsausschluss! </strong></span><br />{[en]} Disclaimer in English.<br /><span style=\"color:#c0392b\"><strong>Please configure your disclaimer!</strong></span>{[it]} Dichiarazione di non ResponsabilitÃ  in Italiano.<br /><span style=\"color:#c0392b\"><strong>Si prega di configurare la Dichiarazione di non ResponsabilitÃ !</strong></span>');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_settings_languages`
--

CREATE TABLE `rm_214_settings_languages` (
  `langID` int(11) NOT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_settings_languages`
--

INSERT INTO `rm_214_settings_languages` (`langID`, `language`, `lang`, `alt`) VALUES
(1, 'danish', 'da', 'danish'),
(2, 'dutch', 'nl', 'dutch'),
(3, 'english', 'en', 'english'),
(4, 'finnish', 'fi', 'finnish'),
(5, 'french', 'fr', 'french'),
(6, 'german', 'de', 'german'),
(7, 'hungarian', 'hu', 'hungarian'),
(8, 'italian', 'it', 'italian'),
(9, 'norwegian', 'no', 'norwegian'),
(10, 'spanish', 'es', 'spanish'),
(11, 'swedish', 'sv', 'swedish'),
(12, 'czech', 'cs', 'czech'),
(13, 'croatian', 'hr', 'croatian'),
(14, 'lithuanian', 'lt', 'lithuanian'),
(15, 'polish', 'pl', 'polish'),
(16, 'portuguese', 'pt', 'portuguese'),
(17, 'slovak', 'sk', 'slovak'),
(18, 'arabic', 'ar', 'arabic'),
(19, 'bosnian', 'bs', 'bosnian'),
(20, 'estonian', 'et', 'estonian'),
(21, 'georgian', 'ka', 'georgian'),
(22, 'macedonian', 'mk', 'macedonian'),
(23, 'persian', 'fa', 'persian'),
(24, 'romanian', 'ro', 'romanian'),
(25, 'russian', 'ru', 'russian'),
(26, 'serbian', 'sr', 'serbian'),
(27, 'slovenian', 'sl', 'slovenian'),
(28, 'latvian', 'lv', 'latvian'),
(29, 'turkish', 'tr', 'turkish'),
(30, 'albanian', 'sq', 'albanian'),
(31, 'bulgarian', 'bg', 'bulgarian'),
(32, 'greek', 'el', 'greek'),
(33, 'ukrainian', 'uk', 'ukrainian'),
(34, 'luxembourgish', 'lb', 'luxembourgish'),
(35, 'afrikaans', 'af', 'afrikaans'),
(36, 'acholi', 'ac', 'acholi');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_settings_module`
--

CREATE TABLE `rm_214_settings_module` (
  `pluginID` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modulname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `themes_modulname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_activated` int(11) NOT NULL DEFAULT 0,
  `head_activated` int(11) NOT NULL,
  `content_head_activated` int(11) NOT NULL,
  `content_foot_activated` int(11) NOT NULL,
  `head_section_activated` int(11) NOT NULL,
  `foot_section_activated` int(11) NOT NULL,
  `modul_display` int(11) NOT NULL DEFAULT 0,
  `activate` int(1) DEFAULT 0,
  `sidebar` varchar(255) DEFAULT 'activated',
  `plugin_settings` int(1) DEFAULT 0,
  `plugin_module` int(1) DEFAULT 0,
  `plugin_widget` int(1) DEFAULT 0,
  `widget1` int(1) DEFAULT 0,
  `widget2` int(1) DEFAULT 0,
  `widget3` int(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_settings_module`
--

INSERT INTO `rm_214_settings_module` (`pluginID`, `name`, `modulname`, `themes_modulname`, `full_activated`, `head_activated`, `content_head_activated`, `content_foot_activated`, `head_section_activated`, `foot_section_activated`, `modul_display`, `activate`, `sidebar`, `plugin_settings`, `plugin_module`, `plugin_widget`, `widget1`, `widget2`, `widget3`) VALUES
(1, 'Startpage', '', 'default', 0, 0, 0, 0, 0, 1, 0, 1, 'activated', 0, 1, 0, 0, 0, 0),
(2, '', 'startpage', 'default', 0, 0, 0, 0, 0, 1, 1, 1, 'activated', 0, 1, 0, 0, 0, 0),
(3, 'report', 'report', 'default', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(4, 'My Profile', 'myprofile', 'default', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(5, 'Error_404', 'error_404', 'default', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(6, 'Static', 'static', 'default', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(7, 'Imprint', 'imprint', 'default', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(8, 'Privacy Policy', 'privacy_policy', 'default', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(9, 'Contact', 'contact', 'default', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(10, 'Loginoverview', 'loginoverview', 'default', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(11, 'Register', 'register', 'default', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(12, 'Lost Password', 'lostpassword', 'default', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(13, 'Login', 'login', 'default', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(14, 'Profile', 'profile', 'default', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(956, 'Partners', 'partners', 'slate', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 0),
(346, 'Footer', 'footer', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 1),
(17, 'streambox', 'streambox', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(18, 'sendeplan', 'sendeplan', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(616, 'Forum Topic', 'forum_topic', 'cyborg', 0, 0, 0, 0, 0, 0, 0, 1, 're_activated', 1, 1, 1, 1, 0, 0),
(913, 'Forum', 'forum', 'zay', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(955, 'Navigation Default Two', 'navigation_default_two', 'slate', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 0, 0),
(613, 'Footer', 'footer', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 1),
(612, 'report', 'report', 'cyborg', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(611, 'My Profile', 'myprofile', 'cyborg', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(610, 'Error_404', 'error_404', 'cyborg', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(609, 'Static', 'static', 'cyborg', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(608, 'Imprint', 'imprint', 'cyborg', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(607, 'Privacy Policy', 'privacy_policy', 'cyborg', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(606, 'Contact', 'contact', 'cyborg', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(603, 'Lost Password', 'lostpassword', 'cyborg', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(602, 'Login', 'login', 'cyborg', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(600, 'Startpage', '', 'cyborg', 0, 1, 0, 0, 1, 1, 0, 1, 'activated', 0, 1, 0, 0, 0, 0),
(601, 'Profile', 'profile', 'cyborg', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(428, 'Features Box', 'features_box', 'default', 0, 0, 0, 0, 0, 0, 1, 0, 'activated', 1, 0, 1, 1, 1, 1),
(928, 'Usergallery', 'usergallery', 'cyborg', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(929, 'News Manager', 'news_manager', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(596, 'Forum Topic', 'forum_topic', 'slate', 0, 0, 0, 0, 0, 0, 0, 1, 're_activated', 1, 1, 1, 1, 1, 1),
(595, 'About Us Box', 'about_box', 'slate', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(594, 'Footer', 'footer', 'slate', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 1),
(951, 'Navigation Default', 'navigation_default', 'simplex', 0, 0, 0, 0, 0, 0, 1, 0, 'activated', 1, 0, 1, 1, 0, 0),
(952, 'Navigation Default Two', 'navigation_default_two', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 0, 0),
(592, 'report', 'report', 'slate', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(591, 'My Profile', 'myprofile', 'slate', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(590, 'Error_404', 'error_404', 'slate', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(589, 'Static', 'static', 'slate', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(924, 'Streams', 'streams', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(925, 'Streams', 'streams', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(690, 'Partners', 'partners', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 0),
(363, 'Sponsors', 'sponsors', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(954, 'Navigation Default', 'navigation_default', 'slate', 0, 0, 0, 0, 0, 0, 1, 0, 'activated', 1, 0, 1, 1, 0, 0),
(381, 'Members List', 'memberslist', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(429, 'Features', 'features', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 1),
(383, 'Videos', 'videos', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(384, 'Usergallery', 'usergallery', 'default', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(905, 'Gallery', 'gallery', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(376, 'Forum Topic', 'forum_topic', 'default', 0, 0, 0, 0, 0, 0, 0, 1, 're_activated', 0, 0, 0, 0, 0, 0),
(912, 'Messenger', 'messenger', 'zay', 0, 0, 0, 0, 0, 0, 1, 0, 'activated', 1, 0, 0, 0, 0, 0),
(387, 'Files', 'files', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(388, 'Parallax Header', 'parallax', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 0, 0),
(390, 'Textslider', 'textslider', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 0),
(599, '', 'startpage', 'cyborg', 0, 1, 0, 0, 1, 1, 1, 1, 'activated', 0, 1, 0, 0, 0, 0),
(588, 'Imprint', 'imprint', 'slate', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(586, 'Contact', 'contact', 'slate', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(587, 'Privacy Policy', 'privacy_policy', 'slate', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(585, 'Loginoverview', 'loginoverview', 'slate', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(584, 'Register', 'register', 'slate', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(583, 'Lost Password', 'lostpassword', 'slate', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(581, 'Profile', 'profile', 'slate', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(582, 'Login', 'login', 'slate', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(580, 'Startpage', '', 'slate', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 1, 0, 0, 0, 0),
(579, '', 'startpage', 'slate', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 0, 1, 0, 0, 0, 0),
(578, 'User Rights', 'userrights', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 0, 0, 0, 0),
(577, 'Articles', 'articles', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(576, 'Members List', 'memberslist', 'simplex', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(575, 'Features', 'features', 'simplex', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 1),
(574, 'Blog', 'blog', 'simplex', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 0),
(927, 'Gallery', 'gallery', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(923, 'Twitter', 'twitter', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(570, 'Forum Topic', 'forum_topic', 'simplex', 0, 0, 0, 0, 0, 0, 0, 1, 're_activated', 1, 1, 1, 1, 1, 1),
(571, 'Sponsors', 'sponsors', 'simplex', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(569, 'About Us Box', 'about_box', 'simplex', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(953, 'Navigation Default Two', 'navigation_default_two', 'simplex', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 0, 0),
(567, 'Footer', 'footer', 'simplex', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 1),
(566, 'report', 'report', 'simplex', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(565, 'My Profile', 'myprofile', 'simplex', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(564, 'Error_404', 'error_404', 'simplex', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(563, 'Static', 'static', 'simplex', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(562, 'Imprint', 'imprint', 'simplex', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(561, 'Privacy Policy', 'privacy_policy', 'simplex', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(560, 'Contact', 'contact', 'simplex', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(559, 'Loginoverview', 'loginoverview', 'simplex', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(558, 'Register', 'register', 'simplex', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(553, '', 'startpage', 'simplex', 0, 1, 0, 0, 0, 1, 1, 1, 'activated', 0, 1, 0, 0, 0, 0),
(554, 'Startpage', '', 'simplex', 0, 1, 0, 0, 0, 1, 0, 1, 'activated', 0, 1, 0, 0, 0, 0),
(555, 'Profile', 'profile', 'simplex', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(556, 'Login', 'login', 'simplex', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(557, 'Lost Password', 'lostpassword', 'simplex', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(714, 'Members List', 'memberslist', 'sandstone', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(713, 'Blog', 'blog', 'sandstone', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 0),
(926, 'About Us', 'about_us', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'full_activated', 1, 1, 1, 1, 1, 1),
(922, 'Discord', 'discord', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(710, 'Sponsors', 'sponsors', 'sandstone', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(709, 'Forum Topic', 'forum_topic', 'sandstone', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 1, 1, 1, 1, 1, 1),
(708, 'About Us Box', 'about_box', 'sandstone', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(941, 'Navigation Agency', 'navigation_agency', 'default', 0, 0, 0, 0, 0, 0, 1, 0, 'activated', 1, 0, 1, 1, 0, 0),
(706, 'Footer', 'footer', 'sandstone', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 1),
(705, 'report', 'report', 'sandstone', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(704, 'My Profile', 'myprofile', 'sandstone', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(703, 'Error_404', 'error_404', 'sandstone', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(702, 'Static', 'static', 'sandstone', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(701, 'Imprint', 'imprint', 'sandstone', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(700, 'Privacy Policy', 'privacy_policy', 'sandstone', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(699, 'Contact', 'contact', 'sandstone', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(698, 'Loginoverview', 'loginoverview', 'sandstone', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(697, 'Register', 'register', 'sandstone', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(696, 'Lost Password', 'lostpassword', 'sandstone', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(695, 'Login', 'login', 'sandstone', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(694, 'Profile', 'profile', 'sandstone', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(693, 'Startpage', '', 'sandstone', 0, 1, 0, 0, 0, 1, 0, 1, 'activated', 0, 1, 0, 0, 0, 0),
(692, '', 'startpage', 'sandstone', 0, 1, 0, 0, 0, 1, 1, 1, 'activated', 0, 1, 0, 0, 0, 0),
(691, 'Partners', 'partners', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 0),
(684, 'Servers', 'servers', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(683, 'Servers', 'servers', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(682, 'Counter', 'counter', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(681, 'Links', 'links', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 0, 0, 0, 0),
(680, 'Links', 'links', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 0, 0, 0, 0),
(676, 'Features', 'features', 'inrage', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 1),
(675, 'Features Box', 'features_box', 'inrage', 0, 0, 0, 0, 0, 0, 1, 0, 'activated', 1, 0, 1, 1, 1, 1),
(674, 'Textslider', 'textslider', 'inrage', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 0),
(673, 'Members List', 'memberslist', 'inrage', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(672, 'Blog', 'blog', 'inrage', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 0),
(920, 'Discord', 'discord', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(921, 'Twitter', 'twitter', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(670, 'Sponsors', 'sponsors', 'inrage', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(669, 'Forum Topic', 'forum_topic', 'inrage', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 1, 1, 1, 1, 1, 1),
(668, 'About Us Box', 'about_box', 'inrage', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(678, 'TS3-Viewer', 'ts3viewer', 'inrage', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(666, 'Counter', 'counter', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(665, 'Messenger', 'messenger', 'inrage', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 0, 0, 0, 0),
(950, 'Navigation Default', 'navigation_default', 'default', 0, 0, 0, 0, 0, 0, 1, 0, 'activated', 1, 0, 1, 1, 0, 0),
(663, 'Footer', 'footer', 'inrage', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 1),
(677, 'TS3-Viewer', 'ts3viewer', 'default', 0, 0, 0, 0, 0, 0, 1, 0, 'activated', 1, 1, 1, 1, 0, 0),
(660, 'Counter', 'counter', 'inrage', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(916, 'Carousel', 'carousel', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 0),
(689, 'Polls', 'polls', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(657, 'report', 'report', 'inrage', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(656, 'My Profile', 'myprofile', 'inrage', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(655, 'Error_404', 'error_404', 'inrage', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(654, 'Static', 'static', 'inrage', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(653, 'Imprint', 'imprint', 'inrage', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(652, 'Privacy Policy', 'privacy_policy', 'inrage', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(651, 'Contact', 'contact', 'inrage', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(650, 'Loginoverview', 'loginoverview', 'inrage', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(649, 'Register', 'register', 'inrage', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(648, 'Lost Password', 'lostpassword', 'inrage', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(647, 'Login', 'login', 'inrage', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(646, 'Profile', 'profile', 'inrage', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(645, '', 'startpage', 'inrage', 1, 1, 0, 0, 0, 1, 1, 1, 'activated', 0, 1, 0, 0, 0, 0),
(644, 'Startpage', '', 'inrage', 0, 1, 0, 0, 0, 1, 1, 1, 'activated', 0, 1, 0, 0, 0, 0),
(643, 'Textslider', 'textslider', 'simplex', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 0),
(642, 'Calendar', 'calendar', 'simplex', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 0),
(641, 'Calendar', 'calendar', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 0),
(638, 'Articles', 'articles', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(915, 'Messenger', 'messenger', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 0, 'activated', 1, 0, 0, 0, 0, 0),
(636, 'Files', 'files', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(687, 'Calendar', 'calendar', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 0),
(688, 'Polls', 'polls', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(911, 'News Manager', 'news_manager', 'zay', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(910, 'News Manager', 'news_manager', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(909, 'Forum Topic', 'forum_topic', 'zay', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 1, 1, 1, 1, 1, 1),
(632, 'Files', 'files', 'slate', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(631, 'Files', 'files', 'simplex', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(906, 'Forum', 'forum', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(629, 'Textslider', 'textslider', 'slate', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 0),
(628, 'Features', 'features', 'slate', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 1),
(627, 'Members List', 'memberslist', 'slate', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(626, 'Blog', 'blog', 'slate', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 0),
(624, 'Sponsors', 'sponsors', 'slate', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(623, 'Textslider', 'textslider', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 0),
(918, 'Portfolio', 'portfolio', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 0),
(919, 'Videos', 'videos', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(621, 'Sponsors', 'sponsors', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(620, 'Blog', 'blog', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 0),
(619, 'Members List', 'memberslist', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0),
(618, 'Features', 'features', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 1),
(617, 'About Us Box', 'about_box', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(605, 'Loginoverview', 'loginoverview', 'cyborg', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(604, 'Register', 'register', 'cyborg', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(371, 'Blog', 'blog', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 0),
(354, 'Messenger', 'messenger', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 0, 0, 0, 0),
(361, 'About Us Box', 'about_box', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(837, 'About Us', 'about_us', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(715, 'Textslider', 'textslider', 'sandstone', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 0),
(716, 'Features', 'features', 'sandstone', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 1),
(934, 'Carousel', 'carousel', 'simplex', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 0),
(932, 'About Us', 'about_us', 'simplex', 0, 0, 0, 0, 0, 0, 1, 1, 'le_activated', 1, 1, 1, 1, 1, 1),
(933, 'Portfolio', 'portfolio', 'simplex', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 0),
(931, 'Newsletter', 'newsletter', 'cyborg', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(930, 'Newsletter', 'newsletter', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(899, 'Usergallery', 'usergallery', 'default', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(901, 'Usergallery', 'usergallery', 'default', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(904, 'Usergallery', 'usergallery', 'default', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(917, 'Portfolio', 'portfolio', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 0),
(893, 'Sponsors', 'sponsors', 'zay', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1),
(914, 'Carousel', 'carousel', 'default', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 0),
(890, 'Footer', 'footer', 'zay', 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 1),
(889, 'report', 'report', 'zay', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(888, 'My Profile', 'myprofile', 'zay', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(887, 'Error_404', 'error_404', 'zay', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(886, 'Static', 'static', 'zay', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(885, 'Imprint', 'imprint', 'zay', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(884, 'Privacy Policy', 'privacy_policy', 'zay', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(883, 'Contact', 'contact', 'zay', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(882, 'Loginoverview', 'loginoverview', 'zay', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(881, 'Register', 'register', 'zay', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(880, 'Lost Password', 'lostpassword', 'zay', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(879, 'Login', 'login', 'zay', 1, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(878, 'Profile', 'profile', 'zay', 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 0, 0, 0, 0, 0, 0),
(877, '', 'startpage', 'zay', 0, 1, 0, 1, 0, 0, 1, 1, 'activated', 0, 1, 0, 0, 0, 0),
(876, 'Startpage', '', 'zay', 0, 1, 0, 1, 0, 0, 0, 1, 'activated', 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_settings_plugins`
--

CREATE TABLE `rm_214_settings_plugins` (
  `pluginID` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modulname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `admin_file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `activate` int(1) NOT NULL DEFAULT 1,
  `author` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `index_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hiddenfiles` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `widgetname1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `widgetname2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `widgetname3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `widget_link1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `widget_link2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `widget_link3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `modul_display` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_settings_plugins`
--

INSERT INTO `rm_214_settings_plugins` (`pluginID`, `name`, `modulname`, `info`, `admin_file`, `activate`, `author`, `website`, `index_link`, `hiddenfiles`, `version`, `path`, `widgetname1`, `widgetname2`, `widgetname3`, `widget_link1`, `widget_link2`, `widget_link3`, `modul_display`) VALUES
(1, 'Startpage', '', 'STARTPAGE Hier kannst du die Einstellung für deine Startseite vornehmen!!!', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', 1),
(2, '', 'startpage', 'Kein Plugin. Bestandteil vom System!!!', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(3, 'Privacy Policy', 'privacy_policy', 'Kein Plugin. Bestandteil vom System!!!', '', 1, '', '', 'privacy_policy', '', '', '', '', '', '', '', '', '', 0),
(4, 'Imprint', 'imprint', 'Kein Plugin. Bestandteil vom System!!!', '', 1, '', '', 'imprint', '', '', '', '', '', '', '', '', '', 0),
(5, 'Static', 'static', 'Kein Plugin. Bestandteil vom System!!!', '', 1, '', '', 'static', '', '', '', '', '', '', '', '', '', 0),
(6, 'Error_404', 'error_404', 'Kein Plugin. Bestandteil vom System!!!', '', 1, '', '', 'error_404', '', '', '', '', '', '', '', '', '', 0),
(7, 'Profile', 'profile', 'Kein Plugin. Bestandteil vom System!!!', '', 1, '', '', 'profile', '', '', '', '', '', '', '', '', '', 0),
(8, 'Login', 'login', 'Kein Plugin. Bestandteil vom System!!!', '', 1, '', '', 'login', '', '', '', '', '', '', '', '', '', 0),
(9, 'Lost Password', 'lostpassword', 'Kein Plugin. Bestandteil vom System!!!', '', 1, '', '', 'lostpassword', '', '', '', '', '', '', '', '', '', 0),
(10, 'Contact', 'contact', 'Kein Plugin. Bestandteil vom System!!!', '', 1, '', '', 'contact', '', '', '', '', '', '', '', '', '', 0),
(11, 'Register', 'register', 'Kein Plugin. Bestandteil vom System!!!', '', 1, '', '', 'register', '', '', '', '', '', '', '', '', '', 0),
(12, 'My Profile', 'myprofile', 'Kein Plugin. Bestandteil vom System!!!', '', 1, '', '', 'myprofile', '', '', '', '', '', '', '', '', '', 0),
(13, 'Report', 'report', 'Kein Plugin. Bestandteil vom System!!!', '', 1, '', '', 'report', '', '', '', '', '', '', '', '', '', 0),
(207, 'Navigation Default Two', 'navigation_default_two', '{[de]}Mit diesem Plugin könnt ihr euch die Default Navigation anzeigen lassen.{[en]}With this plugin you can display the default navigation. ', '', 1, 'T-Seven', 'https://webspell-rm.de', '', '', '0.1', 'includes/plugins/navigation_default_two/', 'Navigation Default Two', '', '', 'widget_navigation_default_two', '', '', 1),
(73, 'Footer', 'footer', '{[de]}Mit diesem Plugin könnt ihr einen neuen Footer anzeigen lassen.{[en]}With this plugin you can have a new Footer displayed.', 'admin_footer', 1, 'T-Seven', 'https://webspell-rm.de', 'admin_footer', '', '0.1', 'includes/plugins/footer/', 'Default Footer Content', 'Easy Footer Content', 'Plugin_footer Content', 'widget_default_footer_content', 'widget_easyfooter_content', 'widget_plugin_footer_content', 1),
(16, 'streambox', 'streambox', '', '', 1, '', '', 'streambox', '', '', 'includes/plugins/streambox/', '', '', '', '', '', '', 1),
(17, 'sendeplan', 'sendeplan', '', '', 1, '', '', 'sendeplan,wunschbox', '', '', 'includes/plugins/sendeplan/', '', '', '', '', '', '', 1),
(81, 'Messenger', 'messenger', '{[de]}Mit diesem Plugin könnt ihr den Messenger auf eurer Webseiten anzeigen lassen.{[en]}With this plugin you can display the messenger on your website.', '', 1, 'T-Seven', 'https://webspell-rm.de', 'messenger', '', '0.1', 'includes/plugins/messenger/', '', '', '', '', '', '', 1),
(98, 'Blog', 'blog', '{[de]}Mit diesem Plugin könnt ihr eure Blogs anzeigen lassen.{[en]}With this plugin you can display your blogs. {[it]}Con questo plugin è possibile visualizzareun Blog', 'admin_blog', 1, 'T-Seven', 'https://webspell-rm.de', 'blog,blog_comments', '', '0.2', 'includes/plugins/blog/', 'Blog Sidebar', 'Blog Content', '', 'widget_blog_sidebar', 'widget_blog_content', '', 1),
(88, 'About Us Box', 'about_box', '{[de]}Dieses Widget zeigt die About Us Box auf Ihrer Webspell-RM-Seite an.{[en]}This widget displays the About Us Box on your Webspell RM page.{[it]}Questo widget visualizza la casella Chi siamo nella tua pagina Webspell RM.', '', 1, 'T-Seven', 'https://webspell-rm.de', '', '', '0.1', 'includes/plugins/about_box/', 'About Us Box', 'About Sponsor Content', 'About Us Box Content', 'widget_about_us_box', 'widget_about_sponsor_content', 'widget_about_us_box_content', 1),
(177, 'About Us', 'about_us', '{[de]}Dieses Widget zeigt allgemeine Informationen (kleiner Lebenslauf) über Sie auf Ihrer Webspell-RM-Seite an.{[en]}This widget will show general information (small resume) About You on your Webspell-RM site.{[it]}Questo widget mostrerà informazioni generali (piccolo curriculum) su di te sul tuo sito Webspell-RM.', 'admin_about_us', 1, 'T-Seven', 'https://webspell-rm.de', 'about_us,admin_about_us', '', '0.1', 'includes/plugins/about_us/', 'About Us Sidebar', 'About Us Content', 'About Us Sidebar Verdux', 'widget_about_us_sidebar', 'widget_about_us_content', 'widget_about_us_sidebar_verdux', 1),
(187, 'Usergallery', 'usergallery', 'Bestandteil vom Forum!!!', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(188, 'Gallery', 'gallery', '{[de]}Mit diesem Plugin könnt ihr eure die Galerie anzeigen lassen.{[en]}With this plugin you can display your gallery. ', 'admin_gallery', 1, 'T-Seven', 'https://webspell-rm.de', 'gallery,gallery_rating,usergallery', '', '0.1', 'includes/plugins/gallery/', 'Gallery Sidebar', '', '', 'widget_gallery_sidebar', '', '', 1),
(196, 'Streams', 'streams', '{[de]}Mit diesem Plugin können die Streams von Twitch, Youtube und Dailymotion auf der Webseite angezeigt werden. Jedoch ist in der aktuellen Version 1.0 nur das hinzufügen von Twitch Streams möglich.', 'admin_streams', 1, 'T-Seven', 'https://webspell-rm.de', 'streams,admin_streams', '', '0.1', 'includes/plugins/streams/', 'Streams Content', '', '', 'widget_streams_content', '', '', 1),
(192, 'Carousel', 'carousel', '{[de]}Webspell-RM Carousel ist das leistungsstärkste und benutzerfreundlichste Webspell-RM Carousel-Plugin zum Erstellen schöner Karussells mit Bildern. Mit diesem Plugin können Sie einfach Bilder hochladen und auswählen. Es ist vollständig reaktionsschnell, hochgradig anpassbar und funktioniert reibungslos auf iPhone, iPad, Android, Firefox, Chrome, Safari, Opera und Edge.{[en]}Webspell-RM Carousel is the most powerful and easy-to-use Webspell-RM Carousel plugin to create beautiful carousels with images. With this plugin you can easily upload and select images. It`s fully responsive, highly customizable, and works seamlessly on iPhone, iPad, Android, Firefox, Chrome, Safari, Opera, and Edge.{[it]}Webspell-RM Carousel è il plug-in Webspell-RM Carousel più potente e facile da usare per creare splendidi caroselli con immagini. Con questo plugin puoi caricare e selezionare facilmente le immagini. È completamente reattivo, altamente personalizzabile e funziona perfettamente su iPhone, iPad, Android, Firefox, Chrome, Safari, Opera ed Edge.', 'admin_carousel', 1, 'T-Seven', 'https://webspell-rm.de', 'admin_carousel', '', '0.1', 'includes/plugins/carousel/', 'Carousel Only', 'Carousel Crossfade', '', 'widget_carousel_only', 'widget_carousel_crossfade', '', 1),
(191, 'News Manager', 'news_manager', '{[de]}News Manager ist ein komplettes News-Management-Plugin für Webspell-RM. Es ermöglicht Ihnen das Hinzufügen, Verwalten und Anzeigen von Nachrichten auf Ihrer Webspell-RM-Seite, einschließlich Datumsarchiven, Nachrichtenkategorien, Nachrichtentags und mehreren Nachrichten-Widgets.{[en]}News Manager is a complete news management plugin for Webspell RM. It allows you to add, manage and view news on your Webspell RM page including date archives, news categories, news tags and multiple news widgets.{[it]}News Manager è un plug-in completo di gestione delle notizie per Webspell RM. Ti consente di aggiungere, gestire e visualizzare le notizie sulla tua pagina Webspell RM inclusi archivi di date, categorie di notizie, tag di notizie e più widget di notizie.', 'admin_news_manager', 1, 'T-Seven', 'https://webspell-rm.de', 'news_manager,news_archive,news_comments,news_contents', '', '0.1', 'includes/plugins/news_manager/', 'News Content', 'News Headlines', 'News Headlines 2', 'widget_news_content', 'widget_news_headlines', 'widget_news_headlines_2', 1),
(108, 'Members List', 'memberslist', '{[de]}Mit diesem Plugin könnt ihr Mitglieder in Teams anzeigen lassen.{[en]}With this plugin you can display members in teams. ', '', 1, 'T-Seven', 'https://webspell-rm.de', 'memberslist', '', '0.2', 'includes/plugins/memberslist/', 'Memberlist cintent', '', '', 'widget_memberslist_content', '', '', 1),
(146, 'Features', 'features', '{[de]}Mit diesem Plugin könnt ihr eure Features anzeigen lassen.{[en]}With this plugin you can display your Features.', 'admin_features', 1, 'T-Seven', 'https://webspell-rm.de', '', '', '0.1', 'includes/plugins/features/', 'Features One Content', '', '', 'widget_features_one_content', '', '', 1),
(158, 'Articles', 'articles', '{[de]}Mit diesem Plugin könnt ihr eure Articles anzeigen lassen.{[en]}With this plugin you can display your articles.{[it]}Con questo plugin è possibile mostrare le Articles sul sito web.', 'admin_articles', 1, 'T-Seven', 'https://webspell-rm.de', 'articles,articles_rating,articles_comments', '', '0.2', 'includes/plugins/articles/', 'Articles Sidebar', '', '', 'widget_articles_sidebar', '', '', 1),
(110, 'Videos', 'videos', '{[de]}Mit diesem Plugin könnt ihr Videos anzeigen lassen.{[en]}With this plugin you can display videos. ', 'admin_videos', 1, 'T-Seven', 'https://webspell-rm.de', 'admin_videos,videos,videos_comments,videos_rating', '', '0.2', 'includes/plugins/videos/', 'Videos Sidebar', 'Videos Content', 'Videos Sidebar Zufall-Video', 'widget_videos_sidebar', 'widget_videos_content', 'widget_videos_sidebar_coincidence', 1),
(195, 'Twitter', 'twitter', '{[de]}Mit diesem Plugin könnt ihr eure twitter tweets anzeigen lassen.{[en]}With this plugin you can have your twitter tweets displayed.', 'admin_twitter', 1, 'T-Seven', 'https://webspell-rm.de', 'twitter,admin_twitter', '', '0.1', 'includes/plugins/twitter/', 'Twitter Sidebar', '', '', 'widget_twitter_sidebar', '', '', 1),
(103, 'Forum Topic', 'forum_topic', 'Bestandteil vom Forum!!!', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(189, 'Forum', 'forum', '{[de]}Mit diesem Plugin könnt ihr euch das Forum anzeigen lassen.{[en]}With this plugin you can display the forum.', 'admin_forum', 1, 'T-Seven', 'https://webspell-rm.de', 'forum,forum_topic', '', '0.1', 'includes/plugins/forum/', 'Forum Sidebar', '', '', 'widget_forum_sidebar', '', '', 1),
(115, 'Files', 'files', '{[de]}Mit diesem Plugin könnt ihr eure Files anzeigen lassen.{[en]}With this plugin you can display your files. ', 'admin_files', 1, 'T-Seven', 'https://webspell-rm.de', 'admin_files,files,files_rating', '', '0.2', 'includes/plugins/files/', 'Files Sidebar', '', '', 'widget_files_sidebar', '', '', 1),
(116, 'Parallax Header', 'parallax', '{[de]}Mit diesem Plugin könnt ihr einen Header mit Parallax Effekt einbinden.{[en]}With this plugin you can display your header with an parallax effect.', 'admin_parallaxheader', 1, 'Argu', 'https://www.2one-designs.de', '', '', '0.1', 'includes/plugins/parallax_header/', 'Parallax Header', '', '', 'widget_parallax_header', '', '', 1),
(118, 'Textslider', 'textslider', '{[de]}Mit diesem Plugin könnt ihr euer Text Slider zu Webseiten anzeigen lassen.{[en]}With this plugin you can show your textslider to websites.', 'admin_textslider', 1, 'T-Seven', 'https://webspell-rm.de', '', '', '0.1', 'includes/plugins/textslider/', 'Textslider Content', 'Textslider Content Two', '', 'widget_textslider_content', 'widget_textslider_content_two', '', 1),
(143, 'Features Box', 'features_box', '{[de]}Mit diesem Plugin könnt ihr eure Features anzeigen lassen.{[en]}With this plugin you can display your Features.', 'admin_features_box', 1, 'T-Seven', 'https://webspell-rm.de', '', '', '0.2', 'includes/plugins/features_box/', 'Features One Box Content', 'Features Two Box Content', 'Features Three Box Content', 'widget_features_box_one_content', 'widget_features_box_two_content', 'widget_features_box_three_content', 1),
(197, 'Newsletter', 'newsletter', '{[de]}Mit diesem Plugin könnt ihr eure den Newsletter anzeigen lassen.{[en]}With this plugin you can display your newsletter.', 'admin_newsletter', 1, 'T-Seven', 'https://webspell-rm.de', 'newsletter', '', '0.2', 'includes/plugins/newsletter/', 'Newsletter Sidebar', 'Newsletter Content', 'Newsletter Box', 'widget_newsletter_sidebar', 'widget_newsletter_content', 'widget_newsletter_box', 1),
(194, 'Discord', 'discord', '{[de]}Mit diesem Plugin könnt ihr ein discord Fenster auf der Webseite anzeigen lassen.{[it]}Con questo plugin è possibile mostrare Discord sul sito web.', 'admin_discord', 1, 'T-Seven', 'https://webspell-rm.de', 'discord', '', '0.1', 'includes/plugins/discord/', 'Discord Sidebar', '', '', 'widget_discord_sidebar', '', '', 1),
(193, 'Portfolio', 'portfolio', '{[de]}Mit diesem Plugin könnt ihr Portfolio anzeigen lassen.{[en]}With this plugin you can display your portfolio. ', 'admin_portfolio', 1, 'T-Seven', 'https://webspell-rm.de', 'admin_portfolio,portfolio', '', '0.2', 'includes/plugins/portfolio/', 'Portfolio Content', 'Portfolio Content Two', '', 'widget_portfolio_content', 'widget_portfolio_content_two', '', 1),
(174, 'Sponsors', 'sponsors', '{[de]}Mit diesem Plugin könnt ihr eure Sponsoren anzeigen lassen.{[en]}With this plugin you can display your sponsors.', 'admin_sponsors', 1, 'T-Seven', 'https://webspell-rm.de', 'sponsors,admin_sponsors', '', '0.2', 'includes/plugins/sponsors/', 'Sponsors Sidebar', 'Sponsors Content One', 'Sponsors Content Two', 'widget_sponsors_sidebar', 'widget_sponsors_content_one', 'widget_sponsors_content_two', 1),
(159, 'User Rights', 'userrights', '{[de]}Mit diesem Plugin könnt ihr euch die Rechte der User anzeigen lassen.{[en]}With this plugin you can display the rights of the users. ', 'admin_userrights', 1, 'T-Seven', 'https://webspell-rm.de', 'admin_userrights', '', '0.2', 'includes/plugins/userrights/', '', '', '', '', '', '', 1),
(161, 'Calendar', 'calendar', '{[de]}Mit diesem Plugin könnt ihr euer Kalender zu Webseiten anzeigen lassen.{[en]}With this plugin you can show your calendar to websites.{[it]}Con questo plugin è possibile mostrare il Calendario sul sito web.', 'admin_calendar', 1, 'T-Seven', 'https://webspell-rm.de', 'calendar,admin_calendar', '', '0.2', 'includes/plugins/calendar/', 'Calendar Sidebar', 'Upcoming Sidebar', '', 'widget_calendar_sidebar', 'widget_upcoming_sidebar', '', 1),
(162, 'Counter', 'counter', '{[de]}Mit diesem Plugin könnt ihr euch den Counter anzeigen lassen.{[it]}Con questo plugin è possibile mostrare i Contatori sul sito web.', '', 1, 'T-Seven', 'https://webspell-rm.de', 'counter', '', '0.2', 'includes/plugins/counter/', 'Counter Sidebar', '', '', 'widget_counter_sidebar', '', '', 1),
(164, 'TS3-Viewer', 'ts3viewer', '{[de]}Mit diesem Plugin könnt ihr euren Teamspeak 3 Viewer anzeigen lassen.{[en]}With this plugin you can display your Teamspeak 3 Viewer.', 'admin_ts3viewer', 1, 'T-Seven', 'https://webspell-rm.de', 'admin_ts3viewer', '', '0.2', 'includes/plugins/ts3viewer/', 'TS3-Viewer Content', '', '', 'widget_ts3viewer_content', '', '', 1),
(165, 'Links', 'links', '{[de]}Mit diesem Plugin könnt ihr eure Links anzeigen lassen.{[en]}With this plugin you can display your links. ', 'admin_links', 1, 'T-Seven', 'https://webspell-rm.de', 'links,admin_links,links_rating', '', '0.1', 'includes/plugins/links/', '', '', '', '', '', '', 1),
(166, 'Servers', 'servers', '{[de]}Mit diesem Plugin könnt ihr eure Server anzeigen lassen.{[en]}With this plugin you can display your servers.', 'admin_servers', 1, 'T-Seven', 'https://webspell-rm.de', 'servers,sc_servers,admin_servers', '', '0.2', 'includes/plugins/servers/', 'Servers Sidebar', '', '', 'widget_servers_sidebar', '', '', 1),
(168, 'Polls', 'polls', '{[de]}Mit diesem Plugin könnt ihr eure Umfragen anzeigen lassen.{[en]}With this plugin you can have your surveys displayed.', 'admin_polls', 1, 'T-Seven', 'https://webspell-rm.de', 'polls,polls_comments', '', '0.1', 'includes/plugins/polls/', 'Polls Sidebar', '', '', 'widget_polls_sidebar', '', '', 1),
(169, 'Partners', 'partners', '{[de]}Mit diesem Plugin könnt ihr eure Partner mit Slider und Page anzeigen lassen.{[en]}With this plugin you can display your partners with slider and page.', 'admin_partners', 1, 'T-Seven', 'https://webspell-rm.de', 'partners,admin_partners', '', '0.1', 'includes/plugins/partners/', 'Partners Sidebar', 'Partners Content', '', 'widget_partners_sidebar', 'widget_partners_content', '', 1),
(201, 'Navigation Agency', 'navigation_agency', '{[de]}Mit diesem Plugin könnt ihr euch die Navigation Agency anzeigen lassen.{[en]}With this plugin you can display the navigation Agency. ', 'admin_navigation_agency', 1, 'T-Seven', 'https://webspell-rm.de', '', '', '0.1', 'includes/plugins/navigation_agency/', 'Navigation Agency', '', '', 'widget_navigation_agency', '', '', 1),
(206, 'Navigation Default', 'navigation_default', '{[de]}Mit diesem Plugin könnt ihr euch die Default Navigation anzeigen lassen.{[en]}With this plugin you can display the default navigation. ', '', 1, 'T-Seven', 'https://webspell-rm.de', '', '', '0.1', 'includes/plugins/navigation_default/', 'Navigation Default', '', '', 'widget_navigation_default', '', '', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_settings_privacy_policy`
--

CREATE TABLE `rm_214_settings_privacy_policy` (
  `privacy_policyID` int(11) NOT NULL,
  `date` int(14) NOT NULL,
  `privacy_policy_text` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_settings_privacy_policy`
--

INSERT INTO `rm_214_settings_privacy_policy` (`privacy_policyID`, `date`, `privacy_policy_text`) VALUES
(1, 1576689811, '{[de]} Datenschutz-Bestimmungen in deutscher Sprache.<br /><span style=\"color:#c0392b\"><strong>Konfigurieren Sie bitte Ihre Datenschutz-Bestimmungen!</strong></span><br />{[en]} Privacy Policy in English.<br /><span style=\"color:#c0392b\"><strong>Please configure your Privacy Policy!</strong></span>{[it]} Informativa sulla privacy in Italiano.<br /><span style=\"color:#c0392b\"><strong>Si prega di configurare l&rsquo;Informativa sulla Privacy!</strong></span>');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_settings_recaptcha`
--

CREATE TABLE `rm_214_settings_recaptcha` (
  `activated` int(11) NOT NULL DEFAULT 0,
  `webkey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seckey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_settings_recaptcha`
--

INSERT INTO `rm_214_settings_recaptcha` (`activated`, `webkey`, `seckey`) VALUES
(0, 'Web-Key', 'Sec-Key');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_settings_social_media`
--

CREATE TABLE `rm_214_settings_social_media` (
  `socialID` int(11) NOT NULL,
  `twitch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vine` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `flickr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `since` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gametracker` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discord` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `steam` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_settings_social_media`
--

INSERT INTO `rm_214_settings_social_media` (`socialID`, `twitch`, `facebook`, `twitter`, `youtube`, `rss`, `vine`, `flickr`, `linkedin`, `instagram`, `since`, `gametracker`, `discord`, `steam`) VALUES
(1, 'https://www.twitch.tv/pulsradiocom', 'https://www.facebook.com/WebspellRM', 'https://twitter.com/webspell_rm', 'https://www.youtube.com/channel/UCE5yTn9ljzSnC_oMp9Jnckg', '-', '-', '-', '-', '-', '2023', '85.14.228.228:28960', '428995618971582473', '-');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_settings_startpage`
--

CREATE TABLE `rm_214_settings_startpage` (
  `pageID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `startpage_text` longtext NOT NULL,
  `date` int(14) NOT NULL,
  `displayed` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_settings_startpage`
--

INSERT INTO `rm_214_settings_startpage` (`pageID`, `title`, `startpage_text`, `date`, `displayed`) VALUES
(1, '{[de]}Willkommen zu Webspell | RM{[en]}Welcome to Webspell | RM{[pl]}Witamy w Webspell | RM', '<!-- Page Content -->\r\n<div class=\"container\"><!-- Jumbotron Header -->\r\n<h1>Webspell RM!</h1>\r\n\r\n<p>{[de]}</p>\r\n\r\n<p><strong><u>Was ist Webspell RM?</u></strong><br />\r\n<br />\r\nWebspell RM ist ein Clan &amp; Gamer CMS (<em>Content Management System</em>). Es basiert auf PHP, MySQL und der letzten webSPELL.org GitHub Version (4.3.0). Webspell RM l&auml;uft unter der General Public License. Siehe auch <a href=\"http://wiki.webspell-rm.de/index.php?site=static&amp;staticID=4\" target=\"_blank\">Lizenzvereinbarung</a>.</p>\r\n\r\n<p style=\"text-align:center\"><a class=\"btn btn-info\" href=\"http://demo.webspell-rm.de/\" rel=\"noopener\" role=\"button\" target=\"_blank\"><strong><u>WEBSPELL RM DEMO</u></strong></a> <a class=\"btn btn-success\" href=\"https://webspell-rm.de/index.php?site=forum\" rel=\"noopener\" role=\"button\" target=\"_blank\"><strong><u>WEBSPELL RM SUPPORT</u></strong></a></p>\r\n\r\n<p><strong><u>Was bietet Webspell | RM?</u></strong><br />\r\n<br />\r\nWebspell RM basiert auf Bootstrap und ist einfach anzupassen via Dashboard. Theoretisch sind alle Bootstrap Templates verwendbar. Als Editor wir der CKEditor verwendet. Das CMS ist Multi-Language f&auml;hig und liefert von Haus aus viele Sprachen mit. Das beliebte reCAPTCHA wurde als Spam Schutz integriert. Alle Plugins sind via Webspell RM Installer einfach und problemlos zu installieren.</p>\r\n<!-- Page Features -->\r\n\r\n<div class=\"row text-center\">\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/173.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Webside</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"#\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top\" src=\"https://www.webspell-rm.de//includes/plugins/pic_update/images/170.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Dashboard</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/171.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Layout</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php?site=settings_templates\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/172.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Plugin-Installer</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php?site=plugin_installer\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n<!-- zweite Reihe -->\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/174.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Theme-Installer</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php?site=template_installer\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/175.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Updater</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php?site=update\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/176.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Startpage</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php?site=settings_startpage\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/177.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Webspell-RM</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"https://www.webspell-rm.de/forum.html\" target=\"_blank\">Support</a> <a class=\"btn btn-primary\" href=\"https://www.webspell-rm.de/wiki.html\" target=\"_blank\">WIKI</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- /.row --></div>\r\n<!-- /.container -->\r\n\r\n<p>{[en]}</p>\r\n\r\n<p><strong><u>What is Webspell RM?</u></strong><br />\r\n<br />\r\nWebspell RM is a Clan &amp; Gamer CMS (Content Management System). It is based on PHP, MySQL and the latest webSPELL.org GitHub version (4.3.0). Webspell RM runs under the General Public License. See also license agreement <a href=\"http://wiki.webspell-rm.de/index.php?site=static&amp;staticID=4\" target=\"_blank\">license agreement</a>.</p>\r\n\r\n<p style=\"text-align:center\"><a class=\"btn btn-info\" href=\"http://demo.webspell-rm.de/\" rel=\"noopener\" role=\"button\" target=\"_blank\"><strong><u>WEBSPELL RM DEMO</u></strong></a> <a class=\"btn btn-success\" href=\"https://webspell-rm.de/index.php?site=forum\" rel=\"noopener\" role=\"button\" target=\"_blank\"><strong><u>WEBSPELL RM SUPPORT</u></strong></a></p>\r\n\r\n<p><strong><u>What does Webspell | RM offer?</u></strong><br />\r\n<br />\r\nWebspell RM is based on bootstrap and it is easy to customize via dashboard. Theoretically, all bootstrap templates can be used. As editor we use the CKEditor. The CMS is multi-language capable and comes with many native languages. The popular reCAPTCHA was integrated as spam protection. All plugins are easy to install via Webspell RM Installer.</p>\r\n<!-- Page Features -->\r\n\r\n<div class=\"row text-center\">\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/173.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Webside</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"#\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top\" src=\"https://www.webspell-rm.de//includes/plugins/pic_update/images/170.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Dashboard</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/171.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Layout</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php?site=settings_templates\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/172.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Plugin-Installer</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php?site=plugin_installer\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n<!-- zweite Reihe -->\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/174.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Theme-Installer</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php?site=template_installer\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/175.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Updater</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php?site=update\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/176.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Startpage</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php?site=settings_startpage\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/177.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Webspell-RM</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"https://www.webspell-rm.de/forum.html\" target=\"_blank\">Support</a> <a class=\"btn btn-primary\" href=\"https://www.webspell-rm.de/wiki.html\" target=\"_blank\">WIKI</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- /.row --><!-- /.container -->\r\n\r\n<p>{[it]}</p>\r\n\r\n<p><strong><u>Che cos&#39;&Atilde;&uml; Webspell RM? </u> </strong><br />\r\n<br />\r\nWebspell RM &Atilde;&uml; un Clan &amp; amp; Gamer CMS (Content Management System). &Atilde;&circ; basato su PHP, MySQL e l&#39;ultima versione di webSPELL.org GitHub (4.3.0). Webspell RM funziona con la General Public License. Vedi anche il contratto di licenza <a href=\"http://wiki.webspell-rm.de/index.php?site=static&amp;staticID=4\" target=\"_blank\"> contratto di licenza </a>.</p>\r\n\r\n<p style=\"text-align:center\"><a class=\"btn btn-info\" href=\"http://demo.webspell-rm.de/\" rel=\"noopener\" role=\"button\" target=\"_blank\"><strong><u>DEMO WEBSPELL RM </u> </strong> </a> <a class=\"btn btn-success\" href=\"https://webspell-rm.de/index. php? site = forum \" rel=\" noopener \" role=\" button \" target=\" _ blank \"> <strong> <u> SUPPORTO RM WEBSPELL </u> </strong> </a></p>\r\n\r\n<p><strong><u>Cosa fa Webspell | Offerta RM? </u> </strong><br />\r\n<br />\r\nWebspell RM &Atilde;&uml; basato su bootstrap ed &Atilde;&uml; facile da personalizzare tramite dashboard. Teoricamente, possono essere utilizzati tutti i modelli di bootstrap. Come editor usiamo CKEditor. Il CMS &Atilde;&uml; multilingue e viene fornito con molte lingue native. Il popolare reCAPTCHA &Atilde;&uml; stato integrato come protezione antispam. Tutti i plugin sono facili da installare tramite Webspell RM Installer.</p>\r\n<!-- Page Features -->\r\n\r\n<div class=\"row text-center\">\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/173.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Webside</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"#\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top\" src=\"https://www.webspell-rm.de//includes/plugins/pic_update/images/170.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Dashboard</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/171.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Layout</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php?site=settings_templates\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/172.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Plugin-Installer</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php?site=plugin_installer\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n<!-- zweite Reihe -->\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/174.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Theme-Installer</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php?site=template_installer\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/175.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Updater</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php?site=update\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/176.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Startpage</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"/admin/admincenter.php?site=settings_startpage\" target=\"_blank\">Find Out More!</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col mb-4\">\r\n<div class=\"card h-100\" style=\"width:15rem\"><img alt=\"\" class=\"card-img-top img-fluid\" src=\"https://www.webspell-rm.de/includes/plugins/pic_update/images/177.jpg\" />\r\n<div class=\"card-body\">\r\n<h4>Webspell-RM</h4>\r\n\r\n</div>\r\n\r\n<div class=\"card-footer\"><a class=\"btn btn-primary\" href=\"https://www.webspell-rm.de/forum.html\" target=\"_blank\">Support</a> <a class=\"btn btn-primary\" href=\"https://www.webspell-rm.de/wiki.html\" target=\"_blank\">WIKI</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- /.row --><!-- /.container -->', 1616526018, '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_settings_static`
--

CREATE TABLE `rm_214_settings_static` (
  `staticID` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `accesslevel` int(1) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(14) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_settings_themes`
--

CREATE TABLE `rm_214_settings_themes` (
  `themeID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modulname` varchar(100) NOT NULL,
  `pfad` varchar(255) DEFAULT '''0''',
  `version` varchar(11) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `express_active` int(11) NOT NULL DEFAULT 0,
  `nav1` varchar(255) NOT NULL DEFAULT '',
  `nav2` varchar(255) NOT NULL DEFAULT '',
  `nav3` varchar(255) NOT NULL DEFAULT '',
  `nav4` varchar(255) NOT NULL DEFAULT '',
  `nav5` varchar(255) NOT NULL DEFAULT '',
  `nav6` varchar(255) NOT NULL DEFAULT '',
  `nav7` varchar(255) NOT NULL DEFAULT '',
  `nav8` varchar(255) NOT NULL DEFAULT '',
  `nav9` varchar(255) NOT NULL DEFAULT '',
  `nav10` varchar(255) NOT NULL DEFAULT '',
  `nav11` varchar(255) NOT NULL DEFAULT '',
  `nav12` varchar(255) NOT NULL DEFAULT '',
  `nav_text_alignment` varchar(255) DEFAULT '0',
  `body1` text NOT NULL,
  `body2` varchar(255) NOT NULL DEFAULT '',
  `body3` varchar(255) NOT NULL DEFAULT '',
  `body4` varchar(255) NOT NULL DEFAULT '',
  `body5` varchar(255) NOT NULL,
  `background_pic` varchar(255) DEFAULT '0',
  `border_radius` varchar(255) DEFAULT '0',
  `typo1` varchar(255) NOT NULL DEFAULT '',
  `typo2` varchar(255) NOT NULL DEFAULT '',
  `typo3` varchar(255) NOT NULL DEFAULT '',
  `typo4` varchar(255) NOT NULL DEFAULT '',
  `typo5` varchar(255) NOT NULL DEFAULT '',
  `typo6` varchar(255) NOT NULL DEFAULT '',
  `typo7` varchar(255) NOT NULL DEFAULT '',
  `typo8` varchar(255) NOT NULL DEFAULT '',
  `card1` varchar(255) NOT NULL DEFAULT '',
  `card2` varchar(255) NOT NULL DEFAULT '',
  `foot1` varchar(255) NOT NULL DEFAULT '',
  `foot2` varchar(255) NOT NULL DEFAULT '',
  `foot3` varchar(255) NOT NULL DEFAULT '',
  `foot4` varchar(255) NOT NULL DEFAULT '',
  `foot5` varchar(255) NOT NULL DEFAULT '',
  `foot6` varchar(255) NOT NULL DEFAULT '',
  `calendar1` varchar(255) NOT NULL DEFAULT '',
  `calendar2` varchar(255) NOT NULL DEFAULT '',
  `carousel1` varchar(255) NOT NULL DEFAULT '',
  `carousel2` varchar(255) NOT NULL DEFAULT '',
  `carousel3` varchar(255) NOT NULL DEFAULT '',
  `carousel4` varchar(255) NOT NULL DEFAULT '',
  `logo_pic` varchar(255) DEFAULT '0',
  `logotext1` varchar(255) NOT NULL DEFAULT '',
  `logotext2` varchar(255) NOT NULL DEFAULT '',
  `reg_pic` varchar(255) NOT NULL DEFAULT '',
  `reg1` varchar(255) NOT NULL DEFAULT '',
  `reg2` varchar(255) NOT NULL DEFAULT '',
  `headlines` varchar(255) DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_settings_themes`
--

INSERT INTO `rm_214_settings_themes` (`themeID`, `name`, `modulname`, `pfad`, `version`, `active`, `express_active`, `nav1`, `nav2`, `nav3`, `nav4`, `nav5`, `nav6`, `nav7`, `nav8`, `nav9`, `nav10`, `nav11`, `nav12`, `nav_text_alignment`, `body1`, `body2`, `body3`, `body4`, `body5`, `background_pic`, `border_radius`, `typo1`, `typo2`, `typo3`, `typo4`, `typo5`, `typo6`, `typo7`, `typo8`, `card1`, `card2`, `foot1`, `foot2`, `foot3`, `foot4`, `foot5`, `foot6`, `calendar1`, `calendar2`, `carousel1`, `carousel2`, `carousel3`, `carousel4`, `logo_pic`, `logotext1`, `logotext2`, `reg_pic`, `reg1`, `reg2`, `headlines`, `sort`) VALUES
(1, 'Default', 'default', 'default', '0.1', 1, 0, 'rgb(51,51,51)', '18px', 'rgb(221,221,221)', 'rgb(254,130,29)', 'rgb(254,130,29)', '5px', 'rgb(221,221,221)', 'rgb(196,89,1)', '', 'rgb(51,51,51)', 'rgb(112,228,133)', '', 'ms-auto', 'Roboto', '13px', 'rgb(255,255,255)', 'rgb(85,85,85)', 'rgb(236,236,236)', '', '0px', '', '', '', 'rgb(254,130,29)', '', '', '', 'rgb(196,89,1)', 'rgb(255,255,255)', 'rgb(221,221,221)', 'rgb(51,51,51)', '', '', '', '', '', '', '', 'rgb(255,255,255)', 'rgb(254,130,29)', 'rgb(255,255,255)', 'rgb(254,130,29)', 'logo.png', '', '', 'login_bg.jpg', 'rgb(254,130,29)', 'rgb(255,255,255)', 'headlines_01.css', 1),
(10, 'Simplex', 'simplex', 'simplex', '0.1', 0, 0, 'rgb(217,35,15)', '16px', 'rgb(217,35,15)', 'rgb(245,245,245)', 'rgb(33,35,39)', '2px', 'rgb(202,202,202)', 'rgb(245,245,245)', 'rgb(217,216,15)', 'rgb(245,245,245)', 'rgb(217,35,15)', '', 'ms-auto', 'Roboto', '13px', 'rgb(255,255,255)', 'rgb(87,71,71)', 'rgb(251,215,211)', '', '20px', '', '', '', 'rgb(217,35,15)', '', '', '', 'rgb(169,28,13)', 'rgb(255,255,255)', 'rgb(125,120,121)', 'rgb(33,35,39)', '', '', '', '', '', '', '', 'rgb(255,255,255)', 'rgb(217,35,15)', 'rgb(255,255,255)', 'rgb(217,35,15)', 'logo.png', '', '', 'login_bg.jpg', 'rgb(230,172,23)', 'rgb(255,255,255)', 'headlines_01.css', 1),
(11, 'Slate', 'slate', 'slate', '0.1', 0, 0, 'rgb(58,63,68)', '18px', 'rgb(217,217,217)', 'rgb(58,63,68)', 'rgb(254,130,29)', '1px', 'rgb(217,217,217)', 'rgb(255,255,255)', '', 'rgb(58,63,68)', 'rgb(245,245,245)', '', 'ms-auto', 'Roboto', '13px', 'rgb(39,43,48)', 'rgb(170,170,170)', 'rgb(30,33,37)', '', '0px', '', '', '', 'rgb(254,130,29)', '', '', '', 'rgb(196,89,1)', 'rgb(50,56,62)', 'rgb(146,143,143)', 'rgb(58,63,68)', '', '', '', '', '', '', '', '', 'rgb(254,130,29)', '', 'rgb(254,130,29)', 'logo.png', '', '', 'login_bg.jpg', 'rgb(58,63,68)', 'rgb(255,255,255)', 'headlines_01.css', 1),
(12, 'Cyborg', 'cyborg', 'cyborg', '0.1', 0, 0, 'rgb(6,6,6)', '20px', 'rgb(255,193,7)', 'rgb(6,6,6)', 'rgb(115,87,2)', '3px', 'rgb(173,175,174)', 'rgb(6,6,6)', 'rgb(255,193,7)', 'rgb(6,6,6)', 'rgb(255,193,7)', '', 'ms-auto', 'Roboto', '13px', 'rgb(6,6,6)', 'rgb(173,175,174)', 'rgb(14,14,14)', '', '0px', '', '', '', 'rgb(255,193,7)', '', '', '', 'rgb(225,171,6)', 'rgb(6,6,6)', 'rgb(115,87,2)', 'rgb(14,14,14)', '', '', '', '', '', '', '', 'rgb(255,255,255)', 'rgb(255,193,7)', 'rgb(255,255,255)', 'rgb(255,193,7)', 'logo.png', '', '', 'login_bg.jpg', 'rgb(255,193,7)', 'rgb(255,255,255)', 'headlines_01.css', 1),
(13, 'Inrage', 'inrage', 'inrage', '0.1', 0, 0, 'rgb(42,41,43)', '18px', 'rgb(8,166,240)', 'rgb(245,245,245)', 'rgb(8,166,240)', '5px', 'rgb(119,119,119)', 'rgb(245,245,245)', 'rgb(8,166,240)', 'rgb(42,41,43)', 'rgb(8,166,240)', '', 'ms-auto', 'Rajdhani', '14px', 'rgb(255,255,255)', 'rgb(80,80,80)', 'rgb(234,247,254)', '', '0px', '', '', '', 'rgb(8,166,240)', '', '', '', 'rgb(6,147,213)', 'rgb(255,255,255)', 'rgb(119,119,119)', 'rgb(42,41,43)', '', '', '', '', '', '', '', 'rgb(255,255,255)', 'rgb(8,166,240)', 'rgb(255,255,255)', 'rgb(8,166,240)', 'logo.png', '', '', 'login_bg.jpg', 'rgb(8,166,240)', 'rgb(255,255,255)', 'headlines_08.css', 1),
(14, 'Sandstone', 'sandstone', 'sandstone', '0.1', 0, 0, 'rgb(38,38,38)', '16px', 'rgb(221,221,221)', 'rgb(85,85,85)', 'rgb(217,210,197)', '5px', 'rgb(140,140,140)', 'rgb(221,221,221)', '', 'rgb(38,38,38)', 'rgb(255,255,255)', '', 'ms-auto', 'Roboto', '13px', 'rgb(217,210,197)', 'rgb(63,63,63)', 'rgb(249,243,231)', '', '5px', '', '#555555', '#555555', 'rgb(38,38,38)', '13px', '#8c8c8c', '1px', 'rgb(95,94,94)', 'rgb(242,242,242)', 'rgb(140,140,140)', 'rgb(186,186,186)', '', '', '', '', '', '', '', 'rgb(255,255,255)', 'rgb(140,140,140)', 'rgb(255,255,255)', 'rgb(140,140,140)', 'logo.png', '', '', 'login_bg.jpg', 'rgb(90,88,88)', 'rgb(174,174,174)', 'headlines_01.css', 1),
(22, 'Zay', 'zay', 'zay', '0.2', 0, 0, 'rgb(255,255,255)', '18px', 'rgb(33,41,52)', 'rgb(105,187,126)', 'rgb(105,187,126)', '5px', 'rgb(33,41,52)', 'rgb(105,187,126)', '', 'rgb(245,245,245)', 'rgb(245,245,245)', '', 'ms-auto', 'Roboto', '13px', 'rgb(255,255,255)', 'rgb(33,41,52)', 'rgb(229,251,235)', '', '5px', '', '', '', 'rgb(105,187,126)', '', '', '', 'rgb(84,148,101)', 'rgb(255,255,255)', 'rgb(105,187,126)', 'rgb(33,41,52)', '', '', '', '', '', '', '', 'rgb(255,255,255)', 'rgb(105,187,126)', 'rgb(255,255,255)', 'rgb(105,187,126)', 'logo.png', '', '', 'login_bg.jpg', 'rgb(105,187,126)', 'rgb(255,255,255)', 'headlines_01.css', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_settings_widgets`
--

CREATE TABLE `rm_214_settings_widgets` (
  `id` int(11) NOT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modulname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `themes_modulname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget` varchar(255) DEFAULT '0',
  `sort` int(11) DEFAULT 0,
  `widgetname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `widgetdatei` varchar(255) DEFAULT '0',
  `activate` int(11) DEFAULT 0,
  `number` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_settings_widgets`
--

INSERT INTO `rm_214_settings_widgets` (`id`, `position`, `description`, `modulname`, `themes_modulname`, `widget`, `sort`, `widgetname`, `widgetdatei`, `activate`, `number`) VALUES
(13, 'page_footer_widget', 'page_footer_widget', 'footer', 'default', 'widget2', 0, 'Easy Footer Content', 'widget_easyfooter_content', 0, 1),
(20, 'foot_section_widget', 'foot_section_widget', 'blog', 'default', 'widget2', 4, 'Blog Content', 'widget_blog_content', 0, 1),
(15, 'foot_section_widget', 'foot_section_widget', 'about_box', 'default', 'widget3', 1, 'About Us Box Content', 'widget_about_us_box_content', 0, 1),
(16, '1', '1', 'portfolio', 'default', 'widget1', 0, 'Portfolio Content', 'widget_portfolio_content', 1, 1),
(18, 'page_head_widget', 'page_head_widget', 'carousel', 'default', 'widget2', 0, 'Carousel Crossfade', 'widget_carousel_crossfade', 0, 1),
(17, 'foot_section_widget', 'foot_section_widget', 'portfolio', 'default', 'widget2', 6, 'Portfolio Content Two', 'widget_portfolio_content_two', 0, 1),
(19, 'foot_section_widget', 'foot_section_widget', 'sponsors', 'default', 'widget3', 4, 'Sponsors Content Two', 'widget_sponsors_content_two', 0, 1),
(21, 'foot_section_widget', 'foot_section_widget', 'memberslist', 'default', 'widget1', 3, 'Memberlist cintent', 'widget_memberslist_content', 0, 1),
(22, 'foot_section_widget', 'foot_section_widget', 'features', 'default', 'widget1', 2, 'Features One Content', 'widget_features_one_content', 0, 1),
(162, 'left_side_widget', 'left_side_widget', 'calendar', 'default', 'widget1', 0, 'Calendar Sidebar', 'widget_calendar_sidebar', 0, 1),
(24, 'foot_section_widget', 'foot_section_widget', 'textslider', 'default', 'widget2', 5, 'Textslider Content Two', 'widget_textslider_content_two', 0, 1),
(161, 'right_side_widget', 'right_side_widget', 'calendar', 'cyborg', 'widget1', 0, 'Calendar Sidebar', 'widget_calendar_sidebar', 0, 2),
(86, 'left_side_widget', 'left_side_widget', 'forum', 'default', 'widget1', 0, 'Forum Sidebar', 'widget_forum_sidebar', 0, 1),
(80, 'foot_section_widget', 'foot_section_widget', 'sponsors', 'simplex', 'widget3', 5, 'Sponsors Content Two', 'widget_sponsors_content_two', 0, 1),
(84, 'foot_section_widget', 'foot_section_widget', 'features', 'simplex', 'widget1', 2, 'Features One Content', 'widget_features_one_content', 0, 1),
(83, 'foot_section_widget', 'foot_section_widget', 'blog', 'simplex', 'widget2', 4, 'Blog Content', 'widget_blog_content', 0, 1),
(82, 'page_head_widget', 'page_head_widget', 'carousel', 'simplex', 'widget2', 0, 'Carousel Crossfade', 'widget_carousel_crossfade', 0, 1),
(81, 'foot_section_widget', 'foot_section_widget', 'portfolio', 'simplex', 'widget2', 7, 'Portfolio Content Two', 'widget_portfolio_content_two', 0, 1),
(79, 'foot_section_widget', 'foot_section_widget', 'about_box', 'simplex', 'widget3', 1, 'About Us Box Content', 'widget_about_us_box_content', 0, 1),
(245, 'page_Navigation_widget', 'page_Navigation_widget', 'navigation_default_two', 'slate', 'widget1', 0, 'Navigation Default Two', 'widget_navigation_default_two', 0, 1),
(160, 'left_side_widget', 'left_side_widget', 'calendar', 'cyborg', 'widget1', 0, 'Calendar Sidebar', 'widget_calendar_sidebar', 0, 1),
(78, 'page_footer_widget', 'page_footer_widget', 'footer', 'simplex', 'widget2', 2, 'Easy Footer Content', 'widget_easyfooter_content', 0, 1),
(159, 'right_side_widget', 'right_side_widget', 'servers', 'cyborg', 'widget1', 0, 'Servers Sidebar', 'widget_servers_sidebar', 0, 2),
(158, 'left_side_widget', 'left_side_widget', 'servers', 'cyborg', 'widget1', 0, 'Servers Sidebar', 'widget_servers_sidebar', 0, 1),
(85, 'foot_section_widget', 'foot_section_widget', 'memberslist', 'simplex', 'widget1', 3, 'Memberlist cintent', 'widget_memberslist_content', 0, 1),
(87, 'right_side_widget', 'right_side_widget', 'forum', 'default', 'widget1', 0, 'Forum Sidebar', 'widget_forum_sidebar', 0, 2),
(88, 'foot_section_widget', 'foot_section_widget', 'news_manager', 'default', 'widget3', 0, 'News Headlines 2', 'widget_news_headlines_2', 0, 1),
(89, 'left_side_widget', 'left_side_widget', 'blog', 'default', 'widget1', 0, 'Blog Sidebar', 'widget_blog_sidebar', 0, 1),
(90, 'right_side_widget', 'right_side_widget', 'blog', 'default', 'widget1', 0, 'Blog Sidebar', 'widget_blog_sidebar', 0, 2),
(91, 'left_side_widget', 'left_side_widget', 'files', 'default', 'widget1', 0, 'Files Sidebar', 'widget_files_sidebar', 0, 1),
(92, 'right_side_widget', 'right_side_widget', 'files', 'default', 'widget1', 0, 'Files Sidebar', 'widget_files_sidebar', 0, 2),
(93, 'left_side_widget', 'left_side_widget', 'articles', 'default', 'widget1', 0, 'Articles Sidebar', 'widget_articles_sidebar', 0, 1),
(94, 'right_side_widget', 'right_side_widget', 'articles', 'default', 'widget1', 0, 'Articles Sidebar', 'widget_articles_sidebar', 0, 2),
(96, 'page_footer_widget', 'page_footer_widget', 'footer', 'slate', 'widget2', 0, 'Easy Footer Content', 'widget_easyfooter_content', 0, 0),
(97, 'foot_section_widget', 'foot_section_widget', 'about_box', 'slate', 'widget3', 1, 'About Us Box Content', 'widget_about_us_box_content', 0, 1),
(98, 'page_head_widget', 'page_head_widget', 'carousel', 'slate', 'widget2', 0, 'Carousel Crossfade', 'widget_carousel_crossfade', 0, 1),
(99, 'left_side_widget', 'left_side_widget', 'forum', 'slate', 'widget1', 0, 'Forum Sidebar', 'widget_forum_sidebar', 0, 1),
(100, 'right_side_widget', 'right_side_widget', 'forum', 'slate', 'widget1', 0, 'Forum Sidebar', 'widget_forum_sidebar', 0, 2),
(130, 'left_side_widget', 'left_side_widget', 'files', 'cyborg', 'widget1', 0, 'Files Sidebar', 'widget_files_sidebar', 0, 1),
(102, 'page_footer_widget', 'page_footer_widget', 'footer', 'cyborg', 'widget2', 2, 'Easy Footer Content', 'widget_easyfooter_content', 0, 0),
(103, 'left_side_widget', 'left_side_widget', 'forum', 'cyborg', 'widget1', 0, 'Forum Sidebar', 'widget_forum_sidebar', 0, 1),
(104, 'right_side_widget', 'right_side_widget', 'forum', 'cyborg', 'widget1', 0, 'Forum Sidebar', 'widget_forum_sidebar', 0, 2),
(105, 'foot_section_widget', 'foot_section_widget', 'about_box', 'cyborg', 'widget3', 1, 'About Us Box Content', 'widget_about_us_box_content', 0, 1),
(106, '1', '1', 'features', 'cyborg', 'widget3', 0, '', '', 1, 1),
(107, 'foot_section_widget', 'foot_section_widget', 'features', 'cyborg', 'widget1', 2, 'Features One Content', 'widget_features_one_content', 0, 1),
(108, 'foot_section_widget', 'foot_section_widget', 'memberslist', 'cyborg', 'widget1', 3, 'Memberlist cintent', 'widget_memberslist_content', 0, 1),
(109, 'foot_section_widget', 'foot_section_widget', 'blog', 'cyborg', 'widget2', 4, 'Blog Content', 'widget_blog_content', 0, 1),
(110, 'right_side_widget', 'right_side_widget', 'blog', 'cyborg', 'widget1', 0, 'Blog Sidebar', 'widget_blog_sidebar', 0, 2),
(111, 'foot_section_widget', 'foot_section_widget', 'sponsors', 'cyborg', 'widget3', 5, 'Sponsors Content Two', 'widget_sponsors_content_two', 0, 1),
(112, 'foot_section_widget', 'foot_section_widget', 'portfolio', 'cyborg', 'widget2', 7, 'Portfolio Content Two', 'widget_portfolio_content_two', 0, 1),
(113, 'foot_section_widget', 'foot_section_widget', 'textslider', 'cyborg', 'widget2', 6, 'Textslider Content Two', 'widget_textslider_content_two', 0, 1),
(114, 'foot_section_widget', 'foot_section_widget', 'sponsors', 'slate', 'widget3', 5, 'Sponsors Content Two', 'widget_sponsors_content_two', 0, 1),
(115, 'foot_section_widget', 'foot_section_widget', 'portfolio', 'slate', 'widget2', 7, 'Portfolio Content Two', 'widget_portfolio_content_two', 0, 1),
(116, 'foot_section_widget', 'foot_section_widget', 'blog', 'slate', 'widget2', 4, 'Blog Content', 'widget_blog_content', 0, 1),
(117, 'foot_section_widget', 'foot_section_widget', 'memberslist', 'slate', 'widget1', 3, 'Memberlist cintent', 'widget_memberslist_content', 0, 1),
(118, 'foot_section_widget', 'foot_section_widget', 'features', 'slate', 'widget1', 2, 'Features One Content', 'widget_features_one_content', 0, 1),
(119, 'foot_section_widget', 'foot_section_widget', 'textslider', 'slate', 'widget2', 6, 'Textslider Content Two', 'widget_textslider_content_two', 0, 1),
(120, 'left_side_widget', 'left_side_widget', 'forum', 'simplex', 'widget1', 0, 'Forum Sidebar', 'widget_forum_sidebar', 0, 1),
(121, 'right_side_widget', 'right_side_widget', 'forum', 'simplex', 'widget1', 1, 'Forum Sidebar', 'widget_forum_sidebar', 0, 2),
(122, 'right_side_widget', 'right_side_widget', 'blog', 'simplex', 'widget1', 2, 'Blog Sidebar', 'widget_blog_sidebar', 0, 2),
(123, 'left_side_widget', 'left_side_widget', 'files', 'simplex', 'widget1', 0, 'Files Sidebar', 'widget_files_sidebar', 0, 1),
(124, 'right_side_widget', 'right_side_widget', 'files', 'simplex', 'widget1', 0, 'Files Sidebar', 'widget_files_sidebar', 0, 2),
(125, 'left_side_widget', 'left_side_widget', 'files', 'slate', 'widget1', 0, 'Files Sidebar', 'widget_files_sidebar', 0, 1),
(126, 'right_side_widget', 'right_side_widget', 'files', 'slate', 'widget1', 0, 'Files Sidebar', 'widget_files_sidebar', 0, 2),
(127, 'left_side_widget', 'left_side_widget', 'blog', 'slate', 'widget1', 0, 'Blog Sidebar', 'widget_blog_sidebar', 0, 1),
(128, 'right_side_widget', 'right_side_widget', 'blog', 'slate', 'widget1', 0, 'Blog Sidebar', 'widget_blog_sidebar', 0, 2),
(243, 'page_Navigation_widget', 'page_Navigation_widget', 'navigation_default_two', 'default', 'widget1', 0, 'Navigation Default Two', 'widget_navigation_default_two', 0, 1),
(131, 'right_side_widget', 'right_side_widget', 'files', 'cyborg', 'widget1', 0, 'Files Sidebar', 'widget_files_sidebar', 0, 2),
(132, 'page_head_widget', 'page_head_widget', 'carousel', 'cyborg', 'widget2', 0, 'Carousel Crossfade', 'widget_carousel_crossfade', 0, 1),
(133, 'left_side_widget', 'left_side_widget', 'articles', 'cyborg', 'widget1', 0, 'Articles Sidebar', 'widget_articles_sidebar', 0, 1),
(134, 'right_side_widget', 'right_side_widget', 'articles', 'cyborg', 'widget1', 0, 'Articles Sidebar', 'widget_articles_sidebar', 0, 2),
(135, 'left_side_widget', 'left_side_widget', 'calendar', 'simplex', 'widget1', 0, 'Calendar Sidebar', 'widget_calendar_sidebar', 0, 1),
(136, 'right_side_widget', 'right_side_widget', 'calendar', 'simplex', 'widget1', 0, 'Calendar Sidebar', 'widget_calendar_sidebar', 0, 2),
(137, 'left_side_widget', 'left_side_widget', 'calendar', 'simplex', 'widget2', 0, 'Upcoming Sidebar', 'widget_upcoming_sidebar', 0, 1),
(138, 'right_side_widget', 'right_side_widget', 'calendar', 'simplex', 'widget2', 0, 'Upcoming Sidebar', 'widget_upcoming_sidebar', 0, 2),
(139, 'foot_section_widget', 'foot_section_widget', 'textslider', 'simplex', 'widget2', 6, 'Textslider Content Two', 'widget_textslider_content_two', 0, 1),
(165, 'left_side_widget', 'left_side_widget', 'polls', 'cyborg', 'widget1', 0, 'Polls Sidebar', 'widget_polls_sidebar', 0, 1),
(166, 'right_side_widget', 'right_side_widget', 'polls', 'cyborg', 'widget1', 0, 'Polls Sidebar', 'widget_polls_sidebar', 0, 2),
(167, 'left_side_widget', 'left_side_widget', 'partners', 'cyborg', 'widget1', 0, 'Partners Sidebar', 'widget_partners_sidebar', 0, 1),
(168, 'right_side_widget', 'right_side_widget', 'partners', 'cyborg', 'widget1', 0, 'Partners Sidebar', 'widget_partners_sidebar', 0, 2),
(164, 'left_side_widget', 'left_side_widget', 'polls', 'default', 'widget1', 0, 'Polls Sidebar', 'widget_polls_sidebar', 0, 1),
(163, 'right_side_widget', 'right_side_widget', 'calendar', 'default', 'widget1', 0, 'Calendar Sidebar', 'widget_calendar_sidebar', 0, 2),
(146, 'foot_section_widget', 'foot_section_widget', 'about_box', 'inrage', 'widget3', 1, 'About Us Box Content', 'widget_about_us_box_content', 0, 1),
(147, 'foot_section_widget', 'foot_section_widget', 'sponsors', 'inrage', 'widget3', 5, 'Sponsors Content Two', 'widget_sponsors_content_two', 0, 1),
(148, 'foot_section_widget', 'foot_section_widget', 'portfolio', 'inrage', 'widget2', 7, 'Portfolio Content Two', 'widget_portfolio_content_two', 0, 1),
(149, 'foot_section_widget', 'foot_section_widget', 'blog', 'inrage', 'widget2', 4, 'Blog Content', 'widget_blog_content', 0, 1),
(150, 'foot_section_widget', 'foot_section_widget', 'memberslist', 'inrage', 'widget1', 3, 'Memberlist cintent', 'widget_memberslist_content', 0, 1),
(151, 'foot_section_widget', 'foot_section_widget', 'textslider', 'inrage', 'widget2', 6, 'Textslider Content Two', 'widget_textslider_content_two', 0, 1),
(242, '1', '1', 'navigation_default', 'default', 'widget1', 0, 'Navigation Default', 'widget_navigation_default', 1, 1),
(157, 'page_footer_widget', 'page_footer_widget', 'footer', 'inrage', 'widget2', 0, 'Easy Footer Content', 'widget_easyfooter_content', 0, 1),
(154, 'foot_section_widget', 'foot_section_widget', 'features', 'inrage', 'widget1', 2, 'Features One Content', 'widget_features_one_content', 0, 1),
(244, '1', '1', 'navigation_default', 'slate', 'widget1', 0, 'Navigation Default', 'widget_navigation_default', 1, 1),
(169, 'foot_section_widget', 'foot_section_widget', 'partners', 'cyborg', 'widget2', 8, 'Partners Content', 'widget_partners_content', 0, 1),
(240, '1', '1', 'navigation_default', 'simplex', 'widget1', 0, 'Navigation Default', 'widget_navigation_default', 1, 1),
(171, 'page_footer_widget', 'page_footer_widget', 'footer', 'sandstone', 'widget2', 2, 'Easy Footer Content', 'widget_easyfooter_content', 0, 0),
(172, 'foot_section_widget', 'foot_section_widget', 'about_box', 'sandstone', 'widget3', 1, 'About Us Box Content', 'widget_about_us_box_content', 0, 1),
(173, 'foot_section_widget', 'foot_section_widget', 'sponsors', 'sandstone', 'widget3', 5, 'Sponsors Content Two', 'widget_sponsors_content_two', 0, 1),
(174, 'foot_section_widget', 'foot_section_widget', 'portfolio', 'sandstone', 'widget2', 7, 'Portfolio Content Two', 'widget_portfolio_content_two', 0, 1),
(175, 'page_head_widget', 'page_head_widget', 'carousel', 'sandstone', 'widget2', 0, 'Carousel Crossfade', 'widget_carousel_crossfade', 0, 1),
(176, 'foot_section_widget', 'foot_section_widget', 'blog', 'sandstone', 'widget2', 4, 'Blog Content', 'widget_blog_content', 0, 1),
(177, 'foot_section_widget', 'foot_section_widget', 'memberslist', 'sandstone', 'widget1', 3, 'Memberlist cintent', 'widget_memberslist_content', 0, 1),
(178, 'foot_section_widget', 'foot_section_widget', 'textslider', 'sandstone', 'widget2', 6, 'Textslider Content Two', 'widget_textslider_content_two', 0, 1),
(179, 'foot_section_widget', 'foot_section_widget', 'features', 'sandstone', 'widget1', 2, 'Features One Content', 'widget_features_one_content', 0, 1),
(227, 'right_side_widget', 'right_side_widget', 'discord', 'cyborg', 'widget1', 0, 'Discord Sidebar', 'widget_discord_sidebar', 0, 2),
(226, 'left_side_widget', 'left_side_widget', 'discord', 'cyborg', 'widget1', 0, 'Discord Sidebar', 'widget_discord_sidebar', 0, 1),
(225, 'foot_section_widget', 'foot_section_widget', 'streams', 'cyborg', 'widget1', 1, 'Streams Content', 'widget_streams_content', 0, 1),
(224, 'page_head_widget', 'page_head_widget', 'carousel', 'zay', 'widget1', 1, 'Carousel Only', 'widget_carousel_only', 0, 0),
(223, 'center_footer_widget', 'center_footer_widget', 'portfolio', 'zay', 'widget1', 1, 'Portfolio Content', 'widget_portfolio_content', 0, 0),
(222, 'center_footer_widget', 'center_footer_widget', 'sponsors', 'zay', 'widget2', 2, 'Sponsors Content One', 'widget_sponsors_content_one', 0, 0),
(221, 'page_footer_widget', 'page_footer_widget', 'footer', 'zay', 'widget2', 2, 'Easy Footer Content', 'widget_easyfooter_content', 0, 0),
(241, 'page_Navigation_widget', 'page_Navigation_widget', 'navigation_default_two', 'simplex', 'widget1', 0, 'Navigation Default Two', 'widget_navigation_default_two', 0, 1),
(228, 'left_side_widget', 'left_side_widget', 'videos', 'cyborg', 'widget1', 0, 'Videos Sidebar', 'widget_videos_sidebar', 0, 1),
(229, 'right_side_widget', 'right_side_widget', 'videos', 'cyborg', 'widget1', 0, 'Videos Sidebar', 'widget_videos_sidebar', 0, 2),
(230, 'foot_section_widget', 'foot_section_widget', 'videos', 'cyborg', 'widget2', 3, 'Videos Content', 'widget_videos_content', 0, 1),
(231, 'left_side_widget', 'left_side_widget', 'videos', 'cyborg', 'widget3', 0, 'Videos Sidebar Zufall-Video', 'widget_videos_sidebar_coincidence', 0, 1),
(232, 'right_side_widget', 'right_side_widget', 'videos', 'cyborg', 'widget3', 0, 'Videos Sidebar Zufall-Video', 'widget_videos_sidebar_coincidence', 0, 2),
(233, 'foot_section_widget', 'foot_section_widget', 'videos', 'default', 'widget2', 0, 'Videos Content', 'widget_videos_content', 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_squads`
--

CREATE TABLE `rm_214_squads` (
  `squadID` int(11) NOT NULL,
  `gamesquad` int(11) NOT NULL DEFAULT 1,
  `games` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon_small` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_squads`
--

INSERT INTO `rm_214_squads` (`squadID`, `gamesquad`, `games`, `name`, `icon`, `icon_small`, `info`, `sort`) VALUES
(1, 1, 'Apex Legends', 'Webteam', '1.jpg', '', '', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_squads_members`
--

CREATE TABLE `rm_214_squads_members` (
  `sqmID` int(11) NOT NULL,
  `squadID` int(11) NOT NULL DEFAULT 0,
  `userID` int(11) NOT NULL DEFAULT 0,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `activity` int(1) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `joinmember` int(1) NOT NULL DEFAULT 0,
  `warmember` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_squads_members`
--

INSERT INTO `rm_214_squads_members` (`sqmID`, `squadID`, `userID`, `position`, `activity`, `sort`, `joinmember`, `warmember`) VALUES
(1, 1, 1, 'Webmaster, Founder, Programmer', 1, 1, 0, 0),
(2, 1, 2, 'Tester', 1, 1, 0, 0),
(3, 1, 3, '', 1, 1, 0, 0),
(4, 1, 4, '', 1, 1, 0, 0),
(6, 1, 5, '', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_tags`
--

CREATE TABLE `rm_214_tags` (
  `rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID` int(11) NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_user`
--

CREATE TABLE `rm_214_user` (
  `userID` int(11) NOT NULL,
  `registerdate` int(14) NOT NULL DEFAULT 0,
  `lastlogin` int(14) NOT NULL DEFAULT 0,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password_pepper` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_hide` int(1) NOT NULL DEFAULT 1,
  `email_change` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_activate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'select_gender',
  `town` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birthday` date NOT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `steam` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discord` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `usertext` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userpic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `homepage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pmgot` int(11) NOT NULL DEFAULT 0,
  `pmsent` int(11) NOT NULL DEFAULT 0,
  `visits` int(11) NOT NULL DEFAULT 0,
  `banned` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topics` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `articles` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `demos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_pictures` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_rank` int(11) DEFAULT 0,
  `mailonpm` int(1) NOT NULL DEFAULT 0,
  `userdescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `activated` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `language` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'd.m.Y',
  `time_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'H:i',
  `newsletter` int(1) DEFAULT 1,
  `links` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `videos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `games` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `acc_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Costumer',
  `projectlist` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_user`
--

INSERT INTO `rm_214_user` (`userID`, `registerdate`, `lastlogin`, `password`, `password_hash`, `password_pepper`, `nickname`, `email`, `email_hide`, `email_change`, `email_activate`, `firstname`, `lastname`, `gender`, `town`, `birthday`, `facebook`, `twitter`, `twitch`, `steam`, `instagram`, `youtube`, `discord`, `avatar`, `usertext`, `userpic`, `homepage`, `about`, `pmgot`, `pmsent`, `visits`, `banned`, `ban_reason`, `ip`, `topics`, `articles`, `demos`, `files`, `gallery_pictures`, `special_rank`, `mailonpm`, `userdescription`, `activated`, `language`, `date_format`, `time_format`, `newsletter`, `links`, `videos`, `games`, `acc_type`, `projectlist`) VALUES
(1, 1696255949, 1698588247, '', '$2y$12$9IH3K3cYHnw1sji1S9xecugzAuyTN1O1Trae1v8OuQkL0ZrrYLhrW', 'ewpBVfJykG', 'T-Seven', 'info@webspell-rm.de', 1, '', '', 'Thomas', '', 'select_gender', '', '2023-10-06', 'https://www.facebook.com/WebspellRM', 'https://twitter.com/webspell_rm', '', 't-seven', '', '', '', '1.jpg', '', '1jpg', '', '', 12, 0, 0, NULL, '', '94.31.101.69', '|', '', '', '', '', 0, 0, '', '1', 'de', 'd.m.Y', 'H:i', 0, '', '', 'a:0:{}', 'Admin', ''),
(2, 1696256010, 0, 'b4cf30461fd9f68ee5c21c67508cb5d7bfa224d6f278dccd01deec4938918de46cb8c10d5066e3632dbd6bee8f2e586cd763c73673c49552d665611e8a2c8529', '', '', 'Demo', 'demo2@demo2.de', 1, '', '', '', '', 'select_gender', '', '0000-00-00', '', '', '', '', '', '', '', '2.jpg', '', '2jpg', '', '', 0, 0, 1, NULL, '', '', '1|1|1|1|1|1|1|1|1|1|1|1|1|1|2|3|', '', '', '', '', 0, 0, '', '1', '', 'd.m.Y', 'H:i', 1, '', '', '', 'Costumer', ''),
(3, 1696520032, 0, 'b4cf30461fd9f68ee5c21c67508cb5d7bfa224d6f278dccd01deec4938918de46cb8c10d5066e3632dbd6bee8f2e586cd763c73673c49552d665611e8a2c8529', '', '', 'Demo 2', 'demo2@demo2.de', 1, '', '', '', '', 'select_gender', '', '0000-00-00', '', '', '', '', '', '', '', '3.jpg', '', '', '', '', 0, 0, 0, NULL, '', '', '1|2|3|', '', '', '', '', 0, 0, '', '1', '', 'd.m.Y', 'H:i', 1, '', '', '', 'Costumer', ''),
(4, 1696520043, 0, 'b4cf30461fd9f68ee5c21c67508cb5d7bfa224d6f278dccd01deec4938918de46cb8c10d5066e3632dbd6bee8f2e586cd763c73673c49552d665611e8a2c8529', '', '', 'Demo 3', 'demo2@demo2.de', 1, '', '', '', '', 'select_gender', '', '0000-00-00', '', '', '', '', '', '', '', '4.jpg', '', '', '', '', 0, 0, 0, NULL, '', '', '1|2|3|', '', '', '', '', 0, 0, '', '1', '', 'd.m.Y', 'H:i', 1, '', '', '', 'Costumer', ''),
(5, 1696668592, 0, 'b4cf30461fd9f68ee5c21c67508cb5d7bfa224d6f278dccd01deec4938918de46cb8c10d5066e3632dbd6bee8f2e586cd763c73673c49552d665611e8a2c8529', '', '', 'Demo 4', 'demo2@demo2.de', 1, '', '', '', '', 'select_gender', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 6, NULL, '', '', '1|2|3|', '', '', '', '', 0, 0, '', '1', '', 'd.m.Y', 'H:i', 1, '', '', '', 'Costumer', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_user_forum_groups`
--

CREATE TABLE `rm_214_user_forum_groups` (
  `usfgID` int(11) NOT NULL,
  `userID` int(11) NOT NULL DEFAULT 0,
  `1` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_user_forum_groups`
--

INSERT INTO `rm_214_user_forum_groups` (`usfgID`, `userID`, `1`) VALUES
(1, 1, 1),
(2, 2, 0),
(3, 5, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_user_groups`
--

CREATE TABLE `rm_214_user_groups` (
  `usgID` int(11) NOT NULL,
  `userID` int(11) NOT NULL DEFAULT 0,
  `news` int(1) NOT NULL DEFAULT 0,
  `news_writer` int(1) NOT NULL,
  `newsletter` int(1) NOT NULL DEFAULT 0,
  `polls` int(1) NOT NULL DEFAULT 0,
  `forum` int(1) NOT NULL DEFAULT 0,
  `moderator` int(1) NOT NULL DEFAULT 0,
  `clanwars` int(1) NOT NULL DEFAULT 0,
  `feedback` int(1) NOT NULL DEFAULT 0,
  `user` int(1) NOT NULL DEFAULT 0,
  `page` int(1) NOT NULL DEFAULT 0,
  `files` int(1) NOT NULL DEFAULT 0,
  `cash` int(1) NOT NULL DEFAULT 0,
  `gallery` int(1) NOT NULL,
  `super` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_user_groups`
--

INSERT INTO `rm_214_user_groups` (`usgID`, `userID`, `news`, `news_writer`, `newsletter`, `polls`, `forum`, `moderator`, `clanwars`, `feedback`, `user`, `page`, `files`, `cash`, `gallery`, `super`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_user_nickname`
--

CREATE TABLE `rm_214_user_nickname` (
  `userID` int(11) NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_user_nickname`
--

INSERT INTO `rm_214_user_nickname` (`userID`, `nickname`) VALUES
(1, 'T-Seven'),
(2, 'Demo'),
(3, 'Demo 2'),
(4, 'Demo 3'),
(5, 'Demo 4');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_user_visitors`
--

CREATE TABLE `rm_214_user_visitors` (
  `visitID` int(11) NOT NULL,
  `userID` int(11) NOT NULL DEFAULT 0,
  `visitor` int(11) NOT NULL DEFAULT 0,
  `date` int(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_user_visitors`
--

INSERT INTO `rm_214_user_visitors` (`visitID`, `userID`, `visitor`, `date`) VALUES
(1, 2, 1, 1696256015),
(2, 5, 1, 1696704842);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_whoisonline`
--

CREATE TABLE `rm_214_whoisonline` (
  `time` int(14) NOT NULL DEFAULT 0,
  `ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userID` int(11) NOT NULL DEFAULT 0,
  `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rm_214_whoisonline`
--

INSERT INTO `rm_214_whoisonline` (`time`, `ip`, `userID`, `site`) VALUES
(1738954985, '66.249.78.36', 0, 'error_404');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rm_214_whowasonline`
--

CREATE TABLE `rm_214_whowasonline` (
  `time` int(14) NOT NULL DEFAULT 0,
  `ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userID` int(11) NOT NULL DEFAULT 0,
  `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `rm_214_backups`
--
ALTER TABLE `rm_214_backups`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `rm_214_banned_ips`
--
ALTER TABLE `rm_214_banned_ips`
  ADD PRIMARY KEY (`banID`);

--
-- Indizes für die Tabelle `rm_214_captcha`
--
ALTER TABLE `rm_214_captcha`
  ADD PRIMARY KEY (`hash`);

--
-- Indizes für die Tabelle `rm_214_contact`
--
ALTER TABLE `rm_214_contact`
  ADD PRIMARY KEY (`contactID`);

--
-- Indizes für die Tabelle `rm_214_cookies`
--
ALTER TABLE `rm_214_cookies`
  ADD PRIMARY KEY (`userID`,`cookie`),
  ADD KEY `expiration` (`expiration`);

--
-- Indizes für die Tabelle `rm_214_failed_login_attempts`
--
ALTER TABLE `rm_214_failed_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `rm_214_forum_groups`
--
ALTER TABLE `rm_214_forum_groups`
  ADD PRIMARY KEY (`fgrID`);

--
-- Indizes für die Tabelle `rm_214_forum_moderators`
--
ALTER TABLE `rm_214_forum_moderators`
  ADD PRIMARY KEY (`modID`);

--
-- Indizes für die Tabelle `rm_214_forum_posts_spam`
--
ALTER TABLE `rm_214_forum_posts_spam`
  ADD PRIMARY KEY (`postID`);

--
-- Indizes für die Tabelle `rm_214_forum_ranks`
--
ALTER TABLE `rm_214_forum_ranks`
  ADD PRIMARY KEY (`rankID`);

--
-- Indizes für die Tabelle `rm_214_forum_topics_spam`
--
ALTER TABLE `rm_214_forum_topics_spam`
  ADD PRIMARY KEY (`topicID`),
  ADD KEY `date` (`date`);

--
-- Indizes für die Tabelle `rm_214_modrewrite`
--
ALTER TABLE `rm_214_modrewrite`
  ADD PRIMARY KEY (`ruleID`);

--
-- Indizes für die Tabelle `rm_214_navigation_dashboard_categories`
--
ALTER TABLE `rm_214_navigation_dashboard_categories`
  ADD PRIMARY KEY (`catID`);

--
-- Indizes für die Tabelle `rm_214_navigation_dashboard_links`
--
ALTER TABLE `rm_214_navigation_dashboard_links`
  ADD PRIMARY KEY (`linkID`);

--
-- Indizes für die Tabelle `rm_214_navigation_website_main`
--
ALTER TABLE `rm_214_navigation_website_main`
  ADD PRIMARY KEY (`mnavID`);

--
-- Indizes für die Tabelle `rm_214_navigation_website_sub`
--
ALTER TABLE `rm_214_navigation_website_sub`
  ADD PRIMARY KEY (`snavID`);

--
-- Indizes für die Tabelle `rm_214_plugins_about_us`
--
ALTER TABLE `rm_214_plugins_about_us`
  ADD PRIMARY KEY (`aboutID`);

--
-- Indizes für die Tabelle `rm_214_plugins_articles`
--
ALTER TABLE `rm_214_plugins_articles`
  ADD PRIMARY KEY (`articleID`);

--
-- Indizes für die Tabelle `rm_214_plugins_articles_categories`
--
ALTER TABLE `rm_214_plugins_articles_categories`
  ADD PRIMARY KEY (`articlecatID`);

--
-- Indizes für die Tabelle `rm_214_plugins_articles_comments`
--
ALTER TABLE `rm_214_plugins_articles_comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `parentID` (`parentID`),
  ADD KEY `type` (`type`),
  ADD KEY `date` (`date`);

--
-- Indizes für die Tabelle `rm_214_plugins_articles_settings`
--
ALTER TABLE `rm_214_plugins_articles_settings`
  ADD PRIMARY KEY (`articlessetID`);

--
-- Indizes für die Tabelle `rm_214_plugins_blog`
--
ALTER TABLE `rm_214_plugins_blog`
  ADD PRIMARY KEY (`blogID`);

--
-- Indizes für die Tabelle `rm_214_plugins_blog_comments`
--
ALTER TABLE `rm_214_plugins_blog_comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `parentID` (`parentID`),
  ADD KEY `type` (`type`),
  ADD KEY `date` (`date`);

--
-- Indizes für die Tabelle `rm_214_plugins_blog_settings`
--
ALTER TABLE `rm_214_plugins_blog_settings`
  ADD PRIMARY KEY (`blogsetID`);

--
-- Indizes für die Tabelle `rm_214_plugins_carousel`
--
ALTER TABLE `rm_214_plugins_carousel`
  ADD PRIMARY KEY (`carouselID`);

--
-- Indizes für die Tabelle `rm_214_plugins_features`
--
ALTER TABLE `rm_214_plugins_features`
  ADD PRIMARY KEY (`featuresID`);

--
-- Indizes für die Tabelle `rm_214_plugins_features_box`
--
ALTER TABLE `rm_214_plugins_features_box`
  ADD PRIMARY KEY (`featuresID`);

--
-- Indizes für die Tabelle `rm_214_plugins_files`
--
ALTER TABLE `rm_214_plugins_files`
  ADD PRIMARY KEY (`fileID`);

--
-- Indizes für die Tabelle `rm_214_plugins_files_categories`
--
ALTER TABLE `rm_214_plugins_files_categories`
  ADD PRIMARY KEY (`filecatID`);

--
-- Indizes für die Tabelle `rm_214_plugins_files_settings`
--
ALTER TABLE `rm_214_plugins_files_settings`
  ADD PRIMARY KEY (`filessetID`);

--
-- Indizes für die Tabelle `rm_214_plugins_footer`
--
ALTER TABLE `rm_214_plugins_footer`
  ADD PRIMARY KEY (`footID`);

--
-- Indizes für die Tabelle `rm_214_plugins_footer_target`
--
ALTER TABLE `rm_214_plugins_footer_target`
  ADD PRIMARY KEY (`targetID`);

--
-- Indizes für die Tabelle `rm_214_plugins_forum_announcements`
--
ALTER TABLE `rm_214_plugins_forum_announcements`
  ADD PRIMARY KEY (`announceID`);

--
-- Indizes für die Tabelle `rm_214_plugins_forum_boards`
--
ALTER TABLE `rm_214_plugins_forum_boards`
  ADD PRIMARY KEY (`boardID`);

--
-- Indizes für die Tabelle `rm_214_plugins_forum_categories`
--
ALTER TABLE `rm_214_plugins_forum_categories`
  ADD PRIMARY KEY (`catID`);

--
-- Indizes für die Tabelle `rm_214_plugins_forum_notify`
--
ALTER TABLE `rm_214_plugins_forum_notify`
  ADD PRIMARY KEY (`notifyID`);

--
-- Indizes für die Tabelle `rm_214_plugins_forum_poll`
--
ALTER TABLE `rm_214_plugins_forum_poll`
  ADD PRIMARY KEY (`topicID`);

--
-- Indizes für die Tabelle `rm_214_plugins_forum_posts`
--
ALTER TABLE `rm_214_plugins_forum_posts`
  ADD PRIMARY KEY (`postID`);

--
-- Indizes für die Tabelle `rm_214_plugins_forum_topics`
--
ALTER TABLE `rm_214_plugins_forum_topics`
  ADD PRIMARY KEY (`topicID`),
  ADD KEY `lastdate` (`lastdate`);

--
-- Indizes für die Tabelle `rm_214_plugins_forum_votes`
--
ALTER TABLE `rm_214_plugins_forum_votes`
  ADD PRIMARY KEY (`voteID`);

--
-- Indizes für die Tabelle `rm_214_plugins_gallery`
--
ALTER TABLE `rm_214_plugins_gallery`
  ADD PRIMARY KEY (`galleryID`);

--
-- Indizes für die Tabelle `rm_214_plugins_gallery_comments`
--
ALTER TABLE `rm_214_plugins_gallery_comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `parentID` (`parentID`),
  ADD KEY `type` (`type`),
  ADD KEY `date` (`date`);

--
-- Indizes für die Tabelle `rm_214_plugins_gallery_groups`
--
ALTER TABLE `rm_214_plugins_gallery_groups`
  ADD PRIMARY KEY (`groupID`);

--
-- Indizes für die Tabelle `rm_214_plugins_gallery_pictures`
--
ALTER TABLE `rm_214_plugins_gallery_pictures`
  ADD PRIMARY KEY (`picID`);

--
-- Indizes für die Tabelle `rm_214_plugins_gallery_settings`
--
ALTER TABLE `rm_214_plugins_gallery_settings`
  ADD PRIMARY KEY (`gallerysetID`);

--
-- Indizes für die Tabelle `rm_214_plugins_links`
--
ALTER TABLE `rm_214_plugins_links`
  ADD PRIMARY KEY (`linkID`);

--
-- Indizes für die Tabelle `rm_214_plugins_links_categories`
--
ALTER TABLE `rm_214_plugins_links_categories`
  ADD PRIMARY KEY (`linkcatID`);

--
-- Indizes für die Tabelle `rm_214_plugins_links_settings`
--
ALTER TABLE `rm_214_plugins_links_settings`
  ADD PRIMARY KEY (`linkssetID`);

--
-- Indizes für die Tabelle `rm_214_plugins_memberslist`
--
ALTER TABLE `rm_214_plugins_memberslist`
  ADD PRIMARY KEY (`ruID`);

--
-- Indizes für die Tabelle `rm_214_plugins_messenger`
--
ALTER TABLE `rm_214_plugins_messenger`
  ADD PRIMARY KEY (`messageID`);

--
-- Indizes für die Tabelle `rm_214_plugins_navigation_agency`
--
ALTER TABLE `rm_214_plugins_navigation_agency`
  ADD PRIMARY KEY (`headerID`);

--
-- Indizes für die Tabelle `rm_214_plugins_news`
--
ALTER TABLE `rm_214_plugins_news`
  ADD PRIMARY KEY (`newsID`);

--
-- Indizes für die Tabelle `rm_214_plugins_news_comments`
--
ALTER TABLE `rm_214_plugins_news_comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `parentID` (`parentID`),
  ADD KEY `type` (`type`),
  ADD KEY `date` (`date`);

--
-- Indizes für die Tabelle `rm_214_plugins_news_comments_recomment`
--
ALTER TABLE `rm_214_plugins_news_comments_recomment`
  ADD PRIMARY KEY (`recoID`);

--
-- Indizes für die Tabelle `rm_214_plugins_news_rubrics`
--
ALTER TABLE `rm_214_plugins_news_rubrics`
  ADD PRIMARY KEY (`rubricID`);

--
-- Indizes für die Tabelle `rm_214_plugins_news_settings`
--
ALTER TABLE `rm_214_plugins_news_settings`
  ADD PRIMARY KEY (`newssetID`);

--
-- Indizes für die Tabelle `rm_214_plugins_parallax`
--
ALTER TABLE `rm_214_plugins_parallax`
  ADD PRIMARY KEY (`headerID`);

--
-- Indizes für die Tabelle `rm_214_plugins_partners`
--
ALTER TABLE `rm_214_plugins_partners`
  ADD PRIMARY KEY (`partnerID`);

--
-- Indizes für die Tabelle `rm_214_plugins_partners_settings`
--
ALTER TABLE `rm_214_plugins_partners_settings`
  ADD PRIMARY KEY (`partnerssetID`);

--
-- Indizes für die Tabelle `rm_214_plugins_polls`
--
ALTER TABLE `rm_214_plugins_polls`
  ADD PRIMARY KEY (`pollID`);

--
-- Indizes für die Tabelle `rm_214_plugins_polls_comments`
--
ALTER TABLE `rm_214_plugins_polls_comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `parentID` (`parentID`),
  ADD KEY `type` (`type`),
  ADD KEY `date` (`date`);

--
-- Indizes für die Tabelle `rm_214_plugins_polls_votes`
--
ALTER TABLE `rm_214_plugins_polls_votes`
  ADD PRIMARY KEY (`pollID`);

--
-- Indizes für die Tabelle `rm_214_plugins_portfolio`
--
ALTER TABLE `rm_214_plugins_portfolio`
  ADD PRIMARY KEY (`portfolioID`);

--
-- Indizes für die Tabelle `rm_214_plugins_portfolio_categories`
--
ALTER TABLE `rm_214_plugins_portfolio_categories`
  ADD PRIMARY KEY (`portfoliocatID`);

--
-- Indizes für die Tabelle `rm_214_plugins_sendeplan`
--
ALTER TABLE `rm_214_plugins_sendeplan`
  ADD PRIMARY KEY (`sende_id`);

--
-- Indizes für die Tabelle `rm_214_plugins_servers`
--
ALTER TABLE `rm_214_plugins_servers`
  ADD PRIMARY KEY (`serverID`);

--
-- Indizes für die Tabelle `rm_214_plugins_servers_settings`
--
ALTER TABLE `rm_214_plugins_servers_settings`
  ADD PRIMARY KEY (`serverssetID`);

--
-- Indizes für die Tabelle `rm_214_plugins_sponsors`
--
ALTER TABLE `rm_214_plugins_sponsors`
  ADD PRIMARY KEY (`sponsorID`);

--
-- Indizes für die Tabelle `rm_214_plugins_sponsors_settings`
--
ALTER TABLE `rm_214_plugins_sponsors_settings`
  ADD PRIMARY KEY (`sponsorssetID`);

--
-- Indizes für die Tabelle `rm_214_plugins_squads_settings`
--
ALTER TABLE `rm_214_plugins_squads_settings`
  ADD PRIMARY KEY (`squadssetID`);

--
-- Indizes für die Tabelle `rm_214_plugins_streambox`
--
ALTER TABLE `rm_214_plugins_streambox`
  ADD PRIMARY KEY (`streamboxID`);

--
-- Indizes für die Tabelle `rm_214_plugins_streams`
--
ALTER TABLE `rm_214_plugins_streams`
  ADD PRIMARY KEY (`streamID`);

--
-- Indizes für die Tabelle `rm_214_plugins_textslider`
--
ALTER TABLE `rm_214_plugins_textslider`
  ADD PRIMARY KEY (`carouselID`);

--
-- Indizes für die Tabelle `rm_214_plugins_upcoming`
--
ALTER TABLE `rm_214_plugins_upcoming`
  ADD PRIMARY KEY (`upID`);

--
-- Indizes für die Tabelle `rm_214_plugins_upcoming_announce`
--
ALTER TABLE `rm_214_plugins_upcoming_announce`
  ADD PRIMARY KEY (`annID`);

--
-- Indizes für die Tabelle `rm_214_plugins_videos`
--
ALTER TABLE `rm_214_plugins_videos`
  ADD PRIMARY KEY (`videosID`);

--
-- Indizes für die Tabelle `rm_214_plugins_videos_categories`
--
ALTER TABLE `rm_214_plugins_videos_categories`
  ADD PRIMARY KEY (`videoscatID`);

--
-- Indizes für die Tabelle `rm_214_plugins_videos_comments`
--
ALTER TABLE `rm_214_plugins_videos_comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `parentID` (`parentID`),
  ADD KEY `type` (`type`),
  ADD KEY `date` (`date`);

--
-- Indizes für die Tabelle `rm_214_plugins_wbox`
--
ALTER TABLE `rm_214_plugins_wbox`
  ADD PRIMARY KEY (`wID`);

--
-- Indizes für die Tabelle `rm_214_plugins_wbox_ip`
--
ALTER TABLE `rm_214_plugins_wbox_ip`
  ADD UNIQUE KEY `wipID` (`wipID`);

--
-- Indizes für die Tabelle `rm_214_settings`
--
ALTER TABLE `rm_214_settings`
  ADD PRIMARY KEY (`settingID`);

--
-- Indizes für die Tabelle `rm_214_settings_buttons`
--
ALTER TABLE `rm_214_settings_buttons`
  ADD PRIMARY KEY (`buttonID`);

--
-- Indizes für die Tabelle `rm_214_settings_games`
--
ALTER TABLE `rm_214_settings_games`
  ADD PRIMARY KEY (`gameID`);

--
-- Indizes für die Tabelle `rm_214_settings_headelements`
--
ALTER TABLE `rm_214_settings_headelements`
  ADD PRIMARY KEY (`headelementID`);

--
-- Indizes für die Tabelle `rm_214_settings_imprint`
--
ALTER TABLE `rm_214_settings_imprint`
  ADD PRIMARY KEY (`imprintID`);

--
-- Indizes für die Tabelle `rm_214_settings_languages`
--
ALTER TABLE `rm_214_settings_languages`
  ADD PRIMARY KEY (`langID`);

--
-- Indizes für die Tabelle `rm_214_settings_module`
--
ALTER TABLE `rm_214_settings_module`
  ADD PRIMARY KEY (`pluginID`);

--
-- Indizes für die Tabelle `rm_214_settings_plugins`
--
ALTER TABLE `rm_214_settings_plugins`
  ADD PRIMARY KEY (`pluginID`);

--
-- Indizes für die Tabelle `rm_214_settings_privacy_policy`
--
ALTER TABLE `rm_214_settings_privacy_policy`
  ADD PRIMARY KEY (`privacy_policyID`);

--
-- Indizes für die Tabelle `rm_214_settings_social_media`
--
ALTER TABLE `rm_214_settings_social_media`
  ADD PRIMARY KEY (`socialID`);

--
-- Indizes für die Tabelle `rm_214_settings_startpage`
--
ALTER TABLE `rm_214_settings_startpage`
  ADD PRIMARY KEY (`pageID`);

--
-- Indizes für die Tabelle `rm_214_settings_static`
--
ALTER TABLE `rm_214_settings_static`
  ADD PRIMARY KEY (`staticID`);

--
-- Indizes für die Tabelle `rm_214_settings_themes`
--
ALTER TABLE `rm_214_settings_themes`
  ADD PRIMARY KEY (`themeID`);

--
-- Indizes für die Tabelle `rm_214_settings_widgets`
--
ALTER TABLE `rm_214_settings_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `rm_214_squads`
--
ALTER TABLE `rm_214_squads`
  ADD PRIMARY KEY (`squadID`);

--
-- Indizes für die Tabelle `rm_214_squads_members`
--
ALTER TABLE `rm_214_squads_members`
  ADD PRIMARY KEY (`sqmID`);

--
-- Indizes für die Tabelle `rm_214_user`
--
ALTER TABLE `rm_214_user`
  ADD PRIMARY KEY (`userID`);

--
-- Indizes für die Tabelle `rm_214_user_forum_groups`
--
ALTER TABLE `rm_214_user_forum_groups`
  ADD PRIMARY KEY (`usfgID`);

--
-- Indizes für die Tabelle `rm_214_user_groups`
--
ALTER TABLE `rm_214_user_groups`
  ADD PRIMARY KEY (`usgID`);

--
-- Indizes für die Tabelle `rm_214_user_nickname`
--
ALTER TABLE `rm_214_user_nickname`
  ADD PRIMARY KEY (`userID`);

--
-- Indizes für die Tabelle `rm_214_user_visitors`
--
ALTER TABLE `rm_214_user_visitors`
  ADD PRIMARY KEY (`visitID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `rm_214_backups`
--
ALTER TABLE `rm_214_backups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_banned_ips`
--
ALTER TABLE `rm_214_banned_ips`
  MODIFY `banID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_contact`
--
ALTER TABLE `rm_214_contact`
  MODIFY `contactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_failed_login_attempts`
--
ALTER TABLE `rm_214_failed_login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_forum_groups`
--
ALTER TABLE `rm_214_forum_groups`
  MODIFY `fgrID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_forum_moderators`
--
ALTER TABLE `rm_214_forum_moderators`
  MODIFY `modID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_forum_posts_spam`
--
ALTER TABLE `rm_214_forum_posts_spam`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_forum_ranks`
--
ALTER TABLE `rm_214_forum_ranks`
  MODIFY `rankID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT für Tabelle `rm_214_forum_topics_spam`
--
ALTER TABLE `rm_214_forum_topics_spam`
  MODIFY `topicID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_modrewrite`
--
ALTER TABLE `rm_214_modrewrite`
  MODIFY `ruleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT für Tabelle `rm_214_navigation_dashboard_categories`
--
ALTER TABLE `rm_214_navigation_dashboard_categories`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `rm_214_navigation_dashboard_links`
--
ALTER TABLE `rm_214_navigation_dashboard_links`
  MODIFY `linkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT für Tabelle `rm_214_navigation_website_main`
--
ALTER TABLE `rm_214_navigation_website_main`
  MODIFY `mnavID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `rm_214_navigation_website_sub`
--
ALTER TABLE `rm_214_navigation_website_sub`
  MODIFY `snavID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_about_us`
--
ALTER TABLE `rm_214_plugins_about_us`
  MODIFY `aboutID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_articles`
--
ALTER TABLE `rm_214_plugins_articles`
  MODIFY `articleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_articles_categories`
--
ALTER TABLE `rm_214_plugins_articles_categories`
  MODIFY `articlecatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_articles_comments`
--
ALTER TABLE `rm_214_plugins_articles_comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_articles_settings`
--
ALTER TABLE `rm_214_plugins_articles_settings`
  MODIFY `articlessetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_blog`
--
ALTER TABLE `rm_214_plugins_blog`
  MODIFY `blogID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_blog_comments`
--
ALTER TABLE `rm_214_plugins_blog_comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_blog_settings`
--
ALTER TABLE `rm_214_plugins_blog_settings`
  MODIFY `blogsetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_carousel`
--
ALTER TABLE `rm_214_plugins_carousel`
  MODIFY `carouselID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_features`
--
ALTER TABLE `rm_214_plugins_features`
  MODIFY `featuresID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_features_box`
--
ALTER TABLE `rm_214_plugins_features_box`
  MODIFY `featuresID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_files`
--
ALTER TABLE `rm_214_plugins_files`
  MODIFY `fileID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_files_categories`
--
ALTER TABLE `rm_214_plugins_files_categories`
  MODIFY `filecatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_files_settings`
--
ALTER TABLE `rm_214_plugins_files_settings`
  MODIFY `filessetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_footer`
--
ALTER TABLE `rm_214_plugins_footer`
  MODIFY `footID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_footer_target`
--
ALTER TABLE `rm_214_plugins_footer_target`
  MODIFY `targetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_forum_announcements`
--
ALTER TABLE `rm_214_plugins_forum_announcements`
  MODIFY `announceID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_forum_boards`
--
ALTER TABLE `rm_214_plugins_forum_boards`
  MODIFY `boardID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_forum_categories`
--
ALTER TABLE `rm_214_plugins_forum_categories`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_forum_notify`
--
ALTER TABLE `rm_214_plugins_forum_notify`
  MODIFY `notifyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_forum_poll`
--
ALTER TABLE `rm_214_plugins_forum_poll`
  MODIFY `topicID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_forum_posts`
--
ALTER TABLE `rm_214_plugins_forum_posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_forum_topics`
--
ALTER TABLE `rm_214_plugins_forum_topics`
  MODIFY `topicID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_forum_votes`
--
ALTER TABLE `rm_214_plugins_forum_votes`
  MODIFY `voteID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_gallery`
--
ALTER TABLE `rm_214_plugins_gallery`
  MODIFY `galleryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_gallery_comments`
--
ALTER TABLE `rm_214_plugins_gallery_comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_gallery_groups`
--
ALTER TABLE `rm_214_plugins_gallery_groups`
  MODIFY `groupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_gallery_pictures`
--
ALTER TABLE `rm_214_plugins_gallery_pictures`
  MODIFY `picID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_gallery_settings`
--
ALTER TABLE `rm_214_plugins_gallery_settings`
  MODIFY `gallerysetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_links`
--
ALTER TABLE `rm_214_plugins_links`
  MODIFY `linkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_links_categories`
--
ALTER TABLE `rm_214_plugins_links_categories`
  MODIFY `linkcatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_links_settings`
--
ALTER TABLE `rm_214_plugins_links_settings`
  MODIFY `linkssetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_memberslist`
--
ALTER TABLE `rm_214_plugins_memberslist`
  MODIFY `ruID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_messenger`
--
ALTER TABLE `rm_214_plugins_messenger`
  MODIFY `messageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_navigation_agency`
--
ALTER TABLE `rm_214_plugins_navigation_agency`
  MODIFY `headerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_news`
--
ALTER TABLE `rm_214_plugins_news`
  MODIFY `newsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_news_comments`
--
ALTER TABLE `rm_214_plugins_news_comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_news_comments_recomment`
--
ALTER TABLE `rm_214_plugins_news_comments_recomment`
  MODIFY `recoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_news_rubrics`
--
ALTER TABLE `rm_214_plugins_news_rubrics`
  MODIFY `rubricID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_news_settings`
--
ALTER TABLE `rm_214_plugins_news_settings`
  MODIFY `newssetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_parallax`
--
ALTER TABLE `rm_214_plugins_parallax`
  MODIFY `headerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_partners`
--
ALTER TABLE `rm_214_plugins_partners`
  MODIFY `partnerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_partners_settings`
--
ALTER TABLE `rm_214_plugins_partners_settings`
  MODIFY `partnerssetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_polls`
--
ALTER TABLE `rm_214_plugins_polls`
  MODIFY `pollID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_polls_comments`
--
ALTER TABLE `rm_214_plugins_polls_comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_portfolio`
--
ALTER TABLE `rm_214_plugins_portfolio`
  MODIFY `portfolioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_portfolio_categories`
--
ALTER TABLE `rm_214_plugins_portfolio_categories`
  MODIFY `portfoliocatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_sendeplan`
--
ALTER TABLE `rm_214_plugins_sendeplan`
  MODIFY `sende_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_servers`
--
ALTER TABLE `rm_214_plugins_servers`
  MODIFY `serverID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_servers_settings`
--
ALTER TABLE `rm_214_plugins_servers_settings`
  MODIFY `serverssetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_sponsors`
--
ALTER TABLE `rm_214_plugins_sponsors`
  MODIFY `sponsorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_sponsors_settings`
--
ALTER TABLE `rm_214_plugins_sponsors_settings`
  MODIFY `sponsorssetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_squads_settings`
--
ALTER TABLE `rm_214_plugins_squads_settings`
  MODIFY `squadssetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_streambox`
--
ALTER TABLE `rm_214_plugins_streambox`
  MODIFY `streamboxID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_streams`
--
ALTER TABLE `rm_214_plugins_streams`
  MODIFY `streamID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_textslider`
--
ALTER TABLE `rm_214_plugins_textslider`
  MODIFY `carouselID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_upcoming`
--
ALTER TABLE `rm_214_plugins_upcoming`
  MODIFY `upID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_upcoming_announce`
--
ALTER TABLE `rm_214_plugins_upcoming_announce`
  MODIFY `annID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_videos`
--
ALTER TABLE `rm_214_plugins_videos`
  MODIFY `videosID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_videos_categories`
--
ALTER TABLE `rm_214_plugins_videos_categories`
  MODIFY `videoscatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_videos_comments`
--
ALTER TABLE `rm_214_plugins_videos_comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_wbox`
--
ALTER TABLE `rm_214_plugins_wbox`
  MODIFY `wID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_plugins_wbox_ip`
--
ALTER TABLE `rm_214_plugins_wbox_ip`
  MODIFY `wipID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_settings`
--
ALTER TABLE `rm_214_settings`
  MODIFY `settingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_settings_buttons`
--
ALTER TABLE `rm_214_settings_buttons`
  MODIFY `buttonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT für Tabelle `rm_214_settings_games`
--
ALTER TABLE `rm_214_settings_games`
  MODIFY `gameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT für Tabelle `rm_214_settings_headelements`
--
ALTER TABLE `rm_214_settings_headelements`
  MODIFY `headelementID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT für Tabelle `rm_214_settings_imprint`
--
ALTER TABLE `rm_214_settings_imprint`
  MODIFY `imprintID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_settings_languages`
--
ALTER TABLE `rm_214_settings_languages`
  MODIFY `langID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT für Tabelle `rm_214_settings_module`
--
ALTER TABLE `rm_214_settings_module`
  MODIFY `pluginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=957;

--
-- AUTO_INCREMENT für Tabelle `rm_214_settings_plugins`
--
ALTER TABLE `rm_214_settings_plugins`
  MODIFY `pluginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT für Tabelle `rm_214_settings_privacy_policy`
--
ALTER TABLE `rm_214_settings_privacy_policy`
  MODIFY `privacy_policyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_settings_social_media`
--
ALTER TABLE `rm_214_settings_social_media`
  MODIFY `socialID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_settings_startpage`
--
ALTER TABLE `rm_214_settings_startpage`
  MODIFY `pageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `rm_214_settings_static`
--
ALTER TABLE `rm_214_settings_static`
  MODIFY `staticID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rm_214_settings_themes`
--
ALTER TABLE `rm_214_settings_themes`
  MODIFY `themeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT für Tabelle `rm_214_settings_widgets`
--
ALTER TABLE `rm_214_settings_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT für Tabelle `rm_214_squads`
--
ALTER TABLE `rm_214_squads`
  MODIFY `squadID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `rm_214_squads_members`
--
ALTER TABLE `rm_214_squads_members`
  MODIFY `sqmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `rm_214_user`
--
ALTER TABLE `rm_214_user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `rm_214_user_forum_groups`
--
ALTER TABLE `rm_214_user_forum_groups`
  MODIFY `usfgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `rm_214_user_groups`
--
ALTER TABLE `rm_214_user_groups`
  MODIFY `usgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `rm_214_user_nickname`
--
ALTER TABLE `rm_214_user_nickname`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `rm_214_user_visitors`
--
ALTER TABLE `rm_214_user_visitors`
  MODIFY `visitID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
