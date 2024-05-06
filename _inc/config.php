<?php

//konštanta
define('DATABASE', [
    'HOST' => 'localhost',
    'DBNAME' => 'fl_studio',
    'USER_NAME' => 'root',
    'PASSWORD' => ''
]);

require_once('classes/Database.php');
require_once('classes/Music.php');
require_once('classes/Gallery.php');
require_once('classes/MusicPrograms.php');
require_once('classes/Store.php');
require_once('classes/Contact.php');
require_once('classes/Rappers.php');
require_once('classes/RappersAccordion.php');
require_once('classes/Slideshow.php');
require_once('classes/TableRappers.php');
require_once('classes/TableProducers.php');
require_once('classes/User.php');

session_start();