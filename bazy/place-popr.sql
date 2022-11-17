-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Maj 2021, 11:01
-- Wersja serwera: 10.4.13-MariaDB
-- Wersja PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `place-popr`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dzial`
--

CREATE TABLE `dzial` (
  `numerDzialu` int(3) NOT NULL,
  `nazwaDzialu` varchar(11) DEFAULT NULL,
  `siedziba` varchar(8) DEFAULT NULL,
  `wojewodztwo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dzial`
--

INSERT INTO `dzial` (`numerDzialu`, `nazwaDzialu`, `siedziba`, `wojewodztwo`) VALUES
(10, 'Badania', 'Warszawa', 'Mazowieckie'),
(11, 'Badania', 'Wrocław', 'Dolnośląskie'),
(20, 'Sprzedaż', 'Radom', 'Mazowieckie'),
(21, 'Sprzedaż', 'Kielce', 'Świętokrzyskie'),
(22, 'Sprzedaż', 'Warszawa', 'Mazowieckie'),
(23, 'Sprzedaż', 'Kraków', 'Małopolskie'),
(24, 'Sprzedaż', 'Poznań', 'Wielkopolskie'),
(25, 'Sprzedaż', 'Wrocław', 'Dolnośląskie'),
(26, 'Sprzedaż', 'Lublin', 'Lubelskie'),
(27, 'Sprzedaż', 'Gdańsk', 'Pomorskie'),
(28, 'Sprzedaż', 'Łódź', 'Łódzkie'),
(29, 'Sprzedaż', 'Rzeszów', 'Podkarpackie'),
(30, 'Księgowość', 'Radom', 'Mazowieckie'),
(31, 'Księgowość', 'Kielce', 'Świętokrzyskie'),
(32, 'Księgowość', 'Warszawa', 'Mazowieckie'),
(33, 'Księgowość', 'Kraków', 'Małopolskie'),
(34, 'Księgowość', 'Poznań', 'Wielkopolskie'),
(35, 'Księgowość', 'Wrocław', 'Dolnośląskie'),
(36, 'Księgowość', 'Lublin', 'Lubelskie'),
(37, 'Księgowość', 'Gdańsk', 'Pomorskie'),
(38, 'Księgowość', 'Łódź', 'Łódzkie'),
(39, 'Księgowość', 'Rzeszów', 'Podkarpackie'),
(40, 'Operacje', 'Kraków', 'Małopolskie'),
(41, 'Operacje', 'Warszawa', 'Mazowieckie'),
(42, 'Operacje', 'Gdańsk', 'Pomorskie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `IDPracownika` varchar(12) NOT NULL,
  `Nazwisko` varchar(14) DEFAULT NULL,
  `imie` varchar(11) DEFAULT NULL,
  `IDstanowiska` int(3) DEFAULT NULL,
  `datazatrudnienia` date DEFAULT NULL,
  `pensjazasadnicza` varchar(16) DEFAULT NULL,
  `numerdzialu` int(3) DEFAULT NULL,
  `plec` varchar(1) DEFAULT NULL,
  `przelozony` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`IDPracownika`, `Nazwisko`, `imie`, `IDstanowiska`, `datazatrudnienia`, `pensjazasadnicza`, `numerdzialu`, `plec`, `przelozony`) VALUES
('A-100', 'Kowalczyk', 'Grzegorz', 1, '1991-09-06', '1720', 41, 'M', NULL),
('A-101', 'Chodyra', 'Stefan', 1, '1997-05-17', '2254', 40, 'M', NULL),
('A-102', 'Chojnacki', 'Adam', 1, '2001-01-16', '1700', 41, 'M', NULL),
('A-103', 'Chojnacki', 'Marek', 1, '1996-06-12', '1530', 41, 'M', NULL),
('A-104', 'Czajkowski', 'Jerzy', 1, '1993-04-19', '2185', 40, 'M', NULL),
('A-105', 'Dróżdż', 'Gustaw', 1, '1996-01-24', '1817', 40, 'M', NULL),
('A-106', 'Baran', 'Zbigniew', 1, '2000-07-12', '1790', 41, 'M', NULL),
('A-107', 'Kopycki', 'Gerard', 1, '2001-02-11', '1860', 42, 'M', NULL),
('A-108', 'Dubała', 'Tomasz', 1, '1997-08-24', '1540', 41, 'M', NULL),
('A-109', 'Kowalczyk', 'Jerzy', 1, '1998-06-10', '1910', 41, 'M', NULL),
('A-110', 'Kozakowski', 'Andrzej', 1, '2000-12-09', '1510', 41, 'M', NULL),
('A-112', 'Kozłowski', 'Janusz', 1, '2001-01-02', '1700', 41, 'M', NULL),
('A-114', 'Baryła', 'Daniel', 1, '2000-08-30', '1700', 42, 'M', NULL),
('A-115', 'Barbucha', 'Arnold', 1, '2000-10-08', '1680', 42, 'M', NULL),
('A-116', 'Barankiewicz', 'Piotr', 1, '2001-08-20', '1720', 41, 'M', NULL),
('A-117', 'Grzmil', 'Tomasz', 1, '1990-09-18', '1980', 42, 'M', NULL),
('A-240', 'Kaźmierowska', 'Alicja', 1, '1994-05-19', '1610', 41, 'K', NULL),
('A-241', 'Podsiadło', 'Jadwiga', 1, '1994-07-16', '1620', 41, 'K', NULL),
('A-242', 'Podczasiak', 'Jadwiga', 1, '1992-01-10', '1510', 42, 'K', NULL),
('A-243', 'Piwnik', 'Adam', 1, '2001-06-29', '1770', 42, 'M', NULL),
('A-244', 'Piotrowska', 'Irena', 1, '1993-12-27', '1980', 42, 'K', NULL),
('A-245', 'Pisarska', 'Alicja', 1, '2000-04-14', '1670', 42, 'K', NULL),
('A-255', 'Pigulski', 'Leszek', 1, '1998-02-27', '1550', 42, 'M', NULL),
('A-256', 'Szymczyk', 'Małgorzata', 1, '2000-04-09', '1910', 41, 'K', NULL),
('A-311', 'Ogonowski', 'Ireneusz', 1, '1997-04-11', '1750', 41, 'M', NULL),
('A-312', 'Rejkowicz', 'Maria', 1, '1998-10-24', '1886', 40, 'K', NULL),
('A-313', 'Porzucek', 'Marzena', 1, '1991-09-26', '1650', 41, 'K', NULL),
('A-314', 'Król', 'Danuta', 1, '1994-04-04', '1630', 41, 'K', NULL),
('A-315', 'Misztal', 'Henryk', 1, '1996-09-06', '1900', 41, 'M', NULL),
('A-316', 'Ławniczek', 'Janusz', 1, '2002-07-30', '1960', 41, 'M', NULL),
('A-317', 'Kupis', 'Lesław', 1, '1998-03-04', '1900', 41, 'M', NULL),
('A-318', 'Jedlikowski', 'Roman', 1, '2001-06-08', '1950', 42, 'M', NULL),
('A-319', 'Okla', 'Elżbieta', 1, '1995-04-22', '1640', 42, 'K', NULL),
('A-778', 'Nowak', 'Wiesław', 1, '1995-02-04', '1920.5', 40, 'M', NULL),
('A-779', 'Falek', 'Robert', 1, '2000-01-05', '1590', 41, 'M', NULL),
('D-210', 'Barańska', 'Teresa', 2, '2000-08-23', '1740', 41, 'K', NULL),
('D-211', 'Barański', 'Waldemar', 2, '1996-05-06', '1860', 42, 'M', NULL),
('D-212', 'Barszczewski', 'Karol', 2, '1999-10-25', '1620', 41, 'M', NULL),
('D-213', 'Bartosiak', 'Kazimiera', 2, '1996-06-18', '2000', 41, 'K', NULL),
('D-214', 'Bartel', 'Ewa', 2, '1993-08-27', '2311.5', 40, 'K', NULL),
('D-215', 'Bartosiewicz', 'Eliza', 2, '1997-03-07', '1851.5', 40, 'K', NULL),
('D-216', 'Wochniak', 'Jan', 2, '1998-01-03', '1880', 41, 'M', NULL),
('D-344', 'Włodarski', 'Krzysztof', 2, '1996-02-24', '1820', 41, 'M', NULL),
('D-345', 'Włodarczyk', 'Zdzisława', 2, '1994-04-28', '1710', 41, 'K', NULL),
('D-346', 'Wilk', 'Wiesława', 2, '1995-12-22', '2208', 40, 'K', NULL),
('D-477', 'Warnawin', 'Jarosław', 2, '1996-07-31', '1780', 42, 'M', NULL),
('D-478', 'Truszkowski', 'Kazimierz', 2, '2000-04-02', '1920', 41, 'M', NULL),
('D-479', 'Stańczyk', 'Krystyna', 2, '1993-11-08', '2090', 42, 'K', NULL),
('D-521', 'Różycki', 'Edmund', 2, '1997-11-15', '1920', 41, 'M', NULL),
('D-522', 'Nosowski', 'Edward', 2, '2002-05-23', '1880', 41, 'M', NULL),
('D-523', 'Banaś', 'Henryk', 2, '1994-08-28', '1770', 42, 'M', NULL),
('D-524', 'Adamski', 'Ryszard', 2, '1997-07-02', '1610', 41, 'M', NULL),
('I-110', 'Bajda', 'Marcin', 3, '1992-12-16', '1860', 10, 'M', NULL),
('I-111', 'Bajer', 'Stefan', 3, '1990-06-16', '1860', 11, 'M', NULL),
('I-112', 'Balcer', 'Iwona', 3, '1991-05-04', '1560', 11, 'K', NULL),
('I-113', 'Balcerzak', 'Ilona', 3, '1992-09-30', '1940', 11, 'K', NULL),
('I-114', 'Balcerowska', 'Iwona', 3, '1997-08-28', '1770', 11, 'K', NULL),
('I-120', 'Balicki', 'Michał', 3, '2001-04-25', '1730', 10, 'M', NULL),
('I-122', 'Banach', 'Dorota', 3, '1991-11-15', '1650', 10, 'K', NULL),
('I-123', 'Banaczek', 'Wanda', 3, '1995-10-29', '1730', 10, 'K', NULL),
('I-124', 'Banaszczyk', 'Adrian', 3, '2001-03-18', '1800', 10, 'M', NULL),
('I-131', 'Bańkowska', 'Jolanta', 3, '1990-04-24', '1830', 10, 'K', NULL),
('I-133', 'Nowak', 'Adam', 3, '1996-08-07', '1800', 10, 'M', NULL),
('I-134', 'Abramczyk', 'Adam', 3, '1994-02-24', '1740', 10, 'M', NULL),
('I-135', 'Adamczyk', 'Karolina', 3, '1991-07-21', '1880', 10, 'K', NULL),
('I-145', 'Adamczyk', 'Irena', 3, '1995-10-27', '1960', 10, 'K', NULL),
('I-146', 'Adamiec', 'Witold', 3, '1996-11-09', '1840', 10, 'M', NULL),
('I-201', 'Adamiec', 'Ewa', 3, '2002-06-05', '1660', 10, 'K', NULL),
('I-202', 'Adamowicz', 'Jan', 3, '2000-11-23', '1830', 10, 'M', NULL),
('I-203', 'Adamowicz', 'Adam', 3, '2002-04-17', '1920', 10, 'M', NULL),
('I-204', 'Bańkowski', 'Ireneusz', 3, '1997-03-17', '1530', 11, 'M', NULL),
('I-208', 'Barabasz', 'Krystyna', 3, '1999-08-06', '1870', 10, 'K', NULL),
('I-210', 'Baran', 'Leon', 3, '1992-08-20', '1830', 10, 'M', NULL),
('I-215', 'Bińkowski', 'Artur', 3, '2002-03-25', '1780', 10, 'M', NULL),
('I-216', 'Chaberek', 'Stanisława', 3, '2002-01-14', '1730', 10, 'K', NULL),
('I-217', 'Cichawa', 'Dorota', 3, '2001-05-13', '1550', 10, 'K', NULL),
('I-221', 'Cichocki', 'Wojciech', 3, '1999-04-26', '1640', 10, 'M', NULL),
('I-222', 'Cichocka', 'Anna', 3, '1998-01-05', '1540', 10, 'K', NULL),
('I-223', 'Michajłow', 'Maria', 3, '1990-04-28', '1840', 11, 'K', NULL),
('I-224', 'Krul', 'Krzysztof', 3, '1995-06-08', '1890', 10, 'M', NULL),
('I-225', 'Krok', 'Krzysztof', 3, '1990-01-11', '1990', 11, 'M', NULL),
('I-226', 'Ościk', 'Marianna', 3, '2001-10-26', '1560', 11, 'K', NULL),
('I-227', 'Blicharska', 'Maria', 3, '2000-07-19', '1910', 10, 'K', NULL),
('I-228', 'Bzinkowski', 'Edward', 3, '1998-06-26', '1610', 10, 'M', NULL),
('I-230', 'Wiek', 'Jadwiga', 3, '1994-12-25', '1720', 10, 'K', NULL),
('I-255', 'Deska', 'Ewa', 3, '1998-07-30', '1540', 10, 'K', NULL),
('I-256', 'Długoborska', 'Agnieszka', 3, '2001-08-13', '1670', 10, 'K', NULL),
('I-257', 'Pastuszka', 'Marzena', 3, '2000-08-17', '1890', 11, 'K', NULL),
('I-264', 'Jakus', 'Mirosław', 3, '1992-12-04', '1850', 10, 'M', NULL),
('I-265', 'Różyńska', 'Ewa', 3, '1995-04-03', '1880', 10, 'K', NULL),
('I-266', 'Gruszczyńska', 'Irena', 3, '1996-07-18', '1630', 11, 'K', NULL),
('I-271', 'Jaros', 'Jolanta', 3, '2002-03-26', '1680', 10, 'K', NULL),
('I-272', 'Idzik', 'Anna', 3, '2000-12-07', '1540', 10, 'K', NULL),
('I-273', 'Wesołowska', 'Ewa', 3, '2001-10-09', '1540', 10, 'K', NULL),
('I-274', 'Papier', 'Stanisław', 3, '1992-10-29', '1530', 10, 'M', NULL),
('I-285', 'Skórska', 'Anna', 3, '2001-05-20', '1710', 10, 'K', NULL),
('I-286', 'Tekiela', 'Zofia', 3, '2001-08-17', '1500', 11, 'K', NULL),
('I-287', 'Szymańska', 'Zofia', 3, '2000-08-16', '1930', 11, 'K', NULL),
('IDPracownika', 'Nazwisko', 'imie', 0, '0000-00-00', 'pensjazasadnicza', 0, 'M', NULL),
('K-255', 'Bielawski', 'Marcin', 4, '1996-05-22', '2170', 26, 'M', NULL),
('K-278', 'Sadza', 'Mieczysław', 4, '1999-02-06', '1940', 25, 'M', NULL),
('K-293', 'Dulęba', 'Anna', 4, '1991-08-04', '2150', 27, 'K', NULL),
('K-313', 'Berezowski', 'Adam', 4, '1999-03-24', '1880', 28, 'M', NULL),
('K-335', 'Duralski', 'Tadeusz', 4, '1991-01-28', '1810', 10, 'M', NULL),
('K-339', 'Sitarek', 'Zbigniew', 4, '1998-07-21', '1760', 11, 'M', NULL),
('K-343', 'Antos', 'Hanna', 4, '1999-05-04', '1970', 29, 'K', NULL),
('K-347', 'Filipiak', 'Jarosław', 4, '2002-07-11', '1700', 39, 'M', NULL),
('K-376', 'Baryła', 'Cezary', 4, '2002-09-27', '1930', 30, 'M', NULL),
('K-452', 'Bartkowiak', 'Lucjan', 4, '1994-03-15', '2089.5', 31, 'M', NULL),
('K-473', 'Pietruszka', 'Zenon', 4, '2000-11-05', '1900', 32, 'M', NULL),
('K-478', 'Janas', 'Edward', 4, '1999-11-22', '1890', 20, 'M', NULL),
('K-488', 'Deja', 'Magdalena', 4, '1992-02-03', '2403.5', 33, 'K', NULL),
('K-511', 'Budzisz', 'Teresa', 4, '1999-06-20', '2440', 34, 'K', NULL),
('K-523', 'Otwinowski', 'Wojciech', 4, '1994-01-08', '1730', 35, 'M', NULL),
('K-539', 'Majewska', 'Dorota', 4, '1999-02-08', '1910', 36, 'K', NULL),
('K-589', 'Majcher', 'Jerzy', 4, '1997-10-26', '1995', 21, 'M', NULL),
('K-605', 'Goraj', 'Marianna', 4, '1999-04-14', '2050', 37, 'K', NULL),
('K-639', 'Pietrzyk', 'Anita', 4, '1991-12-28', '2410', 24, 'K', NULL),
('K-691', 'Śliż', 'Paweł', 4, '1993-05-30', '1860', 38, 'M', NULL),
('K-769', 'Barański', 'Adam', 4, '1993-12-22', '2180', 22, 'M', NULL),
('K-778', 'Zawodnik', 'Jan', 4, '1995-02-08', '2208', 23, 'M', NULL),
('K-779', 'Wojtas', 'Jacek', 4, '2002-09-04', '2150', 39, 'M', NULL),
('K-816', 'Lipiński', 'Jerzy', 4, '2002-01-28', '2012.5', 40, 'M', NULL),
('K-836', 'Malecka', 'Stanisława', 4, '2002-10-19', '1820', 41, 'K', NULL),
('K-920', 'Jakubczyk', 'Henryk', 4, '1994-01-15', '1780', 42, 'M', NULL),
('Ki-112', 'Nawrot', 'Janusz', 5, '1994-06-16', '1400', 10, 'M', NULL),
('Ki-113', 'Budzisz', 'Karol', 5, '1995-12-24', '1450', 10, 'M', NULL),
('Ki-178', 'Adamski', 'Jerzy', 5, '1995-12-28', '1120', 20, 'M', NULL),
('Ki-203', 'Czarnecki', 'Adam', 5, '2000-10-24', '1170', 10, 'M', NULL),
('Ki-226', 'Adamski', 'Paweł', 5, '1991-05-14', '1490', 20, 'M', NULL),
('Ki-227', 'Prokop', 'Piotr', 5, '1995-12-12', '1090', 20, 'M', NULL),
('Ki-247', 'Andrzejewski', 'Jerzy', 5, '1990-10-31', '1123.5', 21, 'M', NULL),
('Ki-251', 'Iwański', 'Roman', 5, '1994-07-17', '1302', 21, 'M', NULL),
('Ki-253', 'Adamiec', 'Jan', 5, '1997-01-14', '1270.5', 21, 'M', NULL),
('Ki-256', 'Adamus', 'Wiktor', 5, '2002-10-18', '1396.5', 21, 'M', NULL),
('Ki-268', 'Antos', 'Krystian', 5, '1990-07-28', '1281', 21, 'M', NULL),
('Ki-270', 'Baranowski', 'Ryszard', 5, '1995-01-26', '1090', 22, 'M', NULL),
('Ki-271', 'Babiarz', 'Waldemar', 5, '1995-06-28', '1220', 22, 'M', NULL),
('Ki-272', 'Augustyniak', 'Piotr', 5, '1997-05-15', '1330', 22, 'M', NULL),
('Ki-276', 'Figurski', 'Krzysztof', 5, '1997-09-24', '1020', 22, 'M', NULL),
('Ki-279', 'Majchrowicz', 'Stanisław', 5, '2001-09-30', '1090', 22, 'M', NULL),
('Ki-284', 'Tutaj', 'Tomasz', 5, '2000-05-18', '1440', 22, 'M', NULL),
('Ki-335', 'Antczak', 'Jerzy', 5, '1999-01-10', '1060', 22, 'M', NULL),
('Ki-345', 'Barczyk', 'Cezary', 5, '1999-06-20', '1506.5', 23, 'M', NULL),
('Ki-349', 'Bargieł', 'Dionizy', 5, '2000-02-01', '1414.5', 23, 'M', NULL),
('Ki-351', 'Bartosik', 'Kazimierz', 5, '1993-06-28', '1380', 23, 'M', NULL),
('Ki-352', 'Bartoś', 'Bolesław', 5, '1997-10-07', '1400', 24, 'M', NULL),
('Ki-358', 'Baryłka', 'Antoni', 5, '1991-02-11', '1320', 24, 'M', NULL),
('Ki-359', 'Biały', 'Leszek', 5, '1993-05-30', '1320', 25, 'M', NULL),
('Ki-360', 'Tkacz', 'Adam', 5, '1997-08-28', '1420', 25, 'M', NULL),
('Ki-361', 'Bednarz', 'Józef', 5, '1991-02-20', '1410', 25, 'M', NULL),
('Ki-364', 'Bednarek', 'Stanisłąw', 5, '1999-11-07', '1130', 25, 'M', NULL),
('Ki-365', 'Bitner', 'Halina', 5, '1990-05-29', '1290', 26, 'K', NULL),
('Ki-378', 'Krakowiak', 'Piotr', 5, '1995-06-16', '1360', 26, 'M', NULL),
('Ki-380', 'Burda', 'Kazimierz', 5, '1998-07-12', '1210', 27, 'M', NULL),
('Ki-381', 'Cabaj', 'Włodzimierz', 5, '1990-01-16', '1110', 27, 'M', NULL),
('Ki-415', 'Bujanowicz', 'Anna', 5, '1994-02-13', '1320', 27, 'K', NULL),
('Ki-418', 'Celej', 'Zenon', 5, '2000-01-20', '1210', 28, 'M', NULL),
('Ki-419', 'Cegłowski', 'Urban', 5, '2001-08-26', '1340', 28, 'M', NULL),
('Ki-501', 'Celiński', 'Stefan', 5, '1993-06-24', '1410', 28, 'M', NULL),
('Ki-502', 'Chamerski', 'Jan', 5, '1990-06-13', '1090', 29, 'M', NULL),
('Ki-503', 'Kołodziejczyk', 'Sylwester', 5, '1991-03-14', '1080', 29, 'M', NULL),
('Ki-506', 'Ceja', 'Andrzej', 5, '1993-12-27', '1220', 29, 'M', NULL),
('Ki-508', 'Banasik', 'Antoni', 5, '1993-05-06', '1200', 29, 'M', NULL),
('Ki-522', 'Banasik', 'Paweł', 5, '1990-10-20', '1357', 40, 'M', NULL),
('Ki-578', 'Adamczyk', 'Piotr', 5, '1990-09-05', '1460', 41, 'M', NULL),
('Ki-580', 'Banderas', 'Edward', 5, '2002-04-13', '1350', 42, 'M', NULL),
('Ks-257', 'Banasik', 'Zofia', 6, '1994-08-04', '1540', 30, 'K', NULL),
('Ks-332', 'Bańkowska', 'Irena', 6, '2000-02-24', '1380', 37, 'K', NULL),
('Ks-345', 'Andrzejewska', 'Barbara', 6, '1997-05-24', '1585.5', 31, 'K', NULL),
('Ks-357', 'Banasiak', 'Paulina', 6, '1997-01-27', '1330', 35, 'K', NULL),
('Ks-360', 'Bauer', 'Józefina', 6, '1997-03-21', '1495', 33, 'K', NULL),
('Ks-361', 'Baryłko', 'Józef', 6, '1992-09-30', '1600', 32, 'M', NULL),
('Ks-378', 'Michalec', 'Aleksandra', 6, '1997-11-21', '1880', 34, 'K', NULL),
('Ks-395', 'Bedyński', 'Marcin', 6, '2001-01-17', '1700', 34, 'M', NULL),
('Ks-415', 'Bębenek', 'Karolina', 6, '1991-08-22', '1560', 35, 'K', NULL),
('Ks-420', 'Białek', 'Paulina', 6, '1999-08-21', '1780', 36, 'K', NULL),
('Ks-433', 'Białczak', 'Jerzy', 6, '2001-02-20', '1370', 37, 'M', NULL),
('Ks-438', 'Białowąs', 'Marcin', 6, '2001-09-23', '1360', 38, 'M', NULL),
('Ks-523', 'Biedrzyńska', 'Joanna', 6, '1995-04-12', '1390', 39, 'K', NULL),
('Ks-580', 'Baryłkiewicz', 'Klemens', 6, '1995-04-18', '1730', 32, 'M', NULL),
('Ks-778', 'Kowalski', 'Damian', 6, '1993-08-09', '1660', 32, 'M', NULL),
('Ks-779', 'Baka', 'Janusz', 6, '1991-04-05', '1540', 32, 'M', NULL),
('O-102', 'Andrzejewska', 'Anna', 7, '1993-04-27', '1575.5', 40, 'K', NULL),
('O-103', 'Augustyniak', 'Barbara', 7, '2000-09-15', '1420', 41, 'K', NULL),
('O-104', 'Babula', 'Jan', 7, '2000-01-27', '1300', 41, 'M', NULL),
('O-105', 'Barszcz', 'Zofia', 7, '2002-06-13', '1210', 41, 'K', NULL),
('O-106', 'Barszcz', 'Halina', 7, '2002-06-10', '1410', 41, 'K', NULL),
('O-107', 'Barszcz', 'Adam', 7, '2002-07-26', '1679', 40, 'M', NULL),
('O-108', 'Barszcz', 'Paweł', 7, '1991-12-20', '1390', 42, 'M', NULL),
('O-109', 'Badowska', 'Danuta', 7, '2000-10-21', '1190', 42, 'K', NULL),
('O-110', 'Badowski', 'Bronisław', 7, '1995-05-31', '1575.5', 40, 'M', NULL),
('O-111', 'Bajer', 'Alfred', 7, '1996-04-28', '1110', 42, 'M', NULL),
('O-112', 'Bajer', 'Irena', 7, '1990-01-12', '1495', 40, 'K', NULL),
('O-113', 'Balicki', 'Krzysztof', 7, '1997-08-28', '1170', 41, 'M', NULL),
('O-115', 'Banach', 'Paweł', 7, '1991-08-21', '1390', 41, 'M', NULL),
('O-118', 'Banach', 'Zofia', 7, '2002-04-23', '1161.5', 40, 'K', NULL),
('O-119', 'Bansik', 'Piotr', 7, '1999-12-28', '1300', 41, 'M', NULL),
('O-120', 'Banaszczyk', 'Barbara', 7, '1997-08-08', '1100', 41, 'K', NULL),
('O-121', 'Banaszek', 'Bolesław', 7, '1993-09-24', '1150', 41, 'M', NULL),
('O-122', 'Banaszek', 'Celina', 7, '1994-10-25', '1400', 41, 'K', NULL),
('O-123', 'Bańka', 'Halina', 7, '1991-01-13', '1110', 41, 'K', NULL),
('O-124', 'Baranek', 'Ludmiła', 7, '2000-05-05', '1310', 41, 'K', NULL),
('O-133', 'Baranek', 'Olgierd', 7, '1990-09-03', '1480', 42, 'M', NULL),
('O-134', 'Baranowski', 'Paweł', 7, '2001-04-17', '1270', 42, 'M', NULL),
('O-135', 'Baranowska', 'Paulina', 7, '1994-04-20', '1430', 41, 'K', NULL),
('O-136', 'Baranowska', 'Stanisława', 7, '1991-01-23', '1190', 41, 'K', NULL),
('O-137', 'Barcikowski', 'Zenon', 7, '1997-05-05', '1210', 41, 'M', NULL),
('O-138', 'Barcikowska', 'Zyta', 7, '1998-12-26', '1529.5', 40, 'K', NULL),
('O-139', 'Barska', 'Alina', 7, '1996-09-07', '1495', 40, 'K', NULL),
('O-140', 'Bartnik', 'Feliks', 7, '1997-01-20', '1380', 40, 'M', NULL),
('O-145', 'Barwicka', 'Zofia', 7, '1995-10-06', '1020', 41, 'K', NULL),
('O-146', 'Basiński', 'Artur', 7, '2002-08-22', '1250', 41, 'M', NULL),
('O-147', 'Bawarski', 'Stefan', 7, '1996-11-23', '1430', 41, 'M', NULL),
('O-148', 'Bąba', 'Marcelina', 7, '2000-10-18', '1020', 41, 'K', NULL),
('O-149', 'Bączkowski', 'Adam', 7, '1991-08-21', '1460', 42, 'M', NULL),
('O-150', 'Bąk', 'Zdzisław', 7, '1993-01-28', '1040', 41, 'M', NULL),
('O-224', 'Bednarski', 'Marek', 7, '1996-09-11', '1200', 41, 'M', NULL),
('O-225', 'Białas', 'Artur', 7, '1993-10-07', '1010', 41, 'M', NULL),
('O-226', 'Bielec', 'Maria', 7, '2002-04-30', '1120', 41, 'K', NULL),
('O-227', 'Bińkowska', 'Izabela', 7, '1998-11-27', '1598.5', 40, 'K', NULL),
('O-228', 'Chlebuś', 'Adam', 7, '1996-06-05', '1210', 42, 'M', NULL),
('O-254', 'Szczygielski', 'Tadeusz', 7, '1993-09-17', '1184.5', 40, 'M', NULL),
('O-255', 'Stępień', 'Robert', 7, '1999-12-03', '1495', 40, 'M', NULL),
('O-317', 'Sławińska', 'Magdalena', 7, '2002-03-26', '1276.5', 40, 'K', NULL),
('O-318', 'Skowroński', 'Waldemar', 7, '1996-10-10', '1240', 41, 'M', NULL),
('O-319', 'Setniewska', 'Władysława', 7, '2000-06-06', '1170', 42, 'K', NULL),
('O-327', 'Marasek', 'Jan', 7, '1999-11-01', '1449', 40, 'M', NULL),
('O-328', 'Małek', 'Jan', 7, '2001-11-06', '1403', 40, 'M', NULL),
('O-329', 'Maciejczyk', 'Małgorzata', 7, '2000-07-30', '1253.5', 40, 'K', NULL),
('O-352', 'Łojek', 'Stanisław', 7, '1993-11-19', '1430', 42, 'M', NULL),
('O-356', 'Lipiński', 'Franciszek', 7, '1992-07-09', '1130', 41, 'M', NULL),
('O-358', 'Kuśmierczyk', 'Zbigniew', 7, '2000-05-06', '1080', 42, 'M', NULL),
('O-360', 'Kunka', 'Zbigniew', 7, '1998-03-02', '1490', 42, 'M', NULL),
('O-361', 'Zeller', 'Teresa', 7, '1994-04-07', '1391.5', 40, 'K', NULL),
('O-362', 'Gruszczyńska', 'Magdalena', 7, '1998-03-18', '1310', 42, 'K', NULL),
('O-363', 'Zychowicz', 'Tomasz', 7, '1997-10-08', '1260', 42, 'M', NULL),
('P-100', 'Kral', 'Artur', 8, '1991-08-13', '4650', 10, 'M', NULL),
('P-101', 'Baron', 'Jolanta', 12, '1990-02-04', '2990', 10, 'K', NULL),
('P-102', 'Batory', 'Stefan', 12, '1997-01-19', '2500', 10, 'M', NULL),
('P-103', 'Skoczkowski', 'Edmund', 12, '1990-12-18', '2510', 10, 'M', NULL),
('R-400', 'Barszczewska', 'Cecylia', 9, '1992-12-05', '1230', 22, 'K', NULL),
('R-401', 'Badowska', 'Małgorzata', 9, '1993-05-08', '1596', 21, 'K', NULL),
('R-402', 'Bajda', 'Antoni', 9, '2000-11-03', '1120', 20, 'M', NULL),
('R-403', 'Balcerek', 'Zofia', 9, '2001-08-21', '1350', 25, 'K', NULL),
('R-404', 'Banasiewicz', 'Beata', 9, '1994-06-01', '1330', 38, 'K', NULL),
('R-405', 'Banasiewicz', 'Irena', 9, '1996-08-15', '1310', 39, 'K', NULL),
('R-406', 'Bandera', 'Daniel', 9, '2002-09-08', '1541', 33, 'M', NULL),
('R-420', 'Bandera', 'Ewa', 9, '1990-03-10', '1386', 31, 'K', NULL),
('R-421', 'Banderas', 'Grażyna', 9, '2000-10-16', '1560', 30, 'K', NULL),
('R-422', 'Banel', 'Grzegorz', 9, '1994-07-13', '1240', 29, 'M', NULL),
('R-423', 'Barankiewicz', 'Olga', 9, '1997-02-11', '1170', 35, 'K', NULL),
('R-455', 'Bargiel', 'Danuta', 9, '2000-01-18', '1160', 27, 'K', NULL),
('R-456', 'Bartosz', 'Krystyna', 9, '1995-01-16', '1520', 24, 'K', NULL),
('R-457', 'Bartosińska', 'Ewa', 9, '2002-04-01', '1621.5', 23, 'K', NULL),
('R-458', 'Cieślik', 'Jolanta', 9, '1997-01-08', '1500', 32, 'K', NULL),
('R-459', 'Mirecki', 'Jan', 9, '1993-06-11', '1240', 32, 'M', NULL),
('R-512', 'Orlik', 'Ryszard', 9, '1997-05-31', '1750', 34, 'M', NULL),
('R-517', 'Olszewski', 'Konrad', 9, '1996-04-18', '1200', 36, 'M', NULL),
('R-518', 'Sylwar', 'Jerzy', 9, '1995-08-17', '1310', 37, 'M', NULL),
('R-519', 'Nowak', 'Anna', 9, '1995-03-22', '1590', 28, 'K', NULL),
('R-566', 'Amanowicz', 'Arkadiusz', 9, '1992-12-04', '1520', 26, 'M', NULL),
('S-103', 'Aleksander', 'Krzysztof', 10, '1994-06-11', '1500', 24, 'M', NULL),
('S-104', 'Babiarz', 'Anna', 10, '1994-02-16', '1140', 25, 'K', NULL),
('S-105', 'Barnaś', 'Mieczysław', 10, '1995-04-14', '1100', 22, 'M', NULL),
('S-112', 'Banaszkiewicz', 'Dorota', 10, '1991-11-23', '1483.5', 23, 'K', NULL),
('S-113', 'Karcz', 'Barbara', 10, '1990-07-10', '1660', 24, 'K', NULL),
('S-114', 'Bielawska', 'Małgorzata', 10, '2000-01-30', '1300', 24, 'K', NULL),
('S-118', 'Aleksandrowicz', 'Krystyna', 10, '1994-06-30', '1140', 29, 'K', NULL),
('S-119', 'Berezowska', 'Anita', 10, '1995-12-08', '1150', 25, 'K', NULL),
('S-120', 'Rychta', 'Leszek', 10, '1999-02-03', '1345.5', 23, 'M', NULL),
('S-121', 'Misiak', 'Tomasz', 10, '2000-02-14', '1020', 22, 'M', NULL),
('S-125', 'Bednarczyk', 'Anna', 10, '1992-05-02', '1180', 20, 'K', NULL),
('S-126', 'Bąk', 'Grażyna', 10, '1998-07-26', '1230', 25, 'K', NULL),
('S-128', 'Bączkowska', 'Zofia', 10, '1997-01-04', '1490', 28, 'K', NULL),
('S-130', 'Bąbalski', 'Kazimierz', 10, '1995-07-24', '1280', 27, 'M', NULL),
('S-132', 'Bazydło', 'Marcin', 10, '1996-08-23', '1322.5', 23, 'M', NULL),
('S-133', 'Bator', 'Marta', 10, '1997-05-19', '1220', 28, 'K', NULL),
('S-134', 'Basiak', 'Anna', 10, '1998-01-03', '1330', 25, 'K', NULL),
('S-136', 'Brzezińska', 'Mirosława', 10, '1991-02-25', '1414.5', 23, 'K', NULL),
('S-137', 'Bardzio', 'Celina', 10, '1992-04-23', '1323', 21, 'K', NULL),
('S-138', 'Bisiński', 'Adam', 10, '1993-10-28', '1470', 22, 'M', NULL),
('S-139', 'Banaszkiewicz', 'Czesław', 10, '1991-12-06', '1360', 27, 'M', NULL),
('S-140', 'Banasik', 'Igor', 10, '1994-06-01', '1276.5', 23, 'M', NULL),
('S-142', 'Batycka', 'Celina', 10, '1991-01-02', '1010', 22, 'K', NULL),
('S-143', 'Błaszczyk', 'Maria', 10, '1999-12-13', '1490', 22, 'K', NULL),
('S-145', 'Balcerowski', 'Krystian', 10, '1992-10-24', '1260', 28, 'M', NULL),
('S-146', 'Babula', 'Barbara', 10, '1997-08-07', '1390', 26, 'K', NULL),
('S-147', 'Antos', 'Mieczysław', 10, '1999-12-29', '1490', 20, 'M', NULL),
('S-148', 'Antos', 'Karolina', 10, '2002-02-10', '1310', 29, 'K', NULL),
('S-150', 'Antos', 'Adam', 10, '1993-07-22', '1060', 28, 'M', NULL),
('S-188', 'Antos', 'Agnieszka', 10, '1998-04-28', '1250', 27, 'K', NULL),
('S-190', 'Antonkiewicz', 'Zofia', 10, '1994-12-04', '1490', 27, 'K', NULL),
('S-191', 'Alot', 'Adam', 10, '1996-02-25', '1400', 28, 'M', NULL),
('S-193', 'Alot', 'Zofia', 10, '1994-02-19', '1270', 25, 'K', NULL),
('S-205', 'Aleksandrowicz', 'Michał', 10, '1993-07-08', '1280', 25, 'M', NULL),
('S-206', 'Bartoszek', 'Adam', 10, '1991-08-24', '1110', 25, 'M', NULL),
('S-209', 'Kasińska', 'Stanisława', 10, '1998-07-31', '1730', 24, 'K', NULL),
('S-218', 'Bronikowska', 'Barbara', 10, '1993-02-14', '1330', 22, 'K', NULL),
('S-224', 'Medyńska', 'Barbara', 10, '2000-11-23', '1134', 21, 'K', NULL),
('S-226', 'Marzec', 'Anna', 10, '1996-09-09', '1330', 20, 'K', NULL),
('S-268', 'Michalska', 'Barbara', 10, '1997-12-03', '1330', 29, 'K', NULL),
('S-269', 'Kukulska', 'Mariola', 10, '1996-03-15', '1050', 28, 'K', NULL),
('S-270', 'Michalska', 'Dioniza', 10, '2001-02-05', '1426', 23, 'K', NULL),
('S-271', 'Chmielarz', 'Lidia', 10, '1998-12-15', '1010', 27, 'K', NULL),
('S-289', 'Majka', 'Danuta', 10, '2001-06-21', '1170', 29, 'K', NULL),
('S-295', 'Kumór', 'Grażyna', 10, '2000-05-03', '1100', 27, 'K', NULL),
('S-296', 'Grzesik', 'Zofia', 10, '1995-12-20', '1020', 25, 'K', NULL),
('S-300', 'Biegaj', 'Danuta', 10, '1991-11-06', '1345.5', 23, 'K', NULL),
('S-302', 'Ksel', 'Krzysztof', 10, '1990-08-25', '1740', 24, 'M', NULL),
('S-303', 'Swoboda', 'Krystyna', 10, '1994-10-21', '1218', 21, 'K', NULL),
('S-304', 'Sznyrowska', 'Wiesława', 10, '1993-03-24', '1280', 25, 'K', NULL),
('S-311', 'Barański', 'Tadeusz', 10, '1996-11-12', '1760', 24, 'M', NULL),
('S-312', 'Rybicka', 'Mieczysława', 10, '1992-11-18', '1420', 22, 'K', NULL),
('S-313', 'Białowąs', 'Halina', 10, '1999-04-02', '1560', 24, 'K', NULL),
('S-314', 'Białecka', 'Agnieszka', 10, '1995-12-17', '1490', 24, 'K', NULL),
('S-315', 'Białek', 'Karol', 10, '1992-01-30', '1081.5', 21, 'M', NULL),
('S-316', 'Kuc', 'Danuta', 10, '1993-06-13', '1470', 22, 'K', NULL),
('S-317', 'Bąkała', 'Celina', 10, '1996-03-15', '1190', 22, 'K', NULL),
('S-318', 'Bak', 'Klementyna', 10, '1997-12-14', '1310', 24, 'K', NULL),
('S-320', 'Basaj', 'Zenobiusz', 10, '1997-03-03', '1010', 27, 'M', NULL),
('S-321', 'Bartodziej', 'Jan', 10, '1999-11-28', '1541', 23, 'M', NULL),
('S-322', 'Barski', 'Zenon', 10, '1994-07-31', '1470', 22, 'M', NULL),
('S-323', 'Kubiak', 'Aleksandra', 10, '1998-02-19', '1150', 22, 'K', NULL),
('S-325', 'Barszczewska', 'Anna', 10, '1995-06-27', '1060', 25, 'K', NULL),
('S-328', 'Bąkowski', 'Roman', 10, '1997-03-17', '1150', 25, 'M', NULL),
('S-329', 'Alot', 'Krzysztof', 10, '1997-06-01', '1320', 28, 'M', NULL),
('S-330', 'Banasiewicz', 'Andrzej', 10, '2002-08-08', '1760', 24, 'M', NULL),
('S-331', 'Banasiak', 'Piotr', 10, '1993-04-09', '1270', 25, 'M', NULL),
('S-332', 'Bajda', 'Ewelina', 10, '1993-10-10', '1360', 28, 'K', NULL),
('S-333', 'Augustyn', 'Zofia', 10, '2002-06-26', '1702', 23, 'K', NULL),
('S-334', 'Andrzejewski', 'Adam', 10, '1998-06-20', '1010', 27, 'M', NULL),
('S-335', 'Barańska', 'Urszula', 10, '2001-10-31', '1490', 24, 'K', NULL),
('S-345', 'Haruza', 'Helena', 10, '1996-01-30', '1491', 21, 'K', NULL),
('S-346', 'Barczewski', 'Adam', 10, '1998-03-12', '1280', 26, 'M', NULL),
('S-347', 'Wierzbińska', 'Anna', 10, '1999-05-22', '1070', 22, 'K', NULL),
('S-348', 'Grdulska', 'Danuta', 10, '1996-05-21', '1150', 22, 'K', NULL),
('S-349', 'Grzywacz', 'Wanda', 10, '1999-06-14', '1310', 22, 'K', NULL),
('S-409', 'Morąg', 'Krystyna', 10, '1993-08-24', '1090', 25, 'K', NULL),
('S-459', 'Pawłowska', 'Danuta', 10, '1994-10-05', '1140', 26, 'K', NULL),
('S-485', 'Wota', 'Anita', 10, '2000-02-15', '1060', 25, 'K', NULL),
('S-499', 'Orłowska', 'Agata', 10, '2001-02-03', '1050', 28, 'K', NULL),
('S-515', 'Tucholska', 'Mariola', 10, '1993-02-09', '1130', 26, 'K', NULL),
('S-516', 'Cybulska', 'Renata', 10, '1994-10-26', '1090', 22, 'K', NULL),
('S-523', 'Firlej', 'Anna', 10, '1992-09-23', '1030', 26, 'K', NULL),
('S-547', 'Zimna', 'Edyta', 10, '1997-10-30', '1390', 24, 'K', NULL),
('S-559', 'Gołąbek', 'Adam', 10, '2001-03-09', '1490', 26, 'M', NULL),
('S-580', 'Bulej', 'Ewa', 10, '1991-11-04', '1340', 27, 'K', NULL),
('S-627', 'Latała', 'Henryka', 10, '1996-12-23', '1310', 28, 'K', NULL),
('S-628', 'Ćwiklińska', 'Grażyna', 10, '1993-01-23', '1040', 29, 'K', NULL),
('S-654', 'Jackowska', 'Maria', 10, '2001-03-22', '1610', 23, 'K', NULL),
('S-678', 'Prokop', 'Jarosław', 10, '1997-05-16', '1437.5', 23, 'M', NULL),
('S-749', 'Adamiec', 'Jan', 10, '1991-09-18', '1080', 20, 'M', NULL),
('S-752', 'Walas', 'Karol', 10, '1990-05-31', '1449', 21, 'M', NULL),
('S-765', 'Kos', 'Roman', 10, '1990-08-31', '1490', 22, 'M', NULL),
('S-790', 'Jamski', 'Adam', 10, '1997-01-13', '1150', 20, 'M', NULL),
('S-791', 'Adamczyk', 'Krzysztof', 10, '1997-11-19', '1480.5', 21, 'M', NULL),
('U-105', 'Adamska', 'Karolina', 11, '1991-05-05', '1400', 10, 'K', NULL),
('U-106', 'Adamus', 'Adam', 11, '1995-12-14', '1520', 20, 'M', NULL),
('U-107', 'Adamus', 'Małgorzata', 11, '1992-05-02', '1560', 11, 'K', NULL),
('U-108', 'Aderek', 'Karol', 11, '1997-11-29', '1533', 21, 'M', NULL),
('U-110', 'Aderek', 'Ewa', 11, '1997-07-06', '1390', 22, 'K', NULL),
('U-111', 'Albert', 'Joanna', 11, '1990-07-02', '1725', 23, 'K', NULL),
('U-112', 'Albert', 'Jerzy', 11, '1990-03-04', '1840', 24, 'M', NULL),
('U-113', 'Aleksander', 'Piotr', 11, '2001-10-06', '1510', 25, 'M', NULL),
('U-115', 'Aleksandrowicz', 'Barbara', 11, '1995-10-06', '1410', 26, 'K', NULL),
('U-117', 'Antos', 'Wiesław', 11, '1992-09-14', '1490', 27, 'M', NULL),
('U-118', 'Antoni', 'Marian', 11, '2001-04-09', '1560', 11, 'M', NULL),
('U-128', 'Antonkiewicz', 'Krystyna', 11, '1999-08-24', '1340', 20, 'K', NULL),
('U-129', 'Arak', 'Karol', 11, '2001-02-21', '1500', 28, 'M', NULL),
('U-130', 'Arak', 'Krystyna', 11, '1999-06-06', '1380', 29, 'K', NULL),
('U-145', 'Aronowski', 'Adam', 11, '1994-01-04', '1480', 30, 'M', NULL),
('U-146', 'Aronowski', 'Wiesław', 11, '2000-10-20', '1249.5', 31, 'M', NULL),
('U-149', 'Aronowska', 'Halina', 11, '2002-10-15', '1110', 32, 'K', NULL),
('U-150', 'Badowski', 'Karol', 11, '1997-12-20', '1495', 33, 'M', NULL),
('U-151', 'Balicka', 'Anna', 11, '1999-08-10', '1420', 34, 'K', NULL),
('U-152', 'Balcerek', 'Zygmunt', 11, '1995-02-15', '1320', 35, 'M', NULL),
('U-160', 'Barcik', 'Barbara', 11, '1996-07-09', '1100', 36, 'K', NULL),
('U-162', 'Bączek', 'Marcin', 11, '1998-09-18', '1250', 37, 'M', NULL),
('U-163', 'Bąbalewski', 'Karol', 11, '1999-02-03', '1510', 37, 'M', NULL),
('U-164', 'Bdzikot', 'Roch', 11, '2000-07-27', '1290', 39, 'M', NULL),
('U-165', 'Bedka', 'Justyna', 11, '1994-02-01', '1736.5', 40, 'K', NULL),
('U-166', 'Bednarczyk', 'Andrzej', 11, '1992-09-19', '1150', 41, 'M', NULL),
('U-167', 'Bednarek', 'Zenon', 11, '1992-12-05', '1330', 42, 'M', NULL),
('U-181', 'Bednarska', 'Karolina', 11, '1992-10-13', '1560', 11, 'K', NULL),
('U-182', 'Bedyńska', 'Martyna', 11, '2000-08-16', '1530', 10, 'K', NULL),
('U-183', 'Bek', 'Bolesław', 11, '1993-12-03', '1230', 10, 'M', NULL),
('U-184', 'Bekasiewicz', 'Iwona', 11, '1999-05-12', '1470', 11, 'K', NULL),
('U-186', 'Benedykt', 'Kazimierz', 11, '1990-03-31', '1220', 20, 'M', NULL),
('U-189', 'Berak', 'Zofia', 11, '1995-10-07', '1490', 20, 'K', NULL),
('U-192', 'Bębenek', 'Anan', 11, '1997-07-29', '1417.5', 21, 'M', NULL),
('U-193', 'Berus', 'Adam', 11, '2000-12-06', '1260', 22, 'M', NULL),
('U-205', 'Bentkowski', 'Bartosz', 11, '1991-03-26', '1506.5', 23, 'M', NULL),
('U-207', 'Bębenek', 'Czesław', 11, '1995-11-03', '1820', 24, 'M', NULL),
('U-208', 'Białkowski', 'Piotr', 11, '1990-02-15', '1280', 25, 'M', NULL),
('U-209', 'Bernacik', 'Hanna', 11, '1996-06-14', '1370', 26, 'K', NULL),
('U-254', 'Bugajski', 'Jan', 11, '1993-03-29', '1320', 27, 'M', NULL),
('U-255', 'Buczyński', 'Krzysztof', 11, '2002-04-04', '1120', 28, 'M', NULL),
('U-256', 'Bukalski', 'Marian', 11, '1990-05-01', '1480', 29, 'M', NULL),
('U-258', 'Bujak', 'Agnieszka', 11, '2000-11-22', '1530', 25, 'K', NULL),
('U-259', 'Całka', 'Wanda', 11, '1997-06-24', '1240', 30, 'K', NULL),
('U-267', 'Cedro', 'Zofia', 11, '1994-10-07', '1239', 31, 'K', NULL),
('U-268', 'Cender', 'Urszula', 11, '1997-08-15', '1480', 32, 'K', NULL),
('U-276', 'Chebda', 'Mateusz', 11, '2000-02-09', '1276.5', 33, 'M', NULL),
('U-277', 'Chłopecka', 'Karolina', 11, '2002-01-25', '1510', 34, 'K', NULL),
('U-278', 'Chmielewska', 'Laura', 11, '2002-09-03', '1180', 35, 'K', NULL),
('U-279', 'Chmielewski', 'Damian', 11, '1999-06-15', '1260', 36, 'M', NULL),
('U-300', 'Chochoł', 'Zygmunt', 11, '1998-07-11', '1570', 37, 'M', NULL),
('U-302', 'Chochowski', 'Karol', 11, '1991-06-20', '1240', 38, 'M', NULL),
('U-304', 'Chodyra', 'Kazimierz', 11, '1990-05-28', '1590', 39, 'M', NULL),
('U-305', 'Chojnacka', 'Elżbieta', 11, '1992-10-27', '1782.5', 40, 'K', NULL),
('U-309', 'Chojnacki', 'Roman', 11, '1990-02-19', '1240', 41, 'M', NULL),
('U-344', 'Chwała', 'Jan', 11, '1991-01-07', '1100', 42, 'M', NULL),
('U-346', 'Chwałek', 'Ryszard', 11, '2000-04-20', '1782.5', 40, 'M', NULL),
('U-347', 'Chwaliński', 'Konstanty', 11, '1996-09-05', '1299.5', 40, 'M', NULL),
('U-348', 'Kończak', 'Grzegorz', 11, '1999-10-16', '1771', 40, 'M', NULL),
('U-349', 'Katana', 'Krzysztof', 11, '1997-05-13', '1633', 40, 'M', NULL),
('U-350', 'Katana', 'Wiesław', 11, '1998-04-12', '1265', 40, 'M', NULL),
('U-355', 'Kaleta', 'Piotr', 11, '1995-05-23', '1736.5', 40, 'M', NULL),
('U-356', 'Jóźwiak', 'Witold', 11, '1990-05-09', '1590', 41, 'M', NULL),
('U-357', 'Janowski', 'Jan', 11, '1997-07-26', '1220', 41, 'M', NULL),
('U-411', 'Jabłoński', 'Sylwester', 11, '1999-06-22', '1440', 41, 'M', NULL),
('U-412', 'Hentel', 'Krzysztof', 11, '1995-11-20', '1490', 41, 'M', NULL),
('U-413', 'Gumowski', 'Sławomir', 11, '1998-08-30', '1240', 41, 'M', NULL),
('U-422', 'Grodecki', 'Rafał', 11, '1992-07-19', '1120', 41, 'M', NULL),
('U-425', 'Górecki', 'Józef', 11, '1997-12-28', '1470', 42, 'M', NULL),
('U-426', 'Gołos', 'Tadeusz', 11, '2000-08-04', '1190', 42, 'M', NULL),
('U-451', 'Dziekan', 'Marek', 11, '1992-02-06', '1170', 41, 'M', NULL),
('U-452', 'Dudziński', 'Kazimierz', 11, '2002-07-23', '1520', 22, 'M', NULL),
('U-453', 'Chmielewski', 'Bogdan', 11, '1994-08-28', '1450', 41, 'M', NULL),
('U-499', 'Buczek', 'Zenon', 11, '1997-08-06', '1490', 41, 'M', NULL),
('U-542', 'Bińkowski', 'Kazimierz', 11, '2002-10-12', '1230', 42, 'M', NULL),
('U-543', 'Lewińska', 'Anita', 11, '1997-12-04', '1310', 41, 'K', NULL),
('U-586', 'Klimaszewska', 'Ewa', 11, '1995-08-02', '1300', 41, 'K', NULL),
('U-587', 'Kowalska', 'Jadwiga', 11, '1994-02-11', '1200', 41, 'K', NULL),
('U-594', 'Serwicka', 'Małgorzata', 11, '1996-07-23', '1550', 41, 'K', NULL),
('U-645', 'Jaśkiewicz', 'Sara', 11, '1996-09-26', '1270', 42, 'K', NULL),
('U-646', 'Kwas', 'Aleksandra', 11, '2000-02-09', '1370', 42, 'K', NULL),
('U-647', 'Sarek', 'Barbara', 11, '1991-08-10', '1420', 10, 'K', NULL),
('U-648', 'Jakubczyk', 'Agnieszka', 11, '1992-10-28', '1550', 10, 'K', NULL),
('U-649', 'Stachura', 'Danuta', 11, '1998-02-27', '1290', 10, 'K', NULL),
('U-660', 'Marchlewska', 'Alicja', 11, '1999-06-11', '1310', 10, 'K', NULL),
('U-662', 'Młyńczak', 'Jarosław', 11, '1990-09-19', '1490', 11, 'M', NULL),
('U-663', 'Dziewięcka', 'Anita', 11, '1999-08-08', '1290', 11, 'K', NULL),
('U-667', 'Zasada', 'Joanna', 11, '1993-09-19', '1190', 22, 'K', NULL),
('U-736', 'Kowalski', 'Adam', 11, '1992-02-21', '1400', 20, 'M', NULL),
('U-778', 'Barański', 'Karol', 11, '1997-05-17', '1170', 22, 'M', NULL),
('U-779', 'Miller', 'Zbigniew', 11, '2002-08-08', '1365', 21, 'M', NULL),
('U-790', 'Zugaj', 'Adam', 11, '2002-09-29', '1460', 10, 'M', NULL),
('U-794', 'Tomczyk', 'Norbert', 11, '1999-08-26', '1506.5', 23, 'M', NULL),
('Z-550', 'Adamowicz', 'Jolanta', 13, '1996-11-21', '1470', 29, 'K', NULL),
('Z-551', 'Aleksander', 'Barbara', 13, '1997-05-12', '1490', 29, 'K', NULL),
('Z-552', 'Antczak', 'Jolanta', 13, '1993-04-01', '1540', 29, 'K', NULL),
('Z-553', 'Banasik', 'Irena', 13, '2000-06-04', '1390', 28, 'K', NULL),
('Z-554', 'Adam', 'Karol', 13, '1991-07-04', '1150', 28, 'M', NULL),
('Z-555', 'Baran', 'Kazimierz', 13, '1993-12-20', '1310', 28, 'M', NULL),
('Z-556', 'Barszczewska', 'Halina', 13, '1994-07-13', '1540', 28, 'K', NULL),
('Z-557', 'Bartkiewicz', 'Elwira', 13, '2001-08-27', '1540', 28, 'K', NULL),
('Z-558', 'Biedka', 'Kazimierz', 13, '1992-02-24', '1390', 22, 'M', NULL),
('Z-559', 'Biegaj', 'Józef', 13, '2000-11-02', '1580', 29, 'M', NULL),
('Z-560', 'Bielecka', 'Danuta', 13, '2000-12-25', '1480', 27, 'K', NULL),
('Z-580', 'Bielecki', 'Michał', 13, '2001-07-19', '1140', 25, 'M', NULL),
('Z-581', 'Bienias', 'Alina', 13, '1997-03-27', '1160', 22, 'K', NULL),
('Z-582', 'Bień', 'Karolina', 13, '1995-10-03', '1290', 22, 'K', NULL),
('Z-583', 'Biernacki', 'Zenon', 13, '1990-09-20', '1450', 24, 'M', NULL),
('Z-584', 'Bilski', 'Wojciech', 13, '1999-09-27', '1311', 23, 'M', NULL),
('Z-594', 'Bilska', 'Dorota', 13, '1990-05-24', '1380', 23, 'K', NULL),
('Z-595', 'Bisińska', 'Zofia', 13, '1997-09-19', '1260', 26, 'K', NULL),
('Z-596', 'Blacharz', 'Krystyna', 13, '1991-10-07', '1500', 26, 'K', NULL),
('Z-597', 'Błaszkiewicz', 'Olga', 13, '1996-08-16', '1510', 22, 'K', NULL),
('Z-598', 'Błąd', 'Adam', 13, '2001-04-17', '1790', 24, 'M', NULL),
('Z-599', 'Błędowski', 'Kazimierz', 13, '1998-05-20', '1564', 23, 'M', NULL),
('Z-600', 'Błocki', 'Łukasz', 13, '2000-11-07', '1300', 22, 'M', NULL),
('Z-640', 'Błotny', 'Adam', 13, '1990-10-21', '1280', 26, 'M', NULL),
('Z-641', 'Bugała', 'Danuta', 13, '2000-08-24', '1300', 22, 'K', NULL),
('Z-642', 'Chałupka', 'Eleonora', 13, '1993-04-26', '1550', 29, 'K', NULL),
('Z-643', 'Chałbińska', 'Krystyna', 13, '1996-03-25', '1449', 21, 'K', NULL),
('Z-648', 'Chłopicki', 'Karol', 13, '1992-11-25', '1120', 22, 'M', NULL),
('Z-649', 'Chmiel', 'Paulina', 13, '1999-01-02', '1220', 27, 'K', NULL),
('Z-650', 'Chrzanowska', 'Agnieszka', 13, '1994-07-07', '1130', 25, 'K', NULL),
('Z-674', 'Chylak', 'Józef', 13, '1992-12-16', '1520', 25, 'M', NULL),
('Z-675', 'Cichosz', 'Dorota', 13, '1992-06-03', '1140', 25, 'K', NULL),
('Z-676', 'Cichowąs', 'Artur', 13, '2000-04-24', '1110', 25, 'M', NULL),
('Z-679', 'Ciechanowicz', 'Maria', 13, '1990-03-17', '1470', 24, 'K', NULL),
('Z-701', 'Cieślak', 'Teresa', 13, '1990-01-17', '1840', 24, 'K', NULL),
('Z-702', 'Żuchowski', 'Piotr', 13, '1992-01-13', '1660', 24, 'M', NULL),
('Z-703', 'Wypchło', 'Marian', 13, '2001-08-12', '1180', 27, 'M', NULL),
('Z-704', 'Wójcik', 'Leszek', 13, '1996-08-02', '1570', 25, 'M', NULL),
('Z-710', 'Woźniak', 'Janina', 13, '2000-02-18', '1230', 27, 'K', NULL),
('Z-711', 'Śmietanka', 'Jerzy', 13, '1995-08-11', '1430', 26, 'M', NULL),
('Z-715', 'Szymański', 'Wiesław', 13, '1994-08-30', '1190', 26, 'M', NULL),
('Z-716', 'Sekuła', 'Zbigniew', 13, '1996-12-17', '1220', 27, 'M', NULL),
('Z-717', 'Różalska', 'Stanisława', 13, '1990-08-23', '1540', 20, 'K', NULL),
('Z-718', 'Rokosz', 'Piotr', 13, '1991-10-20', '1420', 20, 'M', NULL),
('Z-725', 'Pytka', 'Anna', 13, '1996-07-18', '1228.5', 21, 'K', NULL),
('Z-726', 'Przybylska', 'Laura', 13, '1994-05-16', '1606.5', 21, 'K', NULL),
('Z-727', 'Podsiadły', 'Adam', 13, '1990-11-05', '1580', 22, 'M', NULL),
('Z-728', 'Mrozowski', 'Andrzej', 13, '1997-12-08', '1360', 22, 'M', NULL),
('Z-734', 'Michalak', 'Janusz', 13, '1996-10-30', '1200', 22, 'M', NULL),
('Z-735', 'Bartoszewicz', 'Stanisław', 13, '1992-11-20', '1500', 28, 'M', NULL),
('Z-736', 'Rybińska', 'Małgorzata', 13, '1992-03-30', '1350', 29, 'K', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `premia`
--

CREATE TABLE `premia` (
  `IDStanowiska` int(3) NOT NULL,
  `stanowisko` varchar(16) DEFAULT NULL,
  `premia_procent` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `premia`
--

INSERT INTO `premia` (`IDStanowiska`, `stanowisko`, `premia_procent`) VALUES
(1, 'Analityk', '0.12'),
(2, 'Doradca', '0.09'),
(3, 'Informatyk', '0.20'),
(4, 'Kierowca', '0.10'),
(5, 'Kierownik', '0.20'),
(6, 'Księgowy', '0.18'),
(7, 'Operator', '0.06'),
(8, 'Prezes', '0.25'),
(9, 'Referent', '0.07'),
(10, 'Sprzedawca', '0.13'),
(11, 'Urzędnik', '0.05'),
(12, 'Wiceprezes', '0.22'),
(13, 'Zaopatrzeniowiec', '0.08');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `urlopy`
--

CREATE TABLE `urlopy` (
  `IDurlopu` int(11) NOT NULL,
  `IDPracownika` varchar(12) COLLATE utf8_polish_ci DEFAULT NULL,
  `data_od` date NOT NULL,
  `data_do` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dzial`
--
ALTER TABLE `dzial`
  ADD PRIMARY KEY (`numerDzialu`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`IDPracownika`),
  ADD KEY `IDstanowiska` (`IDstanowiska`),
  ADD KEY `numerdzialu` (`numerdzialu`),
  ADD KEY `Nazwisko` (`Nazwisko`),
  ADD KEY `pensjazasadnicza` (`pensjazasadnicza`);

--
-- Indeksy dla tabeli `premia`
--
ALTER TABLE `premia`
  ADD PRIMARY KEY (`IDStanowiska`),
  ADD KEY `premia_procent` (`premia_procent`);

--
-- Indeksy dla tabeli `urlopy`
--
ALTER TABLE `urlopy`
  ADD PRIMARY KEY (`IDurlopu`),
  ADD UNIQUE KEY `IDurlopu` (`IDurlopu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `urlopy`
--
ALTER TABLE `urlopy`
  MODIFY `IDurlopu` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `dzial`
--
ALTER TABLE `dzial`
  ADD CONSTRAINT `dzial_ibfk_1` FOREIGN KEY (`numerDzialu`) REFERENCES `pracownicy` (`numerdzialu`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `premia`
--
ALTER TABLE `premia`
  ADD CONSTRAINT `premia_ibfk_1` FOREIGN KEY (`IDStanowiska`) REFERENCES `pracownicy` (`IDstanowiska`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
