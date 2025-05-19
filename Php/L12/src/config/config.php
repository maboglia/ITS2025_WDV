<?php

//costanti

define('TITOLO', 'Autosalone WDV');

define('HOST', 'localhost:3306');
define('USER', 'ITS_2025');
define('PASS', 'ITS_2025');
define('DB_NAME', 'fondamenti');

define('DSN', 'mysql:host=' . HOST . ';dbname=' . DB_NAME);

define('PATH_CSS', './css/');
define('PATH_JS', './js/');

define('SRC', '../src/');
define('VIEW', SRC . 'view/');


require SRC . 'model/Automobile.php';
//creare connessione a db
require SRC . 'repos/AutomobileDAO.php';
require SRC . 'service/AutosaloneService.php';
require SRC . 'controller/AutosaloneMVC.php';
require SRC . 'controller/AutosaloneREST.php';


