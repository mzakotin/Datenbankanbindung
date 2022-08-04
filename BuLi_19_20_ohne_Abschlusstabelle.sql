-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 01. Jul 2021 um 17:12
-- Server-Version: 10.4.17-MariaDB
-- PHP-Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `fussball_bundesliga_2019_20`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kreuztabelle`
--

CREATE TABLE `kreuztabelle` (
  `Platz` int(2) NOT NULL,
  `Verein` varchar(30) COLLATE latin1_german1_ci NOT NULL,
  `FCB` varchar(3) COLLATE latin1_german1_ci NOT NULL,
  `BVB` varchar(3) COLLATE latin1_german1_ci NOT NULL,
  `RBL` varchar(3) COLLATE latin1_german1_ci NOT NULL,
  `BMG` varchar(3) COLLATE latin1_german1_ci NOT NULL,
  `B04` varchar(3) COLLATE latin1_german1_ci NOT NULL,
  `TSG` varchar(3) COLLATE latin1_german1_ci NOT NULL,
  `VFL` varchar(3) COLLATE latin1_german1_ci NOT NULL,
  `SCF` varchar(3) COLLATE latin1_german1_ci NOT NULL,
  `SGE` varchar(3) COLLATE latin1_german1_ci NOT NULL,
  `BSC` varchar(3) COLLATE latin1_german1_ci NOT NULL,
  `FCU` varchar(3) COLLATE latin1_german1_ci NOT NULL,
  `S04` varchar(3) COLLATE latin1_german1_ci NOT NULL,
  `FSV` varchar(3) COLLATE latin1_german1_ci NOT NULL,
  `FC` varchar(3) COLLATE latin1_german1_ci NOT NULL,
  `FCA` varchar(3) COLLATE latin1_german1_ci NOT NULL,
  `SVW` varchar(3) COLLATE latin1_german1_ci NOT NULL,
  `F95` varchar(3) COLLATE latin1_german1_ci NOT NULL,
  `SCP` varchar(3) COLLATE latin1_german1_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `kreuztabelle`
--

INSERT INTO `kreuztabelle` (`Platz`, `Verein`, `FCB`, `BVB`, `RBL`, `BMG`, `B04`, `TSG`, `VFL`, `SCF`, `SGE`, `BSC`, `FCU`, `S04`, `FSV`, `FC`, `FCA`, `SVW`, `F95`, `SCP`) VALUES
(1, 'FC_Bayern_Muenchen', '', '4:0', '0:0', '2:1', '1:2', '1:2', '2:0', '3:1', '5:2', '2:2', '2:1', '5:0', '6:1', '4:0', '2:0', '6:1', '5:0', '3:2'),
(2, 'Borussia_Dortmund', '0:1', '', '3:3', '1:0', '4:0', '0:4', '3:0', '1:0', '4:0', '1:0', '5:0', '4:0', '0:2', '5:1', '5:1', '2:2', '5:0', '3:3'),
(3, 'RB_Leipzig', '1:1', '0:2', '', '2:2', '1:1', '3:1', '1:1', '1:1', '2:1', '2:2', '3:1', '1:3', '8:0', '4:1', '3:1', '3:0', '2:2', '1:1'),
(4, 'Borussia_Moenchengladbach', '2:1', '1:2', '1:3', '', '1:3', '1:1', '3:0', '4:2', '4:2', '2:1', '4:1', '0:0', '3:1', '2:1', '5:1', '3:1', '2:1', '2:0'),
(5, 'Bayer_04_Leverkusen', '2:4', '4:3', '1:1', '1:2', '', '0:0', '1:4', '1:1', '4:0', '0:1', '2:0', '2:1', '1:0', '3:1', '2:0', '2:2', '3:0', '3:2'),
(6, 'TSG_1899_Hoffenheim', '0:6', '2:1', '0:2', '0:3', '2:1', '', '2:3', '0:3', '1:2', '0:3', '4:0', '2:0', '1:5', '3:1', '2:4', '3:2', '1:1', '3:0'),
(7, 'VfL_Wolfsburg', '0:4', '0:2', '0:0', '2:1', '0:2', '1:1', '', '2:2', '1:2', '1:2', '1:0', '1:1', '4:0', '2:1', '0:0', '2.3', '1:1', '1:1'),
(8, 'SC_Freiburg', '1:3', '2:2', '2:1', '1:0', '0:1', '1:0', '1:0', '', '1:0', '2:1', '3:1', '4:0', '3:0', '1:2', '1:1', '0:1', '0:2', '0:2'),
(9, 'Eintracht_Frankfurt', '5:1', '2:2', '2:0', '1:3', '3:0', '1:0', '0:2', '3:3', '', '2:2', '1:2', '2:1', '0:2', '2:4', '5:0', '2:2', '2:1', '3:2'),
(10, 'Hertha_BSC', '0:4', '1:2', '2:4', '0:0', '2:0', '2:3', '0:3', '1:0', '1:4', '', '4:0', '0:0', '1:3', '0:5', '2:0', '2:2', '3:1', '2:1'),
(11, '1_FC_Union_Berlin', '0:2', '3:1', '0:4', '2:0', '2:3', '0:2', '2:2', '2:0', '1:2', '1:0', '', '1:1', '1:1', '2:0', '2:0', '1:2', '3:0', '1:0'),
(12, 'FC_Schalke_04', '0:3', '0:0', '0:5', '2:0', '1:1', '0:5', '1:4', '2:2', '1:0', '3:0', '2:1', '', '2:1', '1:1', '0:3', '0:1', '3:3', '1:1'),
(13, '1_FSV_Mainz_05', '1.3', '0:4', '0:5', '1:3', '0:1', '0:1', '0:1', '1:2', '2:1', '2:1', '2:3', '0:0', '', '3:1', '0:1', '3:1', '1:1', '2:0'),
(14, '1_FC_Koeln', '1:4', '1:3', '2:4', '0:1', '2:0', '1:2', '3:1', '4:0', '1:1', '0:4', '1.2', '3:0', '2:2', '', '1:1', '1:0', '2:2', '3:0'),
(15, 'FC_Augsburg', '2:2', '3:5', '1:2', '2:3', '0:3', '1:3', '1:2', '1:1', '2:1', '4:0', '1:1', '2:3', '2:1', '1:1', '', '2:1', '3:0', '0:0'),
(16, 'Werder_Bremen', '0:1', '0:2', '0:3', '0:0', '1:4', '0:3', '0:1', '2:2', '0:3', '1:1', '0:2', '1:2', '0:5', '6:1', '3:2', '', '1:3', '0:1'),
(17, 'Fortuna_Duesseldorf', '0:4', '0:1', '0:3', '1:4', '1:3', '2:2', '1:1', '1:2', '1:1', '3:3', '2:1', '2:1', '1:0', '2:0', '1:1', '0:1', '', '0:0'),
(18, 'SC_Paderborn_07', '2:3', '1:6', '2:3', '1:3', '1:4', '1:1', '2:4', '1:3', '2:1', '1:2', '1:1', '1:5', '1:2', '1:2', '0:1', '1:5', '2:0', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `meiste_torvorlagen`
--

CREATE TABLE `meiste_torvorlagen` (
  `Platz` int(2) NOT NULL,
  `Nationalitaet` varchar(11) COLLATE latin1_german1_ci NOT NULL,
  `Spieler` varchar(20) COLLATE latin1_german1_ci NOT NULL,
  `Mannschaft` varchar(25) COLLATE latin1_german1_ci NOT NULL,
  `Vorlagen` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `meiste_torvorlagen`
--

INSERT INTO `meiste_torvorlagen` (`Platz`, `Nationalitaet`, `Spieler`, `Mannschaft`, `Vorlagen`) VALUES
(1, 'Deutschland', 'Thomas_Mueller', 'FC_Bayern_Muenchen', 21),
(2, 'England', 'Jadon_Sancho', 'Borussia_Dortmund', 16),
(3, 'Frankreich', 'Christopher_Nkunku', 'RB_Leipzig', 14),
(4, 'Belgien', 'Thorgan_Hazard', 'Borussia_Dortmund', 13),
(5, 'Serbien', 'Filip_Kostic', 'Eintracht_Frankfurt', 13),
(6, 'Deutschland', 'Christian_Guenter', 'SC_Freiburg', 10),
(7, 'Marokko', 'Achraf_Hakimi', 'Borussia_Dortmund', 10),
(8, 'Frankreich', 'Alassane_Plea', 'Borussia_Moenchengladbach', 10),
(9, 'Deutschland', 'Serge_Gnabry', 'FC_Bayern_Muenchen', 9),
(10, 'Daenemark', 'Robert_Skov', 'TSG_1899_Hoffenheim', 9);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `relegation`
--

CREATE TABLE `relegation` (
  `Spiele` varchar(12) COLLATE latin1_german1_ci NOT NULL,
  `Heimmannschaft` varchar(20) COLLATE latin1_german1_ci NOT NULL,
  `Endergebnis` varchar(10) COLLATE latin1_german1_ci NOT NULL,
  `Gastmannschaft` varchar(20) COLLATE latin1_german1_ci NOT NULL,
  `Tore_und_Bemerkungen` varchar(120) COLLATE latin1_german1_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `relegation`
--

INSERT INTO `relegation` (`Spiele`, `Heimmannschaft`, `Endergebnis`, `Gastmannschaft`, `Tore_und_Bemerkungen`) VALUES
('2. Juli 2020', 'Werder_Bremen', '0:0', '1_FC_Heidenheim', ''),
('6. Juli 2020', '1_FC_Heidenheim', '2:2 (0:1)', 'Werder_Bremen', '0:1 Theuerkauf (3., Eigentor), 1:1 Kleindienst (85.), 1:2 Augustinsson (90.+4\'), 2:2 Kleindienst (90.+8\', Foulelfmeter)'),
('Gesamt:', 'Werder_Bremen', '2:2', '1_FC_Heidenheim', 'Aufgrund der Auswaertstorregel gewann Werder Bremen die Relegation und blieb somit weiter in der 1. Bundesliga.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `scorerliste`
--

CREATE TABLE `scorerliste` (
  `Platz` int(2) NOT NULL,
  `Nationalitaet` varchar(11) COLLATE latin1_german1_ci NOT NULL,
  `Spieler` varchar(21) COLLATE latin1_german1_ci NOT NULL,
  `Mannschaft` varchar(25) COLLATE latin1_german1_ci NOT NULL,
  `Tore` int(2) NOT NULL,
  `Torvorlagen` int(2) NOT NULL,
  `Gesamt` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `scorerliste`
--

INSERT INTO `scorerliste` (`Platz`, `Nationalitaet`, `Spieler`, `Mannschaft`, `Tore`, `Torvorlagen`, `Gesamt`) VALUES
(1, 'Polen', 'Robert_Lewandowski', 'FC_Bayern_Muenchen', 34, 6, 40),
(2, 'Deutschland', 'Timo_Werner', 'RB_Leipzig', 28, 8, 36),
(3, 'England', 'Jadon_Sancho', 'Borussia_Dortmund', 17, 16, 33),
(4, 'Deutschland', 'Thomas_Mueller', 'FC_Bayern_Muenchen', 8, 21, 29),
(5, 'Deutschland', 'Florian_Niederlechner', 'FC_Augsburg', 13, 8, 21),
(6, 'Deutschland', 'Serge_Gnabry', 'FC_Bayern_Muenchen', 12, 9, 21),
(7, 'Niederlande', 'Wout_Weghorst', 'VfL_Wolfsburg', 16, 4, 20),
(8, 'Frankreich', 'Alassane_Plea', 'Borussia_Moenchengladbach', 10, 10, 20),
(9, 'Belgien', 'Thorgan_Hazard', 'Borussia_Dortmund', 7, 13, 20),
(10, 'Frankreich', 'Christopher_Nkunku', 'RB_Leipzig', 5, 14, 19);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `torschuetzenliste`
--

CREATE TABLE `torschuetzenliste` (
  `Platz` int(2) NOT NULL,
  `Nationalitaet` varchar(11) COLLATE latin1_german1_ci NOT NULL,
  `Spieler` varchar(21) COLLATE latin1_german1_ci NOT NULL,
  `Mannschaft` varchar(20) COLLATE latin1_german1_ci NOT NULL,
  `Tore` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `torschuetzenliste`
--

INSERT INTO `torschuetzenliste` (`Platz`, `Nationalitaet`, `Spieler`, `Mannschaft`, `Tore`) VALUES
(1, 'Polen', 'Robert_Lewandowski', 'FC_Bayern_Muenchen', 34),
(2, 'Deutschland', 'Timo_Werner', 'RB_Leipzig', 28),
(3, 'England', 'Jadon_Sancho', 'Borussia_Dortmund', 17),
(4, 'Niederlande', 'Wout_Weghorst', 'VfL_Wolfsburg', 16),
(5, 'Deutschland', 'Rouwen_Hennings', 'Fortuna_Duesseldorf', 15),
(6, 'Kolumbien', 'Jhon_Cordoba', '1_FC_Koeln', 13),
(7, 'Norwegen', 'Erling_Haaland', 'Borussia_Dortmund', 13),
(8, 'Deutschland', 'Florian_Niederlechner', 'FC_Augsburg', 13),
(9, 'Schweden', 'Robin_Quaison', '1_FSV_Mainz_05', 13),
(10, 'Schweden', 'Sebastian_Andersson', '1_FC_Union_Berlin', 12),
(11, 'Deutschland', 'Serge_Gnabry', 'FC_Bayern_Muenchen', 12),
(12, 'Deutschland', 'Kai_Havertz', 'Bayer_04_Leverkusen', 12),
(13, 'Kroatien', 'Andrej_Kramaric', 'TSG_1899_Hoffenheim', 12),
(14, 'Portugal', 'Andre_Silva', 'Eintracht_Frankfurt', 12);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `kreuztabelle`
--
ALTER TABLE `kreuztabelle`
  ADD PRIMARY KEY (`Platz`);

--
-- Indizes für die Tabelle `meiste_torvorlagen`
--
ALTER TABLE `meiste_torvorlagen`
  ADD PRIMARY KEY (`Platz`);

--
-- Indizes für die Tabelle `relegation`
--
ALTER TABLE `relegation`
  ADD PRIMARY KEY (`Spiele`);

--
-- Indizes für die Tabelle `scorerliste`
--
ALTER TABLE `scorerliste`
  ADD PRIMARY KEY (`Platz`);

--
-- Indizes für die Tabelle `torschuetzenliste`
--
ALTER TABLE `torschuetzenliste`
  ADD PRIMARY KEY (`Platz`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
