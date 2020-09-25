-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 25 sep 2020 om 09:50
-- Serverversie: 10.4.8-MariaDB
-- PHP-versie: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bap_test`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `afbeeldingen`
--

CREATE TABLE `afbeeldingen` (
  `id` int(11) NOT NULL,
  `image` varchar(54) NOT NULL,
  `boek_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `afbeeldingen`
--

INSERT INTO `afbeeldingen` (`id`, `image`, `boek_id`) VALUES
(0, 'hoi.png', 2),
(1, 'image.png', 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `auteurs`
--

CREATE TABLE `auteurs` (
  `id` int(11) NOT NULL,
  `naam` varchar(54) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `auteurs`
--

INSERT INTO `auteurs` (`id`, `naam`) VALUES
(0, 'Bob de Neus'),
(1, 'Suk Mike Hok');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `boeken`
--

CREATE TABLE `boeken` (
  `id` int(11) NOT NULL,
  `titel` varchar(54) NOT NULL,
  `datum` date NOT NULL,
  `genre_id` int(11) NOT NULL,
  `isbn` int(11) NOT NULL,
  `auteur_id` int(11) NOT NULL,
  `afbeeldingen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `boeken`
--

INSERT INTO `boeken` (`id`, `titel`, `datum`, `genre_id`, `isbn`, `auteur_id`, `afbeeldingen_id`) VALUES
(0, 'De grote man', '2020-09-24', 1, 214642, 0, 2),
(1, 'De Chinees en de verloren taco', '2019-06-11', 2, 123214, 1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `naam` varchar(54) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `genres`
--

INSERT INTO `genres` (`id`, `naam`) VALUES
(1, 'Horror'),
(2, 'Avontuurlijk'),
(3, 'Humor');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `reviewers`
--

CREATE TABLE `reviewers` (
  `id` int(11) NOT NULL,
  `voornaam` varchar(54) NOT NULL,
  `achternaam` varchar(54) NOT NULL,
  `email` varchar(54) NOT NULL,
  `leeftijd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `reviewers`
--

INSERT INTO `reviewers` (`id`, `voornaam`, `achternaam`, `email`, `leeftijd`) VALUES
(1, 'Ruben', 'Fireman', 'fireman@gmail.com', 18),
(2, 'Justin', 'Herass', 'im-justin-herass@gmail.com', 18);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `review_teksten`
--

CREATE TABLE `review_teksten` (
  `id` int(11) NOT NULL,
  `review_tekst` varchar(160) NOT NULL,
  `reviewer_id` int(11) NOT NULL,
  `boek_id` int(11) NOT NULL,
  `sterren` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `review_teksten`
--

INSERT INTO `review_teksten` (`id`, `review_tekst`, `reviewer_id`, `boek_id`, `sterren`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam lectus odio, scelerisque quis posuere a, faucibus sed lectus. Suspendisse lacinia ornare felis ru', 1, 0, 4),
(2, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias exceptur', 2, 2, 3);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `afbeeldingen`
--
ALTER TABLE `afbeeldingen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `auteurs`
--
ALTER TABLE `auteurs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `boeken`
--
ALTER TABLE `boeken`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `reviewers`
--
ALTER TABLE `reviewers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `review_teksten`
--
ALTER TABLE `review_teksten`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
