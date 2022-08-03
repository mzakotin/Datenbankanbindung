# Datenbankanbindung
# SQL-Code zum Erstellen der Datenbank BuLi_19_20

-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 08. Nov 2021 um 08:35
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
CREATE DATABASE IF NOT EXISTS `fussball_bundesliga_2019_20` DEFAULT CHARACTER SET latin1 COLLATE latin1_german1_ci;
USE `fussball_bundesliga_2019_20`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `abschlusstabelle`
--

CREATE TABLE `abschlusstabelle` (
  `Platz` int(2) NOT NULL,
  `Verein` varchar(30) COLLATE latin1_german1_ci NOT NULL,
  `Spiele` int(2) NOT NULL DEFAULT 34,
  `Siege` int(2) NOT NULL,
  `Unentschieden` int(2) NOT NULL,
  `Niederlagen` int(2) NOT NULL,
  `Tore_und_Gegentore` varchar(6) COLLATE latin1_german1_ci NOT NULL,
  `Tordifferenz` int(3) NOT NULL,
  `Punkte` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `abschlusstabelle`
--

INSERT INTO `abschlusstabelle` (`Platz`, `Verein`, `Spiele`, `Siege`, `Unentschieden`, `Niederlagen`, `Tore_und_Gegentore`, `Tordifferenz`, `Punkte`) VALUES
(1, 'FC_Bayern_Muenchen', 34, 26, 4, 4, '100:32', 68, 82),
(2, 'Borussia_Dortmund', 34, 21, 6, 7, '84:41', 43, 69),
(3, 'RB_Leipzig', 34, 18, 12, 4, '81:37', 44, 66),
(4, 'Borussia_Moenchengladbach', 34, 20, 5, 9, '66:40', 26, 65),
(5, 'Bayer_04_Leverkusen', 34, 19, 6, 9, '61:44', 17, 63),
(6, 'TSG_1899_Hoffenheim', 34, 15, 7, 12, '53:53', 0, 52),
(7, 'VfL_Wolfsburg', 34, 13, 10, 11, '48:46', 2, 49),
(8, 'SC_Freiburg', 34, 13, 9, 12, '48:47', 1, 48),
(9, 'Eintracht_Frankfurt', 34, 13, 6, 15, '59:60', -1, 45),
(10, 'Hertha_BSC', 34, 11, 8, 15, '48:59', -11, 41),
(11, '1_FC_Union_Berlin', 34, 12, 5, 17, '41:58', -17, 41),
(12, 'FC_Schalke_04', 34, 9, 12, 13, '38:58', -20, 39),
(13, '1_FSV_Mainz_05', 34, 11, 4, 19, '44:65', -21, 37),
(14, '1_FC_Koeln', 34, 10, 6, 18, '51:69', -18, 36),
(15, 'FC_Augsburg', 34, 9, 9, 16, '45:63', -18, 36),
(16, 'Werder_Bremen', 34, 8, 7, 19, '42:69', -27, 31),
(17, 'Fortuna_Duesseldorf', 34, 6, 12, 16, '36:67', -31, 30),
(18, 'SC_Paderborn_07', 34, 4, 8, 22, '37:74', -37, 20);

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
-- Indizes für die Tabelle `abschlusstabelle`
--
ALTER TABLE `abschlusstabelle`
  ADD PRIMARY KEY (`Platz`);

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

# Pascal-Programmcode
unit U_BuLi_2019_20;
//Programmname
{$mode objfpc}{$H+}
//grafische Oberfläche (Schnittstelle)
interface

//eingebundene Programmbibliothek, Arten von Komponenten, Objekten und
//Klassen, die in diesem Programm verwendet werden
uses
  Classes, SysUtils, odbcconn, sqldb, db, FileUtil, Forms, Controls, Graphics,
  Dialogs, DBGrids, StdCtrls;

type

  { Tfm_BuLi_2019_20 }
  //Formular mit grafischer Oberfläche und deren Komponenten
  Tfm_BuLi_2019_20 = class(TForm)
    bt_neu: TButton;//Schaltfläche für neue SQL-Abfragen
    Bundesliga_2019_20: TODBCConnection;//ODBC-Datenbankverbindung mit Datenbank
    bt_Start: TButton;//Schaltfläche zum Start der SQL-Abfrage
    bt_beenden: TButton;//Schaltfläche zum Schließen des Formulars
    DBG_Loesung: TDBGrid;//Datenbanktabelle für Lösungen zu den SQL-Abfragen
    //Relationen (Tabellen) aus der eingebundenen Datenbank
    DBG_Scorer: TDBGrid;
    DBG_Vorlagen: TDBGrid;
    DBG_Torschuetzen: TDBGrid;
    DBG_Relegation: TDBGrid;
    DBG_Kreuztabelle: TDBGrid;
    DBG_Abschlusstabelle: TDBGrid;
    //Datenquellen
    DS_Abfrage: TDataSource;
    DS_Scorer: TDataSource;
    DS_Vorlagen: TDataSource;
    DS_Torschuetzen: TDataSource;
    DS_Relegation: TDataSource;
    DS_Kreuztabelle: TDataSource;
    DS_Abschlusstabelle: TDataSource;
    //Eingabefeld für SQL-Abfragen
    Memo_SQL: TMemo;
    //Querys mit den Datenbankabfragen für jede Relation sowie Lösungstabelle
    qu_Abschlusstabelle: TSQLQuery;
    qu_Kreuztabelle: TSQLQuery;
    qu_Relegation: TSQLQuery;
    qu_Torschuetzen: TSQLQuery;
    qu_Vorlagen: TSQLQuery;
    qu_Scorer: TSQLQuery;
    qu_Abfrage: TSQLQuery;
    //Transaktion der in die ODBC_Datenquelle eingebundenen Datenbank
    Trans_BuLi_19_20: TSQLTransaction;
    //Prozeduren für das Klicken auf die jeweilige Schaltfläche (Button)
    //Registerkarte "Ereignisse" im Objektinspektor => OnClick
    procedure bt_beendenClick(Sender: TObject);
    procedure bt_neuClick(Sender: TObject);
    procedure bt_StartClick(Sender: TObject);
    //Prozedur zum Erzeugen des Formulars
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var //Hier wird das Formular immer als globale Variable deklariert.
  fm_BuLi_2019_20: Tfm_BuLi_2019_20;

implementation
//Bereich, wo der Anwender die Befehle selbst eingibt
{$R *.lfm}

{ Tfm_BuLi_2019_20 }

procedure Tfm_BuLi_2019_20.FormCreate(Sender: TObject);
begin
  //Formular erzeugen, durch Doppelklick aufs Formular aufgerufen
  //weitere Option: Registerkarte "Ereignisse" im Objektinspektor => OnCreate
  //Ausrichtung: Abstände von oben sowie links
  top:=10;
  left:=10;
  Memo_SQL.Lines.Add('SELECT ');//Erste Zeile mit "SELECT " wird eingefügt.
  Memo_SQL.Lines.Add('FROM ');//Zweite Zeile mit "FROM " wird eingefügt.
  Memo_SQL.SelStart:=7;{Cursor steht auf der 8. Stelle in der ersten Zeile
  nach dem Wort "SELECT ", welches mitsamt dem darauffolgenden Leerzeichen
  7 Stellen einnimmt}
  //Datenbanktabelle (DataBaseGrid) für Abfragen unsichtbar machen (ausblenden)
  DBG_Loesung.Hide; //DBG_Loesung.Visible:=false;
end;

procedure Tfm_BuLi_2019_20.bt_StartClick(Sender: TObject);
begin
  //Klick auf die Schaltfläche (Button) "Abfrage Starten"

  qu_Abfrage.Active:=false;//Query für Datebankabfrage deaktivieren
  //Text in qu_Abfrage wird ins Eingabefeld Memo_SQL übertragen
  qu_Abfrage.SQL.Text:=Memo_SQL.Text;
  qu_Abfrage.Active:=true;//Query für Datenbankabfragen wieder aktivieren

  //Alle 6 Datenbanktabellen werden ausgeblendet (unsichtbar gemacht).
  DBG_Abschlusstabelle.Hide;//Visible:=false;
  DBG_Kreuztabelle.Hide;//Visible:=false;
  DBG_Relegation.Hide;//Visible:=false;
  DBG_Torschuetzen.Hide;//Visible:=false;
  DBG_Vorlagen.Hide;//Visible:=false;
  DBG_Scorer.Hide; //Visible:=false;
  //Ausblenden des Eingabefeldes Memo_SQL und der Schaltfläche "Abfrage starten"
  Memo_SQL.Hide; //Visible:=false;
  bt_start.Hide; //Visible:=false;
  //Datenbanktabelle für SQL-Lösungen wird eingeblendet (sichtbar gemacht)
  DBG_Loesung.Show;//DBG_Loesung.Visible:=true;
end;

procedure Tfm_BuLi_2019_20.bt_neuClick(Sender: TObject);
begin
  //Klick auf die Schaltfläche (Button) "Neue Abfrage"

  //Datenbanktabellen, Eingabefeld und bt_start wieder einblenden
  DBG_Abschlusstabelle.Show;//Visible:=true;
  DBG_Kreuztabelle.Show;//Visible:=true;
  DBG_Relegation.Show;//Visible:=true;
  DBG_Torschuetzen.Show;//Visible:=true;
  DBG_Vorlagen.Show;//Visible:=true;
  DBG_Scorer.Show;//Visible:=true;
  Memo_SQL.Show;//Visible:=true;
  bt_start.Show;//Visible:=true;
  //Datenbanktabelle für Lösungen wird unsichtbar gemacht (ausgeblendet)
  DBG_Loesung.Hide;//Visible:=false;
  Memo_SQL.Clear;// Inhalt des Eingabefeldes für SQL-Abfragen wird gelöscht
  qu_Abfrage.Active:=false;//Query für die SQL-Abfragen wird deaktiviert
  //SELECT = Auswahl des Datenbank-/Tabellenabschnitts mit dessen Inhalt
  //FROM = betroffene Tabelle/-n, wo der gesuchte Inhalt sich befindet
  Memo_SQL.Lines.Add('SELECT ');//Erste Zeile mit "SELECT " wird eingefügt.
  Memo_SQL.Lines.Add('FROM ');//Zweite Zeile mit "FROM " wird eingefügt.
  Memo_SQL.SetFocus;//Cursor wird wird ins Eingabefeld Memo_SQL gesetzt
  Memo_SQL.SelStart:=7;
  //Cursor steht auf der 8. Stelle in der ersten Zeile nach dem Wort "SELECT ",
  //welches mitsamt dem darauffolgenden Leerzeichen 7 Stellen einnimmt
end;

procedure Tfm_BuLi_2019_20.bt_beendenClick(Sender: TObject);
begin
  fm_BuLi_2019_20.Close;//Schließen des Formulars -> Programm wird beendet
end;

end.



