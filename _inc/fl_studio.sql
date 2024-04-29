-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Po 29.Apr 2024, 16:48
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

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `musicprograms`
--

CREATE TABLE `musicprograms` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `logo` text NOT NULL,
  `alt` text NOT NULL,
  `link` text NOT NULL,
  `paragraph1` text NOT NULL,
  `title2` text NOT NULL,
  `paragraph2` text NOT NULL,
  `title3` text NOT NULL,
  `paragraph3` text NOT NULL,
  `title4` text NOT NULL,
  `paragraph4` text NOT NULL,
  `title5` text NOT NULL,
  `paragraph5` text NOT NULL,
  `title6` text NOT NULL,
  `paragraph6` text NOT NULL,
  `img` text NOT NULL,
  `alt2` text NOT NULL,
  `class` text NOT NULL,
  `class_logo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Sťahujem dáta pre tabuľku `musicprograms`
--

INSERT INTO `musicprograms` (`id`, `title`, `logo`, `alt`, `link`, `paragraph1`, `title2`, `paragraph2`, `title3`, `paragraph3`, `title4`, `paragraph4`, `title5`, `paragraph5`, `title6`, `paragraph6`, `img`, `alt2`, `class`, `class_logo`) VALUES
(1, 'LMMS', 'img/LMMS%20Logo.png', 'LMMS Logo', 'https://lmms.io/', 'LMMS (previously Linux MultiMedia Studio) is a digital audio workstation application. When LMMS is run on a computer with the necessary hardware, it allows you to create music by arranging samples, synthetic sounds, and playing on a MIDI keyboard, and combines the features of trackers and sequencers. It supports the LADSPA (Linux Audio Developer\'s Simple Plugin API) and VST extensions. It is free software released under the GNU version 2.', 'System requirements', 'LMMS is available for multiple operating systems, including GNU/Linux, OS X and Windows. It requires a 1 GHz processor (CPU), 512 MB of RAM, and a dual-channel sound card.\r\n', 'Program features', 'LMMS accepts soundfonts and GUS patches. Musical Instrument Digital Interface (MIDI) files and files from Hydrogen can be imported. Import from FL Studio project (FLP) was also supported, but has been removed. Can write and read customized presets and themes. Audio can be exported to OGG and WAV formats, and projects can be saved as pure XML MMPs or as a compressed MMPZ file format.', '', '', '', '', '', '', 'img/LMMS%20Worksapce.png', 'LMMS Workspace', 'lmmsweb\">LMMS Web', 'lmmslogo\"'),
(2, 'FL Studio', 'img/i.png', 'FL Studio Logo', 'https://www.image-line.com/', 'FL Studio (previously known as FruityLoops) is a digital audio workstation developed by the Belgian company Image-Line. FL Studio includes a graphical user interface similar to a sequencer. The program is available in four versions FL Studio Express, Fruity Edition, Producer Edition and Signature Bundle Image-Line provides lifetime updates to the program, giving users all updates for free. Image-Line has also created a version of FL Studio Mobile for iPod Touch, iPhone, iPad and Android devices. This program is used to create music, using MIDI techniques to create tones.\r\n', 'Editions', 'FL Studio comes in several editions with different levels of functionality. The free trial version includes all of the program\'s features, all plugins, and allows users to render project audio to WAV, MIDI, MP3, and OGG. Projects saved while in demo mode, however, can only be opened once FL Studio and its plugins have been registered. Also, instrument presets cannot be saved and the audio output of some instruments will cut out momentarily every few minutes until the program and its plugins have been registered.\r\n', 'Fruity Edition', 'The Fruity Edition allows users to access the playlist, piano roll, and event automation features, which allow for complex and lengthy arranging and sequencing. There is also VST/ReWire support so that FL Studio can be an instrument in other hosts such as Cubase, Sonic Solutions, and Logic. As of version 21.0.3, this edition includes 84 instruments and effects; it does not support audio recording and the use of audio clips.\r\n', 'Producer Edition', 'The Producer Edition includes all of the features of the Fruity Edition, as well as full audio recording for internal and external audio and post-production tools. It allows for hand-drawing point and curve based splines (referred to as \"automation clips\"). Plugins include Edison, Slicex (loop slicer and re-arranger), Sytrus, Maximus, Vocodex and Synthmaker. It also allows for waveform viewing of audio clips and the ability to add cue points.\r\n', 'Signature Bundle', 'This edition includes the Producer Edition as well as a series of plugins such as the Fruity Video Player, DirectWave Sampler, Harmless, NewTone, Pitcher, Gross Beat and the Hardcore Guitar Effects Suite.\r\n', 'All Plugins Edition', 'The All Plugins Edition includes the Signature Bundle along with extra plugins, particularly synthesizers.', 'img/FL%20Studio%20Workspace.png', 'FL Studio Workspace', 'flstudioweb\">FL Studio Web', 'flstudiologo\"'),
(3, 'Ableton', 'img/ableton.png', 'Ableton Logo', 'https://www.ableton.com/en/', 'Ableton Live, also known as Live or sometimes colloquially as \"Ableton\", is a digital audio workstation for macOS and Windows developed by the German company Ableton. In contrast to many other software sequencers, Live is designed to be an instrument for live performances as well as a tool for composing, recording, arranging, mixing, and mastering. It is also used by DJs, as it offers a suite of controls for beatmatching, crossfading, and other different effects used by turntablists, and was one of the first music applications to automatically beatmatch songs. Live is available directly from Ableton in three editions: \r\n<br><br>\r\nIntro (with limited key features), Standard, and Suite (with the most features). Suite includes Max for Live functionality, made possible in partnership with Cycling \'74. Ableton has also made a fourth version of Live, Lite, with similar limitations to Intro, which is only available bundled with a range of music production hardware, including MIDI controllers and audio interfaces.\r\n\r\n', 'User interface', 'Much of Live\'s interface comes from being designed for use in live performance, as well as for production. There are few pop up messages or dialogs. Portions of the interface are hidden and shown based on arrows which may be clicked to show or hide a certain segment (e.g. to hide the instrument/effect list or to show or hide the help box). Live now supports latency compensation for plug-in and mixer automation.\r\n', '', '', '', '', '', '', '', '', 'img/Ableton%20Workspace.jpg', 'Ableton Workspace', 'abletonweb\">Ableton Web', 'abletonlogo\"'),
(5, 'Cubase', 'img/Cubase%20Logo.png', 'Cubase Logo', 'https://www.steinberg.net/cubase/', 'Cubase is a digital audio workstation developed by Steinberg for music and MIDI recording, arranging and editing. The first version, which was originally only a MIDI sequencer and ran on the Atari ST computer, was released in 1989. Cut-down versions of Cubase are included with almost all Yamaha audio and MIDI hardware, as well as hardware from other manufacturers. These versions can be upgraded to a more advanced version at a discount.\r\n', 'Editions', 'When Cubase 6 was released in 2011, Steinberg introduced 5 different editions for different levels of use. From highest to lowest they are: Cubase (now known as Cubase Pro), Cubase Artist, Cubase Elements, Cubase AI and Cubase LE. They have all been updated as new versions come out. While they all run on the same audio engine, the lower tiers have limits on the number of certain types of tracks. The number of audio tracks allowed in Cubase Pro is unlimited.\r\n', '', '', '', '', '', '', '', '', 'img/Cubase%20Workspace.png', 'Cubase Workspace', 'cubaseweb\">Cubase Web', 'cubaselogo\"');

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
-- Indexy pre tabuľku `musicprograms`
--
ALTER TABLE `musicprograms`
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

--
-- AUTO_INCREMENT pre tabuľku `musicprograms`
--
ALTER TABLE `musicprograms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
