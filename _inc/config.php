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