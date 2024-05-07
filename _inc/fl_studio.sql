-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Út 07.Máj 2024, 15:27
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
-- Štruktúra tabuľky pre tabuľku `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `message` text DEFAULT NULL,
  `acceptance` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Sťahujem dáta pre tabuľku `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `acceptance`) VALUES
(5, 'Majkyy', 'majkyybeatz@gmail.com', '  Very nice!', 'on');

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

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `rappers`
--

CREATE TABLE `rappers` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `img` text NOT NULL,
  `alt` text NOT NULL,
  `class` text NOT NULL,
  `link` text NOT NULL,
  `linkname` text NOT NULL,
  `paragraph` text NOT NULL,
  `rappertracksalbums` text NOT NULL,
  `img2` text NOT NULL,
  `alt2` text NOT NULL,
  `class2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Sťahujem dáta pre tabuľku `rappers`
--

INSERT INTO `rappers` (`id`, `name`, `img`, `alt`, `class`, `link`, `linkname`, `paragraph`, `rappertracksalbums`, `img2`, `alt2`, `class2`) VALUES
(1, 'Luca Brassi10x', 'img/Luca%20Brassi10x.jpg', 'Luca Brassi10x', 'lucabrassi10x', 'https://open.spotify.com/artist/33ngpBQcfq53FgLhpBDt8i?si=pHePqSKGShaWpcO0zWhuZg', 'Spotify Luca Brassi10x', 'Luka Mašulovič, known mainly by his artist name Luca Brassi, Luca Brssi or Luca Brassi10x, is a Slovak rapper born on 14 December 1994. He started his music career with a feat on Tisci\'s track \"LV Vačky\" in January 2020. A few months later, Luca releases his first single \"Deep Narco Shit\". In his career Luca Brassi managed to collaborate with people like Yzomandias, NikTendo, Dame, Konex, CA$HANOVA BULHAR, Pil C and many more.\r\n</p><br><p>\r\nLuca Brassi10x is one of the rappers who should own the next few years. He is young, talented and knows how to impress. Besides, he is also considered \"his own\" by artists like Dame or Separ, so he seems to be working hard, otherwise such \"heavyweights\" of Slovak rap wouldn\'t have taken him in their midst. Last time he made his presence known on Nik Tenda\'s EP in the track tempo, where Cashanova Bulhar also appeared.', 'Luca Brassi10x Albums, Single Tracks', 'img/IMG_6567.PNG', 'Luca Brassi10x#2', 'lucabrassi10xx d-block w-100'),
(2, 'Guapanova', 'img/Guapanova.jpeg', 'Guapanova', 'lucabrassi10x', 'https://open.spotify.com/artist/3cKe8c7z8w2nyYsaVKWJaC?si=NJ7s2nGkTt-eONyDT3u3Vg', 'Spotify Guapanova', 'Guapanova (formerly known as TVRNFLX), real name Jakub Smieška, is a member of the ConspiracyFlat Studio label. He comes from Nitra and his first song is Wuala, whose music video was released on the Comebackgang YouTube channel.', 'Guapanova Albums, Single Tracks', '', '', ''),
(3, 'RuckFiso', 'img/RuckFiso.jpeg', 'RuckFiso', 'lucabrassi10x', 'https://open.spotify.com/artist/2Y8buMwgAJXUwSFQhXQ44W?si=18gD8U3IRkiRGsWOkKjIJQ', 'Spotify RuckFiso', 'RuckFiso is a relatively new rapper who comes from Nitra, is 23 years old and has been making music since 2020. He works with the production group ECM Squad, who are also from Nitra. He has tracks with bigger rappers such as Vercetti CG, 772Louis. Personally, I first heard him 2022 and the first track I heard from him was FUTUREBABYMAMA and it hit me really hard.', 'RuckFiso Albums, Single Tracks', 'img/9D4A028F-DC81-45B2-9C12-22452088E0BA.jpg', 'RuckFiso with me', 'lucabrassi10xx d-block w-100'),
(4, 'Yzomandias', 'img/Yzomadias.PNG', 'Yzomandias #2', 'lucabrassi10x', 'https://open.spotify.com/artist/721o1Z0J6jQupyzLt9RnEk?si=RBRa-dGcRi6Wm6SjPhP4jQ', 'Spotify Yzomadias', 'Yzomandias (real name Jakub Vlček; * 21 March 1991, Karlovy Vary) is a Czech rapper. He formed the group Milion+. He started making music 16 years ago. Yzomandias was a member of the Czech group Yzo Empire. He releases his latest albums under the label Milion+ (M+). Yzomandias is my most favourite rapper.', 'Yzomandias Albums, Single Tracks', 'img/IMG_2796.PNG', 'Yzomandias #3', 'lucabrassi10xx d-block w-100');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `rappersaccordion`
--

CREATE TABLE `rappersaccordion` (
  `id` int(11) NOT NULL,
  `content_id` text NOT NULL,
  `button_title` text NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Sťahujem dáta pre tabuľku `rappersaccordion`
--

INSERT INTO `rappersaccordion` (`id`, `content_id`, `button_title`, `title`, `content`, `link`) VALUES
(1, 'flush-collapseSixteen', 'Single Track mamaididit', 'Luca Brassi10x, Pil C, Bwayne - mamaididit', '<p class=\"info\">Year of release:</p>\r\n<p class=\"reply\">2023</p>\r\n<p class=\"info\">Number of track:</p>\r\n<p class=\"reply\">1 track</p>\r\n<p class=\"info\">Produced by:</p>\r\n<p class=\"reply\">Facefront x LUJA</p>', 'audio/Luca%20Brassi10x%20-%20mamaididit.mp3'),
(2, 'flush-collapseSeventeen', 'Single Track Mladý Ale Plný', 'Luca Brassi10x - Mladý Ale Plný', '<p class=\"info\">Year of release:</p>\r\n<p class=\"reply\">2023</p>\r\n<p class=\"info\">Number of track:</p>\r\n<p class=\"reply\">1 track</p>\r\n<p class=\"info\">Produced by:</p>\r\n<p class=\"reply\">Tristan</p>', 'audio/Luca%20Brassi10x%20-%20Mlad%C3%BD%20Ale%20Pln%C3%BD.mp3'),
(3, 'flush-collapseSixtytwo', 'Single Track Nikdy ma mať nebudú', 'Luca Brassi10x - Nikdy ma mať nebudú', '<p class=\"info\">Year of release:</p>\r\n<p class=\"reply\">2023</p>\r\n<p class=\"info\">Number of track:</p>\r\n<p class=\"reply\">1 track</p>\r\n<p class=\"info\">Produced by:</p>\r\n<p class=\"reply\">Mjay Beatz</p>', 'audio/Lucabrassi10x%20-%20Nikdy%20ma%20ma%C5%A5%20nebud%C3%BA.mp3'),
(4, 'flush-collapseSixtyEight', 'Collabo Album 22Flex with AstralKid22', 'Guapanova, AstralKidd 22 - BABYBOY', '<p class=\"info\">Year of release:</p>\r\n<p class=\"reply\">2021</p>\r\n<p class=\"info\">Number of track:</p>\r\n<p class=\"reply\">8 tracks</p>\r\n<p class=\"info\">Produced by:</p>\r\n<p class=\"reply\">Tristan</p>', 'audio/Guapanova,%20Astral%20Kid%2022%20-%20BABYBOY.mp3'),
(5, 'flush-collapseTwentyone', 'Album Deluzia', 'Guapanova - Streets', '<p class=\"info\">Year of release:</p>\r\n<p class=\"reply\">2023</p>\r\n<p class=\"info\">Number of track:</p>\r\n<p class=\"reply\">13 tracks</p>\r\n<p class=\"info\">Produced by:</p>\r\n<p class=\"reply\">Saimo</p>', 'audio/Guapanova-STREETS.mp3 '),
(6, 'flush-collapseTwentytwo', 'Album Deluzia Delux3*', 'Guapanova - YSL', '<p class=\"info\">Year of release:</p>\r\n<p class=\"reply\">12.12.2023</p>\r\n<p class=\"info\">Number of track:</p>\r\n<p class=\"reply\">18 tracks</p>\r\n<p class=\"info\">Produced by:</p>\r\n<p class=\"reply\">FOREVER</p>', 'audio/Guapanova%20-%20YSL.mp3'),
(7, 'flush-collapseTwentysix', 'Single Track FUTUREBABYMAMA', 'RuckFiso - FUTUREBABYMAMA', '<p class=\"info\">Year of release:</p>\r\n<p class=\"reply\">2022</p>\r\n<p class=\"info\">Number of track:</p>\r\n<p class=\"reply\">1 track</p>\r\n<p class=\"info\">Produced by:</p>\r\n<p class=\"reply\">ECM Squad</p>', 'audio/RuckFiso%20-%20FUTUREBABYMAMA.mp3'),
(8, 'flush-collapseTwentynine', 'Album generácia 00', 'RuckFiso - 10', '<p class=\"info\">Year of release:</p>\r\n<p class=\"reply\">2023</p>\r\n<p class=\"info\">Number of track:</p>\r\n<p class=\"reply\">8 tracks</p>\r\n<p class=\"info\">Produced by:</p>\r\n<p class=\"reply\">Matias ECM Squad</p>', 'audio/RuckFiso%20-%2010.mp3'),
(9, 'flush-collapseThirty', 'Single Track ZVONÍ PHONE', 'RuckFiso - ZVONÍ PHONE', '<p class=\"info\">Year of release:</p>\r\n<p class=\"reply\">2023</p>\r\n<p class=\"info\">Number of track:</p>\r\n<p class=\"reply\">1 track</p>\r\n<p class=\"info\">Produced by:</p>\r\n<p class=\"reply\">ECM Squad</p>\r\n<p class=\"info\">By the way this is my favourite track &lt;3</p>', 'audio/RuckFiso%20-%20ZVONI%20PHONE.mp3'),
(10, 'flush-collapseFourtyone', 'Milion+ Entertainment Album KML (Krtek Money Life)', 'Milion+ - CHTĚLI BY TO MÍT', '<p class=\"info\">Year of release:</p>\r\n<p class=\"reply\">2018</p>\r\n<p class=\"info\">Number of track:</p>\r\n<p class=\"reply\">16 tracks</p>\r\n<p class=\"info\">Produced by:</p>\r\n<p class=\"reply\">Konex</p>', 'audio/Milion%20Plus%20-%20Cht%C4%9Bly%20By%20To%20M%C3%ADt.mp3'),
(11, 'flush-collapseFourtythree', 'Single Track Necejtim Nic', 'Yzomadias - Necejtim Nic', '<p class=\"info\">Year of release:</p>\r\n<p class=\"reply\">2019</p>\r\n<p class=\"info\">Number of track:</p>\r\n<p class=\"reply\">1 track</p>\r\n<p class=\"info\">Produced by:</p>\r\n<p class=\"reply\">Dokkeytino</p>', 'audio/Yzomandias%20-%20Necejtim%20Nic.mp3'),
(12, 'flush-collapseFourtysix', 'Single Track Rodinnej Typ', 'Yzomadias - Rodinnej Typ', '<p class=\"info\">Year of release:</p>\r\n<p class=\"reply\">2021</p>\r\n<p class=\"info\">Number of track:</p>\r\n<p class=\"reply\">1 track</p>\r\n<p class=\"info\">Produced by:</p>\r\n<p class=\"reply\">HAARP</p>', 'audio/Yzomandias%20-%20Rodinnej%20Typ.mp3');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `poradie` text NOT NULL,
  `number` text NOT NULL,
  `img` text NOT NULL,
  `alt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Sťahujem dáta pre tabuľku `slideshow`
--

INSERT INTO `slideshow` (`id`, `poradie`, `number`, `img`, `alt`) VALUES
(1, '0', '1', 'img/AmnesiaCover.png', 'Amnezia (Deluxe) Cover'),
(2, '1', '2', 'img/22FlexCover.png', '22 Flex Cover'),
(3, '2', '3', 'img/RarriCover.png', 'Rarri Cover'),
(4, '3', '4', 'img/DeluziaCover.png', 'Deluzia Cover'),
(5, '4', '5', 'img/DeluziaDeluxeCover.png', 'Deluzia Delux3*');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `content_id` text NOT NULL,
  `button_title` text NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Sťahujem dáta pre tabuľku `store`
--

INSERT INTO `store` (`id`, `content_id`, `button_title`, `title`, `content`, `link`) VALUES
(1, 'flush-collapseOne', 'You Don\'t Own Me 141 BPM D#min', 'Majkyy - You Don\'t Own Me', '<p class=\"info\">Produced by:</p>\r\n<p class=\"reply\">Majkyy</p>\r\n<p class=\"info\">Prize:</p>\r\n<p class=\"reply\">120 €</p>', 'audio/You Don\'t Own Me 141 BPM.mp3'),
(3, 'flush-collapseTwo', 'No debate 164 BPM Dmin', 'Majkyy - No Debate', '<p class=\"info\">Produced by:</p>\r\n<p class=\"reply\">Majkyy</p>\r\n<p class=\"info\">Prize:</p>\r\n<p class=\"reply\">80 €</p>', 'audio/No Debate 164 BPM Dmin.mp3'),
(4, 'flush-collapseThree', 'Unique 169 BPM Cmin', 'Majkyy - Unique', '<p class=\"info\">Produced by:</p>\r\n<p class=\"reply\">Majkyy</p>\r\n<p class=\"info\">Prize:</p>\r\n<p class=\"reply\">100 €</p>', 'audio/Unique 169 BPM Cmin.mp3'),
(5, 'flush-collapseFour', 'Deluzia 144 BPM Bmin x 154 BPM G#Min', 'Majkyy - Deluzia', '<p class=\"info\">Produced by:</p>\r\n<p class=\"reply\">Majkyy</p>\r\n<p class=\"info\">Prize:</p>\r\n<p class=\"reply\">100 €</p>', 'audio/Deluzia.mp3'),
(6, 'flush-collapseFive', 'exitt 152 BPM Fmaj', 'Majkyy - exitt', '<p class=\"info\">Produced by:</p>\r\n<p class=\"reply\">Majkyy</p>\r\n<p class=\"info\">Prize:</p>\r\n<p class=\"reply\">110 €</p>', 'audio/exitt 152 BPM Fmaj second.mp3');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `tableproducers`
--

CREATE TABLE `tableproducers` (
  `id` int(11) NOT NULL,
  `nothing` text NOT NULL,
  `name` text NOT NULL,
  `nothing2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Sťahujem dáta pre tabuľku `tableproducers`
--

INSERT INTO `tableproducers` (`id`, `nothing`, `name`, `nothing2`) VALUES
(1, '', 'Metro Boomin', ''),
(2, '', 'Southside', ''),
(3, '', '808 Mafia Boss', ''),
(4, '', 'Tay Keith', ''),
(5, '', 'Take A Day Trip', ''),
(6, '', '808 Melo', ''),
(7, '', 'Pierre\' Bourne', ''),
(8, '', 'BNYX', ''),
(9, '', 'ATL Jacob', ''),
(10, '', 'AXL Beats', '');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `tablerappers`
--

CREATE TABLE `tablerappers` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `albums` text NOT NULL,
  `albumsnumber` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Sťahujem dáta pre tabuľku `tablerappers`
--

INSERT INTO `tablerappers` (`id`, `name`, `albums`, `albumsnumber`) VALUES
(1, 'Travis Scott', 'Rodeo; Birds In The Trap Sing McKnight; Huncho Jack, Jack Huncho; ASTROWORLD; JACKBOYS; Utopia', '6'),
(2, 'Drake', 'Views; More Life; Scorpion; Care Package; Dark Lane Demo Tapes; Certified Lover Boy; Honestly, Nevermind; Her Loss; For All The Dogs; For All The Dogs Scary Hours Edition', '10'),
(3, 'Don Toliver', 'Donny Womack; Heaven Or Hell; Life of a Don; Love Sick; Love Sick (Deluxe)', '5'),
(4, '21 Savage', 'The Slaughter Tape; Slaughter King; Savage Mode; 21 Gang; Issa Album; Without Warning; i am > i was; i am > i was (Deluxe); SAVAGE MODE II', '9'),
(5, 'Future', '56 Nights; DS2 (Deluxe); FUTURE; SUPER SLIMEY; Future & Juice WRLD Present... WRLD ON DRUGS; High Off Life; Pluto x Baby Pluto; Pluto x Baby Pluto (Deluxe); I NEVER LIKED YOU', '9'),
(6, 'Nardo Wick', 'Who Is Nardo Wick??; Who Is Nardo Wick?? (Deluxe)', '2'),
(7, 'Lil Durk', 'The Voice; The Voice (Deluxe); The Voice of the Heroes; 7220; 7220 (Reloaded); 7220 (Deluxe); Lil Durk Presents: Loyal Bros 2; Almost Healed; Nightmares In the Trenches', '9'),
(8, 'Young Thug', 'So Much Fun; So Much Fun (Deluxe); Slime & B; Slime Language 2; Slime Language 2 (Deluxe); Punk; BUSINESS IS BUSINESS; BUSINESS IS BUSINESS (Metro\'s Version)', '8'),
(9, 'Playboi Carti', 'In Abundance; Playboi Carti; Die Lit; Whole Lotta Red', '4'),
(10, 'Pop Smoke', 'Meet The Woo; Meet The Woo (Deluxe Version); Meet The Woo 2; Meet The Woo 2 (Deluxe); Shoot For The Stars Aim For The Moon; Shoot For The Stars Aim For The Moon (Deluxe); Faith; Faith (Deluxe)', '8');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Sťahujem dáta pre tabuľku `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `role`) VALUES
(6, 'admin@admin.sk', '21232f297a57a5a743894a0e4a801fc3', 1),
(7, 'marian.sebora@gmail.com', '202cb962ac59075b964b07152d234b70', 0);

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

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
-- Indexy pre tabuľku `rappers`
--
ALTER TABLE `rappers`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `rappersaccordion`
--
ALTER TABLE `rappersaccordion`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `tableproducers`
--
ALTER TABLE `tableproducers`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `tablerappers`
--
ALTER TABLE `tablerappers`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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

--
-- AUTO_INCREMENT pre tabuľku `rappers`
--
ALTER TABLE `rappers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pre tabuľku `rappersaccordion`
--
ALTER TABLE `rappersaccordion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pre tabuľku `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pre tabuľku `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pre tabuľku `tableproducers`
--
ALTER TABLE `tableproducers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pre tabuľku `tablerappers`
--
ALTER TABLE `tablerappers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pre tabuľku `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
