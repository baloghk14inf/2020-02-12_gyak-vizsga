-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Gép: localhost:3306
-- Létrehozás ideje: 2020. Feb 12. 08:18
-- Kiszolgáló verziója: 5.7.28
-- PHP verzió: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `tanarok`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kapocs`
--

CREATE TABLE `kapocs` (
  `tanar_id` int(4) NOT NULL,
  `targy_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kapocs`
--

INSERT INTO `kapocs` (`tanar_id`, `targy_id`) VALUES
(1, 10),
(2, 9),
(3, 1),
(4, 9),
(5, 4),
(6, 5),
(6, 9),
(7, 9),
(9, 4),
(10, 1),
(11, 1),
(11, 6),
(13, 5),
(16, 8),
(17, 3),
(18, 7),
(19, 1),
(20, 1),
(20, 11),
(21, 3),
(22, 10),
(24, 9),
(25, 9),
(26, 2),
(26, 4),
(27, 4),
(28, 4),
(29, 2),
(29, 4),
(30, 9),
(32, 1),
(32, 9),
(33, 2),
(33, 4),
(35, 9),
(36, 3),
(36, 4),
(39, 2),
(40, 9),
(41, 9);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tanar`
--

CREATE TABLE `tanar` (
  `id` int(4) NOT NULL,
  `nev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `oraszam` int(4) NOT NULL,
  `besorolas` varchar(20) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tanar`
--

INSERT INTO `tanar` (`id`, `nev`, `email`, `oraszam`, `besorolas`) VALUES
(1, 'Amma Tamás', 'amma@acsjszki.hu', 24, 'Pedagógus I.'),
(2, 'Bach Klára', 'bach@acsjszki.hu', 25, 'Pedagógus II.'),
(3, 'Bérdi Ágnes', 'bérdi@acsjszki.hu', 26, 'Pedagógus I.'),
(4, 'Bihari Zoltán', 'bihari@acsjszki.hu', 27, 'Pedagógus I.'),
(5, 'Biróné Horváth Csilla', 'biróné@acsjszki.hu', 25, 'Pedagógus I.'),
(6, 'Bocz Róbert János', 'bocz@acsjszki.hu', 25, 'Pedagógus I.'),
(7, 'Botos Miklós', 'botos@acsjszki.hu', 24, 'Pedagógus I.'),
(8, 'Fábián Zsanna', 'fábián@acsjszki.hu', 8, 'Pedagógus I.'),
(9, 'Fodorné Csepeli Diána', 'fodorné@acsjszki.hu', 24, 'Pedagógus I.'),
(10, 'Gaál János', 'gaál@acsjszki.hu', 4, 'Pedagógus I.'),
(11, 'Gajda Milán', 'gajda@acsjszki.hu', 20, 'Pedagógus I.'),
(12, 'Hegedűs Gabriella', 'hegedűs@acsjszki.hu', 26, 'Pedagógus I.'),
(13, 'Kazay Lívia', 'kazay@acsjszki.hu', 24, 'Pedagógus I.'),
(14, 'Király-Ludvig Réka', 'király-ludvig@acsjszki.hu', 25, 'Pedagógus I.'),
(15, 'Klajkóné Kalmár Anna', 'klajkóné@acsjszki.hu', 17, 'Pedagógus I.'),
(16, 'Koncsánszki Tünde Katalin', 'koncsánszki@acsjszki.hu', 22, 'Pedagógus I.'),
(17, 'Kóródi Gábor', 'kóródi@acsjszki.hu', 23, 'Pedagógus I.'),
(18, 'Kovács Judit', 'kovács@acsjszki.hu', 24, 'Pedagógus I.'),
(19, 'Kovácsné Magyar Beáta', 'kovácsné@acsjszki.hu', 22, 'Pedagógus I.'),
(20, 'Kozma Erzsébet Elvíra', 'kozma@acsjszki.hu', 24, 'Pedagógus II.'),
(21, 'Kurdi Mihály László', 'kurdi@acsjszki.hu', 3, 'Pedagógus I.'),
(22, 'Lakatos-Lamm Viktória', 'lakatos-lamm@acsjszki.hu', 24, 'Pedagógus I.'),
(23, 'Lakos István', 'lakos@acsjszki.hu', 7, 'Pedagógus I.'),
(24, 'László-Tóth Ivett', 'lászló-tóth@acsjszki.hu', 26, 'Pedagógus I.'),
(25, 'Lőcze Tibor', 'lőcze@acsjszki.hu', 6, 'Pedagógus II.'),
(26, 'Magyarfalviné Haszonics Kriszt', 'magyarfalviné@acsjszki.hu', 22, 'Pedagógus I.'),
(27, 'Márfi Eszter', 'márfi@acsjszki.hu', 25, 'Pedagógus I.'),
(28, 'Moric Julianna', 'moric@acsjszki.hu', 18, 'Pedagógus II.'),
(29, 'Nagy Emese', 'nagy@acsjszki.hu', 24, 'Pedagógus I.'),
(30, 'Noé Zoltán', 'noé@acsjszki.hu', 28, 'Pedagógus I.'),
(31, 'Porcsa Zsolt István', 'porcsa@acsjszki.hu', 25, 'Pedagógus I.'),
(32, 'Porgányi Zoltán', 'porgányi@acsjszki.hu', 24, 'Pedagógus II.'),
(33, 'Sebestyénné Hetesi Ildikó', 'sebestyénné@acsjszki.hu', 25, 'Pedagógus I.'),
(34, 'Sólyom Gábor', 'sólyom@acsjszki.hu', 20, 'Pedagógus I.'),
(35, 'Szűcs Edit', 'szűcs@acsjszki.hu', 6, 'Pedagógus I.'),
(36, 'Takácsné Kovács Beáta', 'takácsné@acsjszki.hu', 25, 'Pedagógus I.'),
(37, 'Tárnok Zoltán', 'tárnok@acsjszki.hu', 26, 'Pedagógus I.'),
(38, 'Tigelmann Bettina', 'tigelmann@acsjszki.hu', 22, 'Pedagógus I.'),
(39, 'Weber József', 'weber@acsjszki.hu', 26, 'Pedagógus II.'),
(40, 'Závoda Ferenc', 'závoda@acsjszki.hu', 24, 'Pedagógus I.'),
(41, 'Zilizi Rozália', 'zilizi@acsjszki.hu', 6, 'Pedagógus II.');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `targy`
--

CREATE TABLE `targy` (
  `id` int(4) NOT NULL,
  `nev` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `targy`
--

INSERT INTO `targy` (`id`, `nev`) VALUES
(1, 'Matematika'),
(2, 'Magyar nyelv és irodalom'),
(3, 'Történelem'),
(4, 'Idegen nyelv'),
(5, 'Informatika'),
(6, 'Kémia'),
(7, 'Biológia'),
(8, 'Földrajz'),
(9, 'Szakmai tárgy'),
(10, 'Testnevelés'),
(11, 'Fizika');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `kapocs`
--
ALTER TABLE `kapocs`
  ADD PRIMARY KEY (`tanar_id`,`targy_id`);

--
-- A tábla indexei `tanar`
--
ALTER TABLE `tanar`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `targy`
--
ALTER TABLE `targy`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `targy`
--
ALTER TABLE `targy`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
