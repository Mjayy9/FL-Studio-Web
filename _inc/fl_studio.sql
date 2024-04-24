-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: St 24.Apr 2024, 21:34
-- Verzia serveru: 10.4.32-MariaDB
-- Verzia PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `fl_studio`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `alt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Sťahujem dáta pre tabuľku `gallery`
--

INSERT INTO `gallery` (`id`, `img`, `alt`) VALUES
(1, 'img/IMG_2682.JPG', 'My Beats #1'),
(2, 'img/IMG_2683.JPG', 'My Beats #2'),
(3, 'img/IMG_2684.JPG', 'My Beats #3');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `music`
--

CREATE TABLE `music` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `paragraph1` text NOT NULL,
  `subtitle` text NOT NULL,
  `paragraph2` text NOT NULL,
  `class` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Sťahujem dáta pre tabuľku `music`
--

INSERT INTO `music` (`id`, `title`, `paragraph1`, `subtitle`, `paragraph2`, `class`) VALUES
(1, 'Music', 'Personally for me it is an irreplaceable part of every day, I listen to music whenever I can. Music has always been an activity for me when I can relax, chill out. I\'ve been listening to music since I was a kid and of course that taste in music has evolved over time. In the beginning it was mostly radio tracks and later when I was older it was rap/hip-hop tracks that weren\'t played on the radio because of the vulgarisms in the tracks.', 'Making Beats', 'fuh, to be honest making beats, it\'s not as easy as one would think because first you have to have a program where you make the beat. I don\'t mean making music where there\'s a vocal plus an overall beat. When you have plugins from which you make the melody. A plugin is software that is compatible with music programs such as FL Studio, Cubase, Logic Pro or Ableton. Some are very expensive like Omnisphere, which costs 800€. But there are very good and high quality sounds in it. And then once you have the plugins of your choice then you make the melody. After you have the melody, then you have to put it in the \"master\" in that program and tune the sounds that make up the whole melody so that it\'s balanced.', 'text1'),
(2, 'My experience with music', 'My first experience with making music was about a year and a half ago. It\'s quite an interesting story because one day I was out with my friend and we were having a normal conversation like we always do and he was telling me that he\'s been writing lyrics for quite a long time and he wanted to start making music somehow, but he doesn\'t have or know anyone who makes beats.', '', 'So I told him that I could try it, because I\'ve always been interested in how it can be done. How those producers know how to make it a hit. I\'ve been watching different videos since 2020. For example, Aiden Kenway is an American producer who remakes famous tracks and tracks out the whole process of how he did it. I saw a video where he called the producer of AXL Beats on discord, who told him what presets and plugins he used when making the beat. Aiden then just made the beat and it was done. But I\'ve watched other producers from other countries or Slovakia as well. So I decided to give it a go myself. So I wrote to my friend Adam and asked him if he knew of a program that you can make beats in and he told me that LMMS is one that you can learn how to make beats in.', 'text2');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pre tabuľku `music`
--
ALTER TABLE `music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
